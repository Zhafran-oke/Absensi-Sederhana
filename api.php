<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With, X-Server-Key, X-Client-Token");

if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    http_response_code(200);
    exit();
}

require_once 'db.php';
require_once 'auth.php';
require_once 'log.php'; // Import Modul Logging


$method = $_SERVER['REQUEST_METHOD'];
$endpoint = $_SERVER['REQUEST_URI'];

// Membaca Raw Input Body
$rawInput = file_get_contents("php://input");
$inputData = !empty($rawInput) ? json_decode($rawInput, true) : null;

// Membaca Token Header untuk Logging
$headers = getallheaders();
$client_token = $headers['X-Client-Token'] ?? $headers['x-client-token'] ?? null;

// 1. ENDPOINT LOGIN
if (isset($_GET['action']) && $_GET['action'] === 'login' && $method === 'POST') {
    $username = $inputData['username'] ?? '';
    $password = $inputData['password'] ?? '';

    if (!empty($username) && !empty($password)) {
        if ($username === 'admin' && $password === 'admin123') {
            $tokens = generateTokens($conn, $username);

            // Log Aktivitas Login
            logActivity($conn, $tokens['client_token'], $endpoint, $method, ["username" => $username, "action" => "login_success"]);

            http_response_code(200);
            echo json_encode([
                "status" => "success",
                "message" => "Login berhasil! Token berhasil digenerate.",
                "user" => ["username" => $username, "fullname" => "Administrator Raka"],
                "tokens" => [
                    "server_key" => $tokens['server_key'],
                    "client_token" => $tokens['client_token']
                ]
            ]);
            exit();
        } else {
            logActivity($conn, null, $endpoint, $method, ["username" => $username, "action" => "login_failed"]);
            http_response_code(401);
            echo json_encode(["status" => "error", "message" => "Username atau Password salah!"]);
            exit();
        }
    } else {
        http_response_code(400);
        echo json_encode(["status" => "error", "message" => "Username dan Password wajib diisi."]);
        exit();
    }
}

// 2. VALIDASI TOKEN HEADER
validateTokens($conn);

// Log Aktivitas API Terautentikasi
logActivity($conn, $client_token, $endpoint, $method, $inputData);

// KONFIGURASI LOKASI RESMI (Contoh: Titik Pusat Kampus/Kantor)
define('TARGET_LATITUDE', -6.9846973);   // Ganti dengan Latitude lokasi Anda
define('TARGET_LONGITUDE', 110.4531899); // Ganti dengan Longitude lokasi Anda
define('MAX_RADIUS_METERS', 100);          // Toleransi radius maksimal dalam meter

// Fungsi Haversine Formula untuk Menghitung Jarak GPS (Meter)
function calculateDistance($lat1, $lon1, $lat2, $lon2) {
    $earthRadius = 6371000; // Jari-jari bumi dalam meter
    $latFrom = deg2rad($lat1);
    $lonFrom = deg2rad($lon1);
    $latTo = deg2rad($lat2);
    $lonTo = deg2rad($lon2);

    $latDelta = $latTo - $latFrom;
    $lonDelta = $lonTo - $lonFrom;

    $angle = 2 * asin(sqrt(pow(sin($latDelta / 2), 2) +
        cos($latFrom) * cos($latTo) * pow(sin($lonDelta / 2), 2)));

    return $angle * $earthRadius; // Mengembalikan jarak dalam satuan meter
}

// 3. CRUD DATA KEHADIRAN
switch ($method) {
    case 'GET':
        if (isset($_GET['id'])) {
            $stmt = $conn->prepare("SELECT * FROM attendance WHERE id = ?");
            $stmt->execute([$_GET['id']]);
            $attendance = $stmt->fetch();

            if ($attendance) {
                http_response_code(200);
                echo json_encode($attendance);
            } else {
                http_response_code(404);
                echo json_encode(["status" => "error", "message" => "Data kehadiran tidak ditemukan."]);
            }
        } else {
            $stmt = $conn->query("SELECT * FROM attendance ORDER BY id asc");
            $data = $stmt->fetchAll();
            http_response_code(200);
            echo json_encode($data);
        }
        break;

    case 'POST':
        $student  = $inputData['student'] ?? '';
        $date     = $inputData['date'] ?? '';
        $status   = $inputData['status'] ?? '';
        $remark   = $inputData['remark'] ?? '';
        $userLat  = $inputData['latitude'] ?? null;
        $userLng  = $inputData['longitude'] ?? null;

        if (!empty($student) && !empty($date) && !empty($status)) {

            // Validasi lokasi hanya aktif jika status presensi = "Hadir"
            if ($status === 'Hadir') {
                if ($userLat === null || $userLng === null) {
                    http_response_code(400);
                    echo json_encode([
                        "status" => "error", 
                        "message" => "Koordinat GPS (latitude & longitude) wajib dikirim untuk status Hadir."
                    ]);
                    exit();
                }

                // Hitung jarak pengguna ke lokasi resmi
                $distance = calculateDistance($userLat, $userLng, TARGET_LATITUDE, TARGET_LONGITUDE);

                // Jika jarak melampaui batas radius
                if ($distance > MAX_RADIUS_METERS) {
                    http_response_code(400);
                    echo json_encode([
                        "status" => "error",
                        "message" => "Presensi Gagal! Anda berada di luar radius resmi. Jarak Anda: " . round($distance, 1) . " meter (Maksimal: " . MAX_RADIUS_METERS . " meter)."
                    ]);
                    exit();
                }
            }

            // Simpan ke Database
            $stmt = $conn->prepare("INSERT INTO attendance (student, date, status, remark, latitude, longitude) VALUES (?, ?, ?, ?, ?, ?)");
            if ($stmt->execute([$student, $date, $status, $remark, $userLat, $userLng])) {
                http_response_code(201);
                echo json_encode(["status" => "success", "message" => "Data kehadiran berhasil ditambahkan."]);
            } else {
                http_response_code(500);
                echo json_encode(["status" => "error", "message" => "Gagal menyimpan data kehadiran."]);
            }
        } else {
            http_response_code(400);
            echo json_encode(["status" => "error", "message" => "Data tidak lengkap."]);
        }
        break;
    

    case 'PUT':
        if (!empty($inputData['id']) && !empty($inputData['student']) && !empty($inputData['date']) && !empty($inputData['status'])) {
            $stmt = $conn->prepare("UPDATE attendance SET student = ?, date = ?, status = ?, remark = ? WHERE id = ?");
            $remark = $inputData['remark'] ?? '';

            if ($stmt->execute([$inputData['student'], $inputData['date'], $inputData['status'], $remark, $inputData['id']])) {
                http_response_code(200);
                echo json_encode(["status" => "success", "message" => "Data kehadiran berhasil diperbarui."]);
            } else {
                http_response_code(500);
                echo json_encode(["status" => "error", "message" => "Gagal memperbarui data kehadiran."]);
            }
        } else {
            http_response_code(400);
            echo json_encode(["status" => "error", "message" => "Data tidak lengkap."]);
        }
        break;

    case 'DELETE':
        $id = $inputData['id'] ?? $_GET['id'] ?? null;

        if ($id) {
            $stmt = $conn->prepare("DELETE FROM attendance WHERE id = ?");
            if ($stmt->execute([$id])) {
                http_response_code(200);
                echo json_encode(["status" => "success", "message" => "Data kehadiran berhasil dihapus."]);
            } else {
                http_response_code(500);
                echo json_encode(["status" => "error", "message" => "Gagal menghapus data kehadiran."]);
            }
        } else {
            http_response_code(400);
            echo json_encode(["status" => "error", "message" => "ID tidak ditemukan."]);
        }
        break;

    default:
        http_response_code(405);
        echo json_encode(["status" => "error", "message" => "Metode HTTP tidak diizinkan."]);
        break;
}
?>