<?php
// List all allowed public IPs (your home Wi-Fi)
$allowed_ips = [
    '122.161.52.24',
    '122.161.52.54',
    '122.161.49.95',
    '49.36.187.103',
    '::1'
];

// Get the visitor's IP
$visitor_ip = $_SERVER['REMOTE_ADDR'];

// Function to get the first two octets of an IP
function get_first_two_octets($ip) {
    $parts = explode('.', $ip);
    return $parts[0] . '.' . $parts[1];
}

// Get the first two octets of the visitor
$visitor_prefix = get_first_two_octets($visitor_ip);

// Check if any allowed IP has the same first two octets
$allowed = false;
foreach ($allowed_ips as $ip) {
    if (get_first_two_octets($ip) === $visitor_prefix) {
        $allowed = true;
        break;
    }
}

if ($allowed) {
    // Allowed → redirect to login
    header("Location: authentication/login");
    exit();
} else {
    // Denied → show message with JS alert
    http_response_code(403);
    echo "<script>alert('Access denied. You must be connected to the Correct Network.\\nYour IP: $visitor_prefix');</script>";
    echo "<p>Access denied. You must be connected to the Correct Network.</p>";
    exit();
}
?>
