<?php
	@session_start();
	require_once('../../include/autoloader.inc.php');
	$dbh = new Dbh();
	$core = new Core();
	$conn = $dbh->_connectodb();
	$authentication = new Authentication($conn);
    $authenticated = $authentication->SessionCheck();
	if(isset($_POST['educator_name']))
	{
		$Educator = new Educator($conn);
		$Users = new Users($conn);
		$data = $_POST;
		$data['CreatedBy'] = $_SESSION['pp_email'];
		$form_action = $_POST['form_action'];

        if($form_action == "add")
        {
			$response = $Educator->InsertEducatorForm($data);
			if($response['error'] == false){
				$data['Center'] = $_POST['center_id'];
				$data['user_name'] = $_POST['educator_name'];
				$data['user_phone_number'] = $_POST['educator_phone'];
				$data['user_email'] = $_POST['educator_email'];
				$data['user_type'] = 'Educator';
				$data['password'] = $_POST['educator_password'];
				$data['user_email'] = $_POST['educator_email'];

				$data['CreatedDate'] = date('Y-m-d');
				$data['CreatedTime'] = date('H:i:s');
				
				$response = $Users->InsertUser($data);
			}
        }
	    else
	    {
	        $response = $Educator->UpdateEducatorForm($data);
	    }
	   
	}
	else
	{
		$response['error'] = true;
		$response['message'] = "Some Technical Error ! Please Try Again.";
	}
	echo json_encode($response);
?>