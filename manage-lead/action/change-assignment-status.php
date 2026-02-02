<?php
// error_reporting(E_ALL);
// ini_set('display_errors', 1);
	@session_start();
	require_once('../../include/autoloader.inc.php');
	$dbh = new Dbh();
	$core = new Core();
	$conn = $dbh->_connectodb();
	$authentication = new Authentication($conn);
    $authenticated = $authentication->SessionCheck();
	if(isset($_POST['UserName']))
	{
		$ManageLead = new ManageLead($conn);
		$data = $_POST;
		$data['CreatedBy'] = $_SESSION['pp_email'];

	    $response = $ManageLead->UpdateLeadAssignment($data);
	    $response['error'] = false;
	    $response['message'] = "Lead Status Updated !";
	}
	else
	{
		$response['error'] = true;
		$response['message'] = "Some Technical Error ! Please Try Again.";
	}
	echo json_encode($response);
?>