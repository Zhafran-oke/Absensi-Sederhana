<?php
$host = "localhost";
$db_name = "db_kehadiran";
$username = "root";
$password = "";

// Konfigurasi API Key (Kunci Rahasia Sisi Server)
define('API_KEY', 'tws_secret_key_12345');

try {
    $conn = new PDO("mysql:host=" . $host . ";dbname=" . $db_name, $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e) {
    http_response_code(500);
    echo json_encode(["message" => "Koneksi database gagal: " . $e->getMessage()]);
    exit();
}
?>