<?php
include('include/mail-header.php');
include('include/conf.php');

$name= $data['Name'];
$phone= $data['Phone'];
$email= $data['Email'];
$course= $data['Course'];
$message= $data['Message'];

	
$mail->Subject  = 'Welcome to ' .$CompanyName. '- New Enquiry';
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

            <a href='$WebsiteLink'>

            <img src='$CompanyLogo' height='50' class='CToWUd' data-bit='iit'>

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

                            <td style='color:#20252e;font-size:26px;line-height:26px;font-family:'panton','open sans','arial','verdana',sans-serif;letter-spacing:0.5px;font-weight:700'>Hello,</td>

                            </tr>

                            <tr>

                            <td height='20' style='line-height:1px;font-size:1px'>&nbsp;</td>

                            </tr>

                            <tr>

                            <td style='vertical-align:bottom'><span style='font-family:'open sans','arial','verdana',sans-serif;font-size:16px;color:#444e61'>An inquiry has been made by a user on Tathastu.

                            </span></td>

                            </tr>

                            <br>

                            <tr>

                            <td style='vertical-align:bottom'><span style='font-family:'open sans','arial','verdana',sans-serif;font-size:16px;color:#444e61'>Name: $name

                            </span></td>

                            </tr>

                            <tr>

                            <td style='vertical-align:bottom'><span style='font-family:'open sans','arial','verdana',sans-serif;font-size:16px;color:#444e61'>Phone: $phone

                            </span></td>

                            </tr>

                            <tr>

                            <td style='vertical-align:bottom'><span style='font-family:'open sans','arial','verdana',sans-serif;font-size:16px;color:#444e61'>Email: $email

                            </span></td>

                            </tr>

                            <tr>

                            <td style='vertical-align:bottom'><span style='font-family:'open sans','arial','verdana',sans-serif;font-size:16px;color:#444e61'>Course: $course

                            </span></td>

                            </tr>

                            <tr>

                            <td style='vertical-align:bottom'><span style='font-family:'open sans','arial','verdana',sans-serif;font-size:16px;color:#444e61'>Message: $message

                            </span></td>

                            </tr>

                            <tr>

                            <td height='18' style='line-height:1px;font-size:1px'>&nbsp;</td>

                            </tr>

                            

                            

                            <tr>

                            <td><span style='font-family:'open sans','arial','verdana',sans-serif;font-size:16px;color:#444e61'>Best regards,</span></td>

                            </tr>

                            <tr>

                            <td><span style='font-family:'open sans','arial','verdana',sans-serif;font-size:18px;color:#20252e;font-weight:bold'>Team Tathastu</span></td>

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

            <td style='font-family:'open sans','arial',sans-serif;font-size:12px;line-height:130%;color:#9f9f9f;text-align:center' align='center'>© 2023 Tathastu.&nbsp;All rights reserved. <br>53/1, Upper Ground Floor, Old Rajender Nagar, Delhi, India, 110060<br><a href='https://www.tathastuics.com/' title='Tathastu' style='color:#9f9f9f;font-family:'open sans','arial','verdana',sans-serif' target='_blank' >Tathastuics.com</a></td>

            </tr>

            <tr>

            <td style='font-size:12px;color:#d0d3d6;text-align:center'>___</td>

            </tr>

            <tr>

            <td style='font-size:12px;padding:15px;color:#9f9f9f;text-align:center'>If you did not make this request, please contact us by replying to this email.</td></tr></tbody></table><font color='#888888'>

        </font></div>";
$mail->addBCC("manishsharma.gary@gmail.com");
$mail->addBCC("pgfiry@gmail.com");
// $mail->addBCC("Mayurigaryglobalsolutions@gmail.com");
$mail->addBCC("tathastuicsinfo@gmail.com");
$mail->addBCC("Info@tathastuics.com");


if(!$mail->send())
{
	//echo "error";
}
else
{
	//echo "Mail Sent";
}
?>