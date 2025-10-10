<?php
	@session_start();
	require_once('../../include/autoloader.inc.php');
	$dbh = new Dbh();
	$core = new Core();
	$conn = $dbh->_connectodb();
	$authentication = new Authentication($conn);
    $authenticated = $authentication->SessionCheck();
	if(isset($_POST['Courses']))
	{
		$Admission = new Admission($conn);
		$StudentFee = new StudentFee($conn);
		$data = $_POST;
		$data['CreatedBy'] = $_SESSION['pp_email'];
		$ID = $_POST['AdmissionID'];
		$Admission_details = $Admission->GetAdmissionStudentDetailsByID($conn,$ID);

		if($Admission_details)
		{
			$data['AdmissionID'] = $_POST['AdmissionID'];
			$data['student_name'] = $Admission_details['Name'];
			$data['student_email'] = $Admission_details['Email'];
			$data['student_phone_number'] = $Admission_details['PhoneNumber'];
			$data['student_fee'] = $_POST['StudentFee'];
			$data['course'] = $_POST['Courses'];
			$data['mode'] = $_POST['Mode']; 
			$data['total_fee_as_per_structure'] = $Admission_details['TotalStructuredFee'];
			$data['scholarship_provided'] = 0;
			$data['total_fees_payable'] = $Admission_details['TotalPaybleFee'];

			$response = $StudentFee->InsertStudentFee($data);
         	$response['error'] = false;
			$response['message'] = "Fee Link has been generated and sent to student.";
		}
	}
	else
	{
		$response['error'] = true;
		$response['message'] = "Some Technical Error ! Please Try Again.";
	}
	echo json_encode($response);
?>