<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

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
$myfile = fopen("newlog.txt", "a") or die("Unable to open file!");
// $email_action = 0;
function WriteLog($txt)
{
	global $myfile;
	fwrite($myfile, "\n". $txt);
}
WriteLog($data_raw);

$mail = new PHPMailer\PHPMailer\PHPMailer();
$mail->isSMTP();                      // Set mailer to use SMTP
$mail->Host = 'smtp.gmail.com';
//$mail->Host = 'mail.novologic.co';  // Specify main and backup SMTP servers
$mail->SMTPAuth = true;                               // Enable SMTP authentication
//$mail->Username = 'contact@webomates.com';          // SMTP info@cyphertextsolutions.com username
//$mail->Password = 'kecghqngbmqizlqj';                           // SMTP password
$mail->Username = 'tech@digidir.com';          // SMTP info@cyphertextsolutions.com username
$mail->Password = 'fucbiqlaqxhanxyw';
//kecghqngbmqizlqj
//$mail->Password = 'Info@123!';
$mail->SMTPSecure = 'ssl';                           // Enable TLS encryption, `ssl` also accepted
$mail->Port = 465;
$mail->From = "tech@digidir.com";
$mail->FromName = "Sales CRM - DigiDir";                              // TCP port to connect to
$mail->setFrom('tech@digidir.com', "Sales CRM - DigiDir");
//$mail->setFrom('info@novologic.co', "Novologic");
$mail->isHTML(true);
$mail->CharSet = "UTF-8";

// $OTP= $data['name'];
// $MobileNumber = $data['MobileNumber'];
$LeadSource= $data['LeadSource'];
$AssignedTo = $data['AssignedTo'];
$Status= $data['Status'];
$LeadID= $data['LeadID'];
$CompanyName = $data['CompanyName'];
$AssignedEmail = $data['AssignedEmail'];

// $Email= '';
// $Name = '';
// $IDCard= '';

// $Cordinator_Name= '';
// $Cordinator_PhoneNumber = '';


/*$name= "";
$Link= "";
// $MobileNumber = $data['MobileNumber'];
// $Email= $data['Email'];
// $DECS= $data['DECS'];
$Action =  "";*/


$mail->Subject  = 'New Lead Assigned - Sales CRM';

$mail->Body = "<div style='background-color:#fbfbfc;margin:0'>
        <font color='#888888'>

            </font><font color='#888888'>

        </font><font color='#888888'>

        </font><table style='font-family:'open sans','arial','verdana',sans-serif;font-size:14px;color:#444e61;width:98%;max-width:600px;float:none;margin:0 auto' border='0' cellpadding='0' cellspacing='0' valign='top' align='center'>

        <tbody>

            <tr>

            <td height='24' style='line-height:1px;font-size:1px'>&nbsp;</td>

            </tr>

            <tr align='middle'>

            <td>

            <a href='https://www.digidir.com/'>

            <img src='https://digidir.in/comdrdigi/project-assets/images/logo.png' height='50' class='CToWUd' data-bit='iit'>

            </a>

            </td>

            </tr>

            <tr>

            <td height='24' style='line-height:1px;font-size:1px'>&nbsp;</td>

            </tr>

            <tr bgcolor='#ffffff'>

            <td align='center'>

                <table bgcolor='#ffffff' style='width:100%;line-height:20px;border:1px solid #f4f5f6;border-radius:5px' cellpadding='0'>

                <tbody>

                    <tr>

                    <td>

                        <table style='width:92%;margin:0 auto' align='center'>

                        <tbody>

                            <tr>

                            <td height='32' style='line-height:1px;font-size:1px'>&nbsp;</td>

                            </tr>

                            <tr>

                            <td style='color:#20252e;font-size:26px;line-height:26px;font-family:'panton','open sans','arial','verdana',sans-serif;letter-spacing:0.5px;font-weight:700'>Hello $AssignedTo,</td>

                            </tr>

                            <tr>

                            <td height='20' style='line-height:1px;font-size:1px'>&nbsp;</td>

                            </tr>

                            <tr>

                            <td style='vertical-align:bottom'><span style='font-family:'open sans','arial','verdana',sans-serif;font-size:16px;color:#444e61'> <br>A new lead has been assigned to you. Plese check CRM and take necessary actions.

                            </span></td>

                            </tr>

                            <br>


                            <tr>

                            <td height='18' style='line-height:1px;font-size:1px'>&nbsp;</td>

                            </tr>

                            <tr>

                            <td style='vertical-align:bottom'><span style='font-family:'open sans','arial','verdana',sans-serif;font-size:16px;color:#444e61'><b>Your ID Card :</b> <br> <br>LeadID  : $LeadID <br>Company Name  : $CompanyName <br>Status  : $Status

                            </span></td>

                            </tr>

                            <tr>

                            <td height='18' style='line-height:1px;font-size:1px'>&nbsp;</td>

                            </tr>



                            <tr>

                            <td><span style='font-family:'open sans','arial','verdana',sans-serif;font-size:16px;color:#444e61'>Best regards,</span></td>

                            </tr>

                            <tr>

                            <td><span style='font-family:'open sans','arial','verdana',sans-serif;font-size:18px;color:#20252e;font-weight:bold'>Team Sales CRM - DigiDir</span></td>

                            </tr>





                            <tr>

                            <td height='32' style='line-height:1px;font-size:1px'>&nbsp;</td>

                            </tr>

                        </tbody>

                        </table></td>

                    </tr>

                </tbody>

                </table></td>

            </tr>

            <tr>

            <td height='24' style='line-height:1px;font-size:1px'>&nbsp;</td>

            </tr>

            <tr>

            <td style='font-family:'open sans','arial',sans-serif;font-size:12px;line-height:130%;color:#9f9f9f;text-align:center' align='center'>© 2023 Sales CRM - DigiDir.&nbsp;All rights reserved. <br><a href='https://www.digidir.com/' title='Sales CRM - DigiDir' style='color:#9f9f9f;font-family:'open sans','arial','verdana',sans-serif' target='_blank' >digidir.com</a></td>

            </tr>

            <tr>

            <td style='font-size:12px;color:#d0d3d6;text-align:center'>___</td>

            </tr>

            <tr>

            <td style='font-size:12px;padding:15px;color:#9f9f9f;text-align:center'>If you did not make this request, please contact us by replying to this email.</td></tr></tbody></table><font color='#888888'>

        </font></div>";
         $mail->addAddress($AssignedEmail);
        $mail->addBCC("manish.sharma@digidir.com");



if(!$mail->send())
{
	echo "error";
}
else
{
	echo "Mail Sent";
}
?>