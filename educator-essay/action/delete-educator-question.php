<?php
@session_start();
require_once('../../include/autoloader.inc.php');
$dbh = new Dbh();
$conn = $dbh->_connectodb();
$authentication = new Authentication($conn);
$authenticated = $authentication->SessionCheck();

$response = array();
if(isset($_POST))
{
    $EducatorEssay = new EducatorEssay($conn);
    $data = $_POST;
    $response_data = $EducatorEssay->DeleteEducatorQuestion($data);
    if($response_data == true)
    {
        $response['error']  = false;
        $response['message']  = "Educator Essay Question has been Deleted!";
    }else{
        $response['message'] = "Some Technical Error ! Please Try Again";
    }

}
else
{
    $response['error'] = true;
    $response['message'] = "Some Technical Error ! Please Try Again.";
}
echo json_encode($response);
?>