    <?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
require_once('common-api-header.php');
$core->setTimeZone();
$data_raw = file_get_contents('php://input');
$data = json_decode($data_raw,true);
$response = array();

if(isset($_GET['BranchID']))
{
   $BranchID = $_GET['BranchID'];
   $course_obj = new Courses($conn);
   $courses = $course_obj->getAllCourseByBranchID($BranchID);
   if(sizeof($courses) > 0)
   {
      $response['data'] = $courses;
      $response['error'] = false;
   }
   else
   {

       $response['error'] = true;
       $response['message'] = "No Course Exists in the system";
   }
}
else
{
    $response['error'] = true;
    $response['message'] = "Missing User Field!";
}
echo json_encode($response);
?>