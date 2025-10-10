<?php
@session_start();
require_once('../../include/autoloader.inc.php');
$dbh = new Dbh();
$conn = $dbh->_connectodb();
$student_fee = new StudentFee($conn);
$course_fee_array = $student_fee->setCourseFeeArray();
$course_mode = $_POST['course_mode'];
$total_fees = 0;
$response = array();
$response['total_fees'] = $total_fees;
if(isset($_POST['selected_courses']))
{
	$selected_courses = $_POST['selected_courses'];
	foreach($selected_courses as $selected_course)
	{
		$total_fees = $total_fees + $course_fee_array[$selected_course][$course_mode];
	}
	$response['total_fees'] = $total_fees;
}
echo json_encode($response);
?>