<?php
$ip = $_POST['ip'];
$data = json_decode(file_get_contents("http://ip-api.com/json/".$ip), true);

if ($data['status'] == "success") {
    echo "
    <b>IP:</b> {$ip}<br>
    <b>Country:</b> {$data['country']}<br>
    <b>State:</b> {$data['regionName']}<br>
    <b>City:</b> {$data['city']}<br>
    <b>ISP:</b> {$data['isp']}<br><br>
    <a href='https://www.google.com/maps?q={$data['lat']},{$data['lon']}' target='_blank'>
        View on Google Maps
    </a>";
} else {
    echo "Location not found";
}
