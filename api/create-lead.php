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
$continue = true;
if(isset($data['Name']) && isset($data['Gender']) && isset($data['Email']) && isset($data['PhoneNumber'])  && isset($data['Course']) && isset($data['State']) && isset($data['City']) && isset($data['LeadSource']) && isset($data['Center']))
{
    $data['Courses'] = $data['Course'];
    $data['AssignedTo'] = -1;
    // check for valid BranchID
    $branch = $data['Center'];
    $where = " where ID = $branch";
    $rows = $core->_getTotalRows($conn,'branch',$where);
    if($rows > 0)
    {
        $continue = true;
    }
    else
    {
        $continue = false;
        $response['error'] = true;
        $response['message'] = "Invalid Center ID";
    }
    // check for valid BranchID
    if($continue)
    {
        $Course = $data['Course'];
        $where = " where ID = $Course";
        $rows = $core->_getTotalRows($conn,'courses_for_display',$where);
        if($rows > 0)
        {
            $continue = true;
        }
        else
        {
            $continue = false;
            $response['error'] = true;
            $response['message'] = "Invalid Course ID";
        }
    }

    if($continue)
    {
        $admission_details = $ManageLead->getLeadsDetails($data);
        if($admission_details['exist'] == false)
        {
            $data['DefaultStatus'] = $DefaultStatus;
            $Center = $data['Center'];
            if($Center != -1)
            {
                $LeadCounsellorID = $ManageLead->getLeadCounsellorofCenter($Center);
                if($LeadCounsellorID != -1)
                {
                    $data['AssignedTo'] = $LeadCounsellorID;
                }
                else
                {
                    $CenterManagerID = $ManageLead->getCenterManagerofCenter($Center);
                    $data['AssignedTo'] = $CenterManagerID;
                }
            }
            $response = $ManageLead->InsertLeadForm($data);
            $response['error'] = false;
            $response['message'] = "Lead Created !";
        }
        else
        {
            $response['error'] = true;
            $response['message'] = "Lead Already Exists with same phonenumber or email.";
        }
    }
}
else
{
    $response['error'] = true;
    $response['message'] = "Missing User Fields!";
}
echo json_encode($response);
?>