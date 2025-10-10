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
        $fillter_mode = " AND ModeOfTest = '$fillter_mode'";
    }
}

$where = " where 1";
$filter = $where.$fillter_mode.$filter_start_date.$filter_end_date.$fillter_date;
$scholarship_enquiry_details = $core->_getTableRecords($conn,'scholarship_form', $filter);
if ($scholarship_enquiry_details > 0) {
    $output .= '
   <table class="table" border="1">  
                    <tr>  
                         <th>Name</th> 
                         <th>Father Name</th>                         
                         <th>Mobile Number</th> 
                         <th>Email</th>
                         <th>Registration Fee</th>
                         <th>Mode Of Test</th> 
                         <th>Social Criteria</th> 
                         <th>Course</th> 
                         <th>Merit Criteria</th> 
                         <th>Description</th>
                         <th>Created Date</th> 
                         <th>Created Time</th>
                    </tr>
  ';
    foreach ($scholarship_enquiry_details as $ScholarshipData) {
        
        $output .= '<tr>  
                        <td>' . $ScholarshipData["Name"] . '</td> 
                        <td>' . $ScholarshipData["FatherName"] . '</td>
                        <td>' . $ScholarshipData["MobileNumber"] . '</td>
                        <td>' . $ScholarshipData["Email"] . '</td>
                        <td>' . $ScholarshipData["RegistrationFee"] . '</td>
                        <td>' . $ScholarshipData["Mode Of Test"] . '</td> 
                        <td>' . $ScholarshipData["SocialCriteria"] . '</td>
                        <td>' . $ScholarshipData["Course"] . '</td>
                        <td>' . $ScholarshipData["MeritCriteria"] . '</td> 
                        <td>' . $ScholarshipData["Description"] . '</td>
                        <td>' . $ScholarshipData["CreatedDate"] . '</td>
                        <td>' . $ScholarshipData["CreatedTime"] . '</td>
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