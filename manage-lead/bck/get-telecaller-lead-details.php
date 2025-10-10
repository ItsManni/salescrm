<?php
@session_start();
require_once('../../include/autoloader.inc.php');
$dbh = new Dbh();
$conn = $dbh->_connectodb();


$response = array();
$response['error'] = true;
if(isset($_POST))
{
   
    $ManageLead = new ManageLead($conn);
    $LeadID = $_POST['LeadID'];
    $response_data = $ManageLead->GetTelecallerLeadsDetailsByID($LeadID);
    
    $response['error'] = false;
    $response['data'] = $response_data;
}
else
{
    $response['message'] = "Technical Problem. Please try again";
}
echo json_encode($response);
?>