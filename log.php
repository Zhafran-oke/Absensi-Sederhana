<?php
// IP Address Extractor
function getUserIP() {
    if (!empty($_SERVER['HTTP_CLIENT_IP'])) return $_SERVER['HTTP_CLIENT_IP'];

    if (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
        return explode(',', $_SERVER['HTTP_X_FORWARDED_FOR'])[0];
    }
    return $_SERVER['REMOTE_ADDR'] ?? 'UNKNOWN';
}

// User Agent Extractor
function getUserAgent() {
    return $_SERVER['HTTP_USER_AGENT'] ?? 'UNKNOWN';
}

// Device & Browser Detector
function getDeviceInfo() {
    $ua = $_SERVER['HTTP_USER_AGENT'] ?? 'UNKNOWN';

    $info = [
        "device_type" => "Unknown",
        "os" => "Unknown",
        "browser" => "Unknown",
        "device_model" => "Unknown"
    ];

    // Detect Device Type
    if (preg_match('/mobile|iphone|android/i', $ua)) {
        $info["device_type"] = "Mobile";
    } elseif (preg_match('/ipad|tablet/i', $ua)) {
        $info["device_type"] = "Tablet";
    } elseif (preg_match('/bot|crawler|spider|crawl/i', $ua)) {
        $info["device_type"] = "Bot";
    } else {
        $info["device_type"] = "Desktop";
    }

    // Detect OS
    if (preg_match('/windows nt/i', $ua)) {
        $info["os"] = "Windows";
    } elseif (preg_match('/mac os|macintosh/i', $ua)) {
        $info["os"] = "MacOS";
    } elseif (preg_match('/linux/i', $ua)) {
        $info["os"] = "Linux";
    } elseif (preg_match('/android/i', $ua)) {
        $info["os"] = "Android";
    } elseif (preg_match('/iphone|ipad|ipod/i', $ua)) {
        $info["os"] = "iOS";
    } elseif (preg_match('/cros/i', $ua)) {
        $info["os"] = "ChromeOS";
    }

    // Detect Browser
    if (preg_match('/chrome/i', $ua) && !preg_match('/edge/i', $ua)) {
        $info["browser"] = "Chrome";
    } elseif (preg_match('/firefox/i', $ua)) {
        $info["browser"] = "Firefox";
    } elseif (preg_match('/safari/i', $ua) && !preg_match('/chrome/i', $ua)) {
        $info["browser"] = "Safari";
    } elseif (preg_match('/edg/i', $ua)) {
        $info["browser"] = "Edge";
    } elseif (preg_match('/opera|opr/i', $ua)) {
        $info["browser"] = "Opera";
    } elseif (preg_match('/msie|trident/i', $ua)) {
        $info["browser"] = "Internet Explorer";
    } elseif (preg_match('/bot|crawler|spider/i', $ua)) {
        $info["browser"] = "Bot/Crawler";
    }

    // Detect Device Model
    if (preg_match('/SM-[A-Za-z0-9]+/i', $ua, $m)) {
        $info["device_model"] = "Samsung " . $m[0];
    } elseif (preg_match('/Redmi [A-Za-z0-9 ]+/i', $ua, $m)) {
        $info["device_model"] = $m[0];
    } elseif (preg_match('/Mi [A-Za-z0-9 ]+/i', $ua, $m)) {
        $info["device_model"] = $m[0];
    } elseif (preg_match('/iPhone [A-Za-z0-9 ]*/i', $ua, $m)) {
        $info["device_model"] = trim($m[0]);
    } elseif (preg_match('/iPad [A-Za-z0-9 ]*/i', $ua, $m)) {
        $info["device_model"] = trim($m[0]);
    } elseif (preg_match('/Pixel [A-Za-z0-9 ]+/i', $ua, $m)) {
        $info["device_model"] = $m[0];
    }

    return $info;
}

// Function Logging ke Database
function logActivity($pdo, $token_id, $endpoint, $method, $body = null) {
    try {
        $device = getDeviceInfo();
        $stmt = $pdo->prepare("
            INSERT INTO api_logs (token_id, endpoint, method, ip_address, user_agent, request_body)
            VALUES (?, ?, ?, ?, ?, ?)
        ");

        $userAgentString = "Agent: ".getUserAgent().", Type: {$device['device_type']}, OS: {$device['os']}, Browser: {$device['browser']}, Model: {$device['device_model']}";

        $stmt->execute([
            $token_id,
            $endpoint,
            $method,
            getUserIP(),
            $userAgentString,
            $body ? json_encode($body) : null
        ]);
    } catch (Exception $e) {
        // Mencegah kegagalan log menghentikan seluruh respon API
        error_log("Logging Error: " . $e->getMessage());
    }
}
?>