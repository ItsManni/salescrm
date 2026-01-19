<?php
// List all allowed public IPs (your home Wi-Fi)
$allowed_ips = [
    '122.161.52.24',
    '122.161.52.54',
    '122.161.49.95'
];

// Get the visitor's IP
$visitor_ip = $_SERVER['REMOTE_ADDR'];

// Check if visitor IP is in the allowed list
if (in_array($visitor_ip, $allowed_ips)) {
    // Allowed → redirect to login
    header("Location: authentication/login");
    exit();
} else {
    // Denied → show message
    http_response_code(403);
    echo "Access denied. You must be connected to the home Wi-Fi to access this site.<br>";
    echo "Your IP: $visitor_ip";
    exit();
}
?>
