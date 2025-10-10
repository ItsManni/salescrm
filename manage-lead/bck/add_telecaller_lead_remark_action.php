<?php
	@session_start();
	require_once('../../include/autoloader.inc.php');
	$dbh = new Dbh();
	$core = new Core();
	$conn = $dbh->_connectodb();
	$authentication = new Authentication($conn);
    $authenticated = $authentication->SessionCheck();
	if(isset($_POST['lead_remark']))
	{
		$ManageLead = new ManageLead($conn);
		$data = $_POST;
		$data['CreatedBy'] = $_SESSION['pp_email'];
		$response = $ManageLead->AddTelecallerLeadRemarkData($data);
		if($response['error'] == false)
		{
         	$response['error'] = false;
			$response['message'] = "Lead Remark Added !";
		}
	}
	else
	{
		$response['error'] = true;
		$response['message'] = "Some Technical Error ! Please Try Again.";
	}
	echo json_encode($response);
?>