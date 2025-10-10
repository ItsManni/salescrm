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

$where = " where 1";
$filter = $where.$filter_start_date.$filter_end_date.$fillter_date;
$mslv_course_details = $core->_getTableRecords($conn,'mslv_course', $filter);
if ($mslv_course_details > 0) {
    $output .= '
   <table class="table" border="1">  
                    <tr>  
                         <th>Name</th> 
                         <th>DOB</th> 
                         <th>Mobile Number</th>
                         <th>Email</th>
                         <th>Highest Qualification</th>
                         <th>Address</th> 
                         <th>Course Name</th> 
                         <th>Remark</th> 
                         <th>Payment Page</th> 
                         <th>Payment Status</th> 
                         <th>Transaction ID</th> 
                         <th>Created Date</th> 
                         <th>Created Time</th>
                    </tr>
  ';
    foreach ($mslv_course_details as $MSLVData) {
        
        $output .= '<tr>  
                        <td>' . $MSLVData["Name"] . '</td> 
                        <td>' . $MSLVData["DOB"] . '</td>
                        <td>' . $MSLVData["MobileNumber"] . '</td>
                        <td>' . $MSLVData["Email"] . '</td>
                        <td>' . $MSLVData["HighestQualification"] . '</td>
                        <td>' . $MSLVData["Address"] . '</td>
                        <td>' . $MSLVData["CourseName"] . '</td>
                        <td>' . $MSLVData["Remark"] . '</td>
                        <td>' . $MSLVData["PaymentPage"] . '</td>
                        <td>' . $MSLVData["PaymentStatus"] . '</td>
                        <td>' . $MSLVData["TransactionID"] . '</td>
                        <td>' . $MSLVData["CreatedDate"] . '</td>
                        <td>' . $MSLVData["CreatedTime"] . '</td>
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