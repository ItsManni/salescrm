<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
require_once('common-api-header.php');
$core->setTimeZone();
$data_raw = file_get_contents('php://input');
$data = json_decode($data_raw,true);
$response = array();
$ManageLead = new ManageLead($conn);
$IMSSetting = new IMSSetting($conn);
$DefaultStatus = $IMSSetting->GetDefaultLeadStatus();
$data['DefaultStatus'] = $DefaultStatus;
if(isset($data['Name']) && isset($data['Gender']) && isset($data['Email']) && isset($data['PhoneNumber']) && isset($data['HighQualification']) && isset($data['Mode']) && isset($data['Courses']) && isset($data['State']) && isset($data['City']))
{

    $data['AssignedTo'] = -1;
    $data['Center'] = 1;
    $admission_details = $ManageLead->getLeadsDetails($data);
		
    if($admission_details['exist'] == false)
    {
           $response = $ManageLead->InsertLeadForm($data);
               $response['error'] = false;
            $response['message'] = "Lead Added and Assigned !";
    }else{
         
        $response['error'] = true;
        $response['message'] = "Lead Already Exist.";
    }
}
else
{
    $response['error'] = true;
    $response['emessage'] = "Missing User Fields!";
}
echo json_encode($response);
?>