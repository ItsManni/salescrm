<?php
@session_start();
require_once('../../include/autoloader.inc.php');
// this file will give client connection object $conn $_SESSION['dwd_OrgID'] must be set
$dbh = new Dbh();
$core = new Core();
$conn = $dbh->_connectodb();
$core->setTimeZone();
if(isset($_POST['ServiceName']))
{
    $ServiceName = $_POST['ServiceName'];
    $form_action = $_POST['form_action'];
    $data = $_POST;
    $data['CreatedDate'] = date("Y-m-d");
    $data['CreatedTime'] = date("H:i:s");
    $data['CreatedBy'] = $_SESSION['pp_email'];
    $IMSSetting = new IMSSetting($conn);
    if($form_action == "add")
    {
        // Check if Service already exists
        $response = $IMSSetting->CheckDuplicateServiceName($data);
        if($response == true)
        {
            // Insert the new Service
            $response = $IMSSetting->InsertServiceName($data);
            if($response['error'] == false)
            {
                $response['message'] = "Service Saved!";
            }
            else
            {
                $response['error'] = true;
                $response['message'] = "Some Technical Error! Please Try Again.";
            }
        } else {
            $response['error'] = true;
            $response['message'] = "Service Already Added.";
        }
    }
    else
    {
        // Update the existing Service
        $response = $IMSSetting->UpdateServiceName($data);
        $response['message'] = "Service Name Updated!";
    }
}
else
{
    $response['error'] = true;
    $response['message'] = "Some Technical Error! Please Try Again.";
}

echo json_encode($response);
?>
