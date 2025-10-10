<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
require_once('common-api-header.php');
$core->setTimeZone();
$data_raw = file_get_contents('php://input');
$data = json_decode($data_raw,true);
$response = array();
$branch_obj = new Branch($conn);
$branches = $branch_obj->GetAllBranch($conn);
if(sizeof($branches) > 0)
{
   $response['data'] = $branches;
   $response['error'] = false;
}
else
{
     
    $response['error'] = true;
    $response['message'] = "No Center Exists in the system";
}
echo json_encode($response);
?>