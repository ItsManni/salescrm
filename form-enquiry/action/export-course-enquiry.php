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

$fillter_mode = "";
if(isset($_POST['fillter_mode']))
{
    $fillter_mode = $_POST['fillter_mode'];
    if($fillter_mode != "")
    {
        $fillter_mode = " AND ModeOfClasses = '$fillter_mode'";
    }
}

$where = " where IsActive = 1";
$filter = $where.$fillter_mode.$filter_start_date.$filter_end_date.$fillter_date;
$course_enquiry_details = $core->_getTableRecords($conn,'allcourse_form_payment', $filter);
if ($course_enquiry_details > 0) {
    $output .= '
   <table class="table" border="1">  
                    <tr>  
                         <th>Name</th> 
                         <th>DOB</th>                         
                         <th>Mobile Number</th> 
                         <th>Email</th>
                         <th>Highest Qualification</th>
                         <th>Address</th> 
                         <th>Mode Of Classes</th> 
                         <th>Course Name</th> 
                         <th>Optional Course Name</th> 
                         <th>Module Course Name</th> 
                         <th>Remark</th>
                         <th>Payment Page</th>
                         <th>Payment Status</th>
                         <th>Transaction ID</th> 
                         <th>Created Date</th> 
                         <th>Created Time</th>
                    </tr>
  ';
    foreach ($course_enquiry_details as $CourseEnquiryData) {
        
        $output .= '<tr>  
                        <td>' . $CourseEnquiryData["Name"] . '</td> 
                        <td>' . $CourseEnquiryData["DOB"] . '</td>
                        <td>' . $CourseEnquiryData["MobileNumber"] . '</td>
                        <td>' . $CourseEnquiryData["Email"] . '</td>
                        <td>' . $CourseEnquiryData["HighestQualification"] . '</td>
                        <td>' . $CourseEnquiryData["Address"] . '</td> 
                        <td>' . $CourseEnquiryData["ModeOfClasses"] . '</td>
                        <td>' . $CourseEnquiryData["CourseName"] . '</td>
                        <td>' . $CourseEnquiryData["OptionalCourseName"] . '</td> 
                        <td>' . $CourseEnquiryData["ModuleCourseName"] . '</td>
                        <td>' . $CourseEnquiryData["Remark"] . '</td>
                        <td>' . $CourseEnquiryData["PaymentPage"] . '</td> 
                        <td>' . $CourseEnquiryData["PaymentStatus"] . '</td>
                        <td>' . $CourseEnquiryData["TransactionID"] . '</td>
                        <td>' . $CourseEnquiryData["CreatedDate"] . '</td>
                        <td>' . $CourseEnquiryData["CreatedTime"] . '</td>
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