<?php
@session_start();
require_once('../../include/autoloader.inc.php');
$dbh = new Dbh();
$conn = $dbh->_connectodb();
$authentication = new Authentication($conn);
$authenticated = $authentication->SessionCheck();


$response = array();
$response['error'] = true;
if(isset($_POST))
{
   
    $Educator = new Educator($conn);
    $ID = $_POST['ID'];
    $response_data = $Educator->GetEducatorDetailsbyID($ID);
    
    $response['error'] = false;
    $response['data'] = $response_data;
}
else
{
    $response['message'] = "Some Technical Error ! Please Try Again.";
}
echo json_encode($response);
?>