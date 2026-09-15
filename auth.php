<?php
// Token Rahasia Default / Base
define('SERVER_KEY', 'RAKA_SERVER_KEY_22670072');

// Fungsi Generator Token Dinamis & Simpan ke Database
function generateTokens($conn, $username) {
    $server_key = SERVER_KEY;
    // Menggenerasi token acak berbasis user & timestamp
    $client_token = 'TOKEN_' . strtoupper(substr(md5($username . time() . rand()), 0, 16));
    
    // Simpan / Update token terbaru ke tabel users (Token lama otomatis terhapus/tertimpa)
    $stmt = $conn->prepare("UPDATE users SET client_token = ? WHERE username = ?");
    $stmt->execute([$client_token, $username]);

    return [
        'server_key' => $server_key,
        'client_token' => $client_token
    ];
}

// Validasi Token Header dengan Database
function validateTokens($conn) {
    $headers = getallheaders();

    $server_key = $headers['X-Server-Key'] ?? $headers['x-server-key'] ?? '';
    $client_token = $headers['X-Client-Token'] ?? $headers['x-client-token'] ?? '';

    // 1. Memeriksa keberadaan header dan kecocokan Server Key
    if (empty($server_key) || empty($client_token) || $server_key !== SERVER_KEY) {
        http_response_code(401);
        echo json_encode([
            "status" => "error",
            "message" => "Akses Ditolak: Server Key atau Client Token tidak dikirimkan!"
        ]);
        exit();
    }

    // 2. Memeriksa apakah Client Token cocok dengan data di Database
    $stmt = $conn->prepare("SELECT id, username FROM users WHERE client_token = ?");
    $stmt->execute([$client_token]);
    $user = $stmt->fetch();

    if (!$user) {
        http_response_code(401);
        echo json_encode([
            "status" => "error",
            "message" => "Akses Ditolak: Client Token tidak valid atau sudah tidak berlaku (login ulang)!"
        ]);
        exit();
    }

    return $user;
}
?>