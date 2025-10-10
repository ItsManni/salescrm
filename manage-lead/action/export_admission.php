<?php
@session_start();
require_once('../../include/autoloader.inc.php');
$dbh = new Dbh();
$conn = $dbh->_connectodb();
$core = new Core();
$authentication = new Authentication($conn);
$authenticated = $authentication->SessionCheck();

$output ="";

$filter_start_date = "";
if(isset($_POST['filter_start_date']))
{
    $filter_start_date = $_POST['filter_start_date'];
    // $dateTime = DateTime::createFromFormat('m/d/Y', $filter_start_date); 
    // $newDateFormat = $dateTime->format('Y-m-d');
    if($filter_start_date != "")
    {
        $filter_start_date = " AND CreatedDate = '$filter_start_date'";
    }
}

$filter_end_date = "";
if(isset($_POST['filter_end_date']))
{
    $filter_end_date = $_POST['filter_end_date'];
    // $dateTime = DateTime::createFromFormat('m/d/Y', $filter_end_date); 
    // $newDateFormat = $dateTime->format('Y-m-d');
    if($filter_end_date != "")
    {
        $filter_end_date = " AND CreatedDate = '$filter_end_date'";
    }
}

$fillter_date = '';
if($filter_start_date != "" && $filter_end_date != ""){
  $filter_start_date = '';
  $filter_end_date = '';
   
  $start_date = $_POST['filter_start_date'];
  $end_date = $_POST['filter_end_date'];

  $fillter_date = " AND CreatedDate BETWEEN '$start_date' AND '$end_date'";

}


$fillter_course = "";
if(isset($_POST['fillter_course']))
{
    $fillter_course = $_POST['fillter_course'];
    if($fillter_course != "")
    {
        $fillter_course = " AND Courses = '$fillter_course'";
    }
}

$fillter_mode = "";
if(isset($_POST['fillter_mode']))
{
    $fillter_mode = $_POST['fillter_mode'];
    if($fillter_mode != "")
    {
        $fillter_mode = " AND Mode = '$fillter_mode'";
    }
}

$fillter_source = "";
if(isset($_POST['fillter_source']))
{
    $fillter_source = $_POST['fillter_source'];
    if($fillter_source != "")
    {
        $fillter_source = " AND Source = '$fillter_source'";
    }
}


$courses_array_temp = $core->_getTableRecords($conn,'courses_for_display'," where 1");
$courses_array = array();
foreach($courses_array_temp as $course)
{
    $CourseID = $course['ID'];
    $courses_array[$CourseID] = $course['CourseName'];
}

$where = " where IsActive = 1";
$filter = $where.$fillter_course.$fillter_mode.$fillter_source.$filter_start_date.$filter_end_date.$fillter_date;
$admission_details = $core->_getTableRecords($conn,'student_admission', $filter);
if ($admission_details > 0) {
    $output .= '
   <table class="table" border="1">  
                    <tr>  
                         <th>Roll No</th> 
                         <th>Name</th>                          
                         <th>Email</th> 
                         <th>Phone Number</th>
                         <th>Courses</th>
                         <th>Mode</th> 
                         <th>Total Structured Fee</th> 
                         <th>Scholarship Provided</th> 
                         <th>Total Payble Fee</th> 
                         <th>Fees to be Paid</th> 
                         <th>Source</th> 
                         <th>Payment Mode</th> 
                         <th>Transaction ID</th> 
                         <th>Payment Status</th> 
                         <th>Admission Date</th> 
                         <th>Payment Date</th>
                         <th>Alternative Number</th> 
                         <th>Country</th> 
                         <th>State</th> 
                         <th>City</th> 
                         <th>Address</th> 
                         <th>Postal Address</th> 
                         <th>Pin</th> 
                         <th>Profile Picture</th> 
                         <th>ID Proof</th> 
                         <th>DOB</th> 
                         <th>Father / Husband Name</th> 
                         <th>Parent Mobile</th> 
                         <th>College / School</th> 
                         <th>Year / Class</th> 
                         <th>Degree</th> 
                         <th>Created By</th> 
                         <th>Created Date</th> 
                         <th>Created Time</th>
                    </tr>
  ';
    foreach ($admission_details as $AdmissionData) {
        
        $output .= '<tr>  
                        <td>' . $AdmissionData["RollNo"] . '</td> 
                        <td>' . $AdmissionData["Name"] . '</td>
                        <td>' . $AdmissionData["Email"] . '</td>
                        <td>' . $AdmissionData["PhoneNumber"] . '</td>
                        <td>' . $courses_array[$AdmissionData["Courses"]] . '</td>
                        <td>' . $AdmissionData["Mode"] . '</td> 
                        <td>' . $AdmissionData["TotalStructuredFee"] . '</td>
                        <td>' . $AdmissionData["ScholarshipProvided"] . '</td>
                        <td>' . $AdmissionData["TotalPaybleFee"] . '</td> 
                        <td>' . $AdmissionData["FeestobePaid"] . '</td>
                        <td>' . $AdmissionData["Source"] . '</td>
                        <td>' . $AdmissionData["PaymentMode"] . '</td> 
                        <td>' . $AdmissionData["TransactionID"] . '</td>
                        <td>' . $AdmissionData["PaymentStatus"] . '</td>
                        <td>' . $AdmissionData["AdmissionDate"] . '</td> 
                        <td>' . $AdmissionData["PaymentDate"] . '</td> 
                        <td>' . $AdmissionData["AlternativeNumber"] . '</td>
                        <td>' . $AdmissionData["Country"] . '</td>
                        <td>' . $AdmissionData["State"] . '</td> 
                        <td>' . $AdmissionData["City"] . '</td>
                        <td>' . $AdmissionData["Address"] . '</td>
                        <td>' . $AdmissionData["PostalAddress"] . '</td> 
                        <td>' . $AdmissionData["Pin"] . '</td>
                        <td>' . $AdmissionData["ProfilePicture"] . '</td>
                        <td>' . $AdmissionData["IDProof"] . '</td> 
                        <td>' . $AdmissionData["DOB"] . '</td>
                        <td>' . $AdmissionData["Gender"] . '</td>
                        <td>' . $AdmissionData["FatherHusbandName"] . '</td> 
                        <td>' . $AdmissionData["ParentMobile"] . '</td>
                        <td>' . $AdmissionData["CollegeSchool"] . '</td>
                        <td>' . $AdmissionData["YearClass"] . '</td> 
                        <td>' . $AdmissionData["Degree"] . '</td>
                        <td>' . $AdmissionData["CreatedBy"] . '</td>
                        <td>' . $AdmissionData["CreatedDate"] . '</td>
                        <td>' . $AdmissionData["CreatedTime"] . '</td>
                    </tr>
   ';
    }

} else {
    $output = "<table><tr><td>No Data Available</td></tr></table>";
}
echo $output;
$myfile = fopen("../report.xls", "w");
fwrite($myfile, $output);
fclose($myfile);
?>