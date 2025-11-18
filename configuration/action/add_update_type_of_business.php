<?php
@session_start();
require_once('../../include/autoloader.inc.php');
// this file will give client connection object $conn $_SESSION['dwd_OrgID'] must be set
$dbh = new Dbh();
$core = new Core();
$conn = $dbh->_connectodb();
$core->setTimeZone();
if(isset($_POST['BusinessName']))
{
    $BusinessName = $_POST['BusinessName'];
    $form_action = $_POST['form_action'];
    $data = $_POST;
    $data['CreatedDate'] = date("Y-m-d");
    $data['CreatedTime'] = date("H:i:s");
    $data['CreatedBy'] = $_SESSION['pp_email'];
    $IMSSetting = new IMSSetting($conn);
    if($form_action == "add")
    {
        // Check if Business Type already exists
        $response = $IMSSetting->CheckDuplicateBusinessName($data);
        if($response == true)
        {
            // Insert the new Business Type
            $response = $IMSSetting->InsertBusinessName($data);
            if($response['error'] == false)
            {
                $response['message'] = "Business Type Saved!";
            }
            else
            {
                $response['error'] = true;
                $response['message'] = "Some Technical Error! Please Try Again.";
            }
        } else {
            $response['error'] = true;
            $response['message'] = "Business Type Already Added.";
        }
    }
    else
    {
        // Update the existing Business Type
        $response = $IMSSetting->UpdateBusinessName($data);
        $response['message'] = "Business Type Updated!";
    }
}
else
{
    $response['error'] = true;
    $response['message'] = "Some Technical Error! Please Try Again.";
}

echo json_encode($response);
?>
