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
	if(isset($_POST['CompanyName']))
	{
		$ManageLead = new ManageLead($conn);
		$form_action = $_POST['form_action'];

		$data = $_POST;
		$data['CreatedBy'] = $_SESSION['pp_email'];
		if($form_action == 'Add')
		{
			// $admission_details = $ManageLead->getLeadsDetails($data);

			// if($admission_details['exist'] == false)
			// {
				   $response = $ManageLead->InsertLeadForm($data);
					$response['error'] = false;
					$response['message'] = "Lead Added and Assigned !";
			// }
			// else
			// {

			// 	$response['error'] = true;
			// 	$response['message'] = "Lead Already Exist.";
			// }
		}
		else
		{
			$response = $ManageLead->UpdateLeadsDetails($data);
			$response['error'] = false;
		    $response['message'] = "Lead Details Updated !";
		}

	}
	else
	{
		$response['error'] = true;
		$response['message'] = "Some Technical Error ! Please Try Again.";
	}
	echo json_encode($response);
?>