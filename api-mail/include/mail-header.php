<?php

header('Access-Control-Allow-Origin: *');
// header("Access-Control-Allow-Credentials: true");
header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type, Content-Range, Content-Disposition,application/json, Content-Description,Origin, X-Requested-With, Accept');
$data_raw = file_get_contents('php://input');
date_default_timezone_set('Asia/Kolkata');
$data = json_decode($data_raw,true);
require 'PHPMailer-master/src/Exception.php';
require 'PHPMailer-master/src/PHPMailer.php';
require 'PHPMailer-master/src/SMTP.php';
// include('techxpert/techxpert-mail-config.php');
// $mail->Subject  = 'TechXpert Store : Forgot Password';
// $myfile = fopen("newlog.txt", "a") or die("Unable to open file!");
// $email_action = 0;
// function WriteLog($txt)
// {
// 	global $myfile;
// 	fwrite($myfile, "\n". $txt);
// }
// WriteLog($data_raw);

$mail = new PHPMailer\PHPMailer\PHPMailer();
$mail->isSMTP();                      // Set mailer to use SMTP
$mail->Host = 'mail.digitalworkdesk.com'; 
//$mail->Host = 'mail.novologic.co';  // Specify main and backup SMTP servers
$mail->SMTPAuth = true;                               // Enable SMTP authentication
//$mail->Username = 'contact@webomates.com';          // SMTP info@cyphertextsolutions.com username   
//$mail->Password = 'kecghqngbmqizlqj';                           // SMTP password
$mail->Username = 'ims@digitalworkdesk.com';          // SMTP info@cyphertextsolutions.com username   
$mail->Password = 'DWDIMS@321!@';   
//kecghqngbmqizlqj
//$mail->Password = 'Info@123!';
$mail->SMTPSecure = 'ssl';                           // Enable TLS encryption, `ssl` also accepted
$mail->Port = 465;       
$mail->From = "ims@digitalworkdesk.com";
$mail->FromName = "DWD - Institute Management System";                              // TCP port to connect to
$mail->setFrom('ims@digitalworkdesk.com', "DWD - Institute Management System");
//$mail->setFrom('info@novologic.co', "Novologic");
$mail->isHTML(true);
// $mail->CharSet = "UTF-8";

?>