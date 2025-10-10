<?php
@session_start();
require_once('../../include/autoloader.inc.php');
$dbh = new Dbh();
$conn = $dbh->_connectodb();
$core = new Core();
$authentication = new Authentication($conn);
$authenticated = $authentication->SessionCheck();
$UserType = $authentication->SessionCheck();
$loggedin_email = $_SESSION['pp_email'];
$BranchID = '-1';
if(isset($_SESSION['BranchID'])){
  $BranchID = $_SESSION['BranchID'];
}
if(isset($_POST['center_id'])){
  $BranchID = $_POST['center_id'];
}
$IMSSetting = new IMSSetting($conn);
$all_lead_status = $IMSSetting->GetAllLeadStatus();
$status_array = $core->generateArraywithKeyName($all_lead_status,'Status');


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


$fillter_status = "";
if(isset($_POST['fillter_status']))
{
    $fillter_status = $_POST['fillter_status'];
    if($fillter_status != "")
    {
        $fillter_status = " AND Status = '$fillter_status'";
    }
}

$fillter_lead_source = "";
if(isset($_POST['fillter_lead_source']))
{
    $fillter_lead_source = $_POST['fillter_lead_source'];
    if($fillter_lead_source != "")
    {
        $fillter_lead_source = " AND LeadSource = '$fillter_lead_source'";
    }
}


$fillter_center_id = "";
if($BranchID != -1 && ($BranchID != ""))
{
   $fillter_center_id = " AND BranchID = $BranchID";
}

$filter_assignto = "";
if(isset($_SESSION['UserID'])){
  $User_ID = $_SESSION['UserID'];
}
if($UserType == "Counsellor")
{
  $filter_assignto = " and AssignedTo = $User_ID";
}
$filter = " where 1 ".$filter_start_date.$filter_end_date.$fillter_date.$fillter_center_id.$fillter_status.$fillter_lead_source.$filter_assignto;

$sql = "SELECT Status,Count(*) as Total_Count FROM `all_lead` ".$filter." GROUP BY Status";
$response = array();
$result = mysqli_query($conn, $sql);
// Generate HTML
while ($row = $result->fetch_assoc())
{
    $Status = $row['Status'];
    $bg_color = $status_array[$Status]['LeadColor'];
    $style = "background-color:".$bg_color.";color:#fff";
	?>
    <div class="card overflow-hidden lead-card" style="width:15%;margin:2px;padding:0.5%;font-size:0.8em;<?=$style;?>" data-status="<?php echo $row['Status'];?>">
        <div class="card-body" style="padding:0px;">
            <div class="d-flex">
                <div class="">
                    <p style="font-size:14px;font-weight:bold;padding-top:4%;" class="mb-0"><?php echo $row['Status'];?></p>
                </div>
                <div class="ms-auto my-auto">
                    <h4 class="mt-2" style="font-weight:600;"><?php echo $row['Total_Count'];?></h4>
                </div>
            </div>
        </div>
    </div>

<?php
}
?>
