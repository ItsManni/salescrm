<?php
@session_start();
require_once('../../include/autoloader.inc.php');
$dbh = new Dbh();
$conn = $dbh->_connectodb();
$core = new Core();
$ManageLead = new ManageLead($conn);
$IMSSetting = new IMSSetting($conn);
$FinalStatus = $IMSSetting->GetFinalLeadStatus();
$filter_final_status = "";
if($FinalStatus != "")
{
    $filter_final_status = " AND Status != '$FinalStatus'";
}
$loggedin_email = $_SESSION['pp_email'];
$authentication = new Authentication($conn);
$UserType = $authentication->SessionCheck();
## Read value
$draw = $_POST['draw'];
$row = $_POST['start'];
$rowperpage = $_POST['length']; // Rows display per page
$searchValue = $_POST['search']['value']; // Search value
// $filter_start_date = $_GET['filter_start_date'];
// $filter_end_date = $_GET['filter_end_date'];
$filter_start_date = "";
if(isset($_GET['filter_start_date']))
{
    $filter_start_date = $_GET['filter_start_date'];
    // $dateTime = DateTime::createFromFormat('m/d/Y', $filter_start_date);
    // $newDateFormat = $dateTime->format('Y-m-d');
    if($filter_start_date != "")
    {
        $filter_start_date = " AND CreatedDate = '$filter_start_date'";
    }
}

$filter_end_date = "";
if(isset($_GET['filter_end_date']))
{
    $filter_end_date = $_GET['filter_end_date'];
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

  $start_date = $_GET['filter_start_date'];
  $end_date = $_GET['filter_end_date'];

  $fillter_date = " AND CreatedDate BETWEEN '$start_date' AND '$end_date'";

}


$fillter_assign = "";
if(isset($_GET['fillter_assign']))
{
    $fillter_assign = $_GET['fillter_assign'];
    if($fillter_assign != "")
    {
        $fillter_assign = " AND AssignedTo = '$fillter_assign'";
    }
}

$fillter_center = "";
if(isset($_GET['BranchID']))
{
    $BranchID = $_GET['BranchID'];
    if($BranchID != "-1")
    {
        $fillter_center = " AND BranchID = '$BranchID'";
    }
}


$fillter_status = "";
if(isset($_GET['fillter_status']))
{
    $fillter_status = $_GET['fillter_status'];
    if($fillter_status != "")
    {
        $fillter_status = " AND Status = '$fillter_status'";
    }
}

$fillter_lead_source = "";
if(isset($_GET['fillter_lead_source']))
{
    $fillter_lead_source = $_GET['fillter_lead_source'];
    if($fillter_lead_source != "")
    {
        $fillter_lead_source = " AND LeadSource = '$fillter_lead_source'";
    }
}

$columnName = "ID";
$columnSortOrder = "DESC";

$data = array();

$searchQuery = " ";
if($searchValue != ''){
   $searchQuery = " and (CompanyName like '%".$searchValue."%' or ContactPersonEmail like '%".$searchValue."%' or ContactPersonPhoneNumber LIKE '%".$searchValue."%' or ContactPersonAlternativeNo like '%".$searchValue."%' or Website like '%".$searchValue."%'  or ContactPersonName like '%".$searchValue."%')";
}

$filter_assignto = "";
$User_ID = '';
if(isset($_SESSION['UserID'])){
  $User_ID = $_SESSION['UserID'];
}
if($UserType == "BDE")
{
  $filter_assignto = " and AssignedTo = $User_ID";
}

$filter_center_manager = "";
if($UserType == "Center Manager" || $UserType == "Lead Counsellor")
{
  $filter_center_manager = " AND BranchID = $BranchID";
}

$filter = " where IsActive = 1 and Status = 'Converted'";

$filter = $filter.$searchQuery.$fillter_center.$filter_start_date.$filter_end_date.$fillter_date.$fillter_status.$fillter_lead_source.$filter_assignto.$fillter_assign.$filter_center_manager;
// echo $filter;
$totalRecordwithFilter = $core->_getTotalRows($conn,'all_lead', $filter);
## Total number of record with filtering
$totalRecords = $totalRecordwithFilter;
$filter = $filter." ORDER BY ".$columnName." ".$columnSortOrder;
$filter = $filter." limit ".$row.",".$rowperpage;
$all_lead_details = $core->_getTableRecords($conn,'all_lead', $filter);
$encryption = new Encryption();


$where = " where 1";
$user_array_temp = $core->_getTableRecords($conn,'user_details',$where);
$user_array = array();
foreach($user_array_temp as $user)
{
    $UserID = $user['ID'];
    $user_array[$UserID] = $user['Name'];
}

$where = " where 1";
$branch_array_temp = $core->_getTableRecords($conn,'branch',$where);
$branch_array = array();
foreach($branch_array_temp as $user)
{
    $Branch_ID = $user['ID'];
    $branch_array[$Branch_ID] = $user['BranchName'];
}

$where = " where 1";
$lead_status_temp = $core->_getTableRecords($conn,'lead_status',$where);
$lead_status_array = array();
foreach($lead_status_temp as $leadstatus)
{
    $Lead_Status = $leadstatus['Status'];
    $lead_status_array[$Lead_Status] = $leadstatus['LeadColor'];
}

$where = " where 1";
$type_of_business_array_temp = $core->_getTableRecords($conn,'type_of_business',$where);
$type_of_business_array = array();
foreach($type_of_business_array_temp as $type_of_business)
{
    $BusinessID = $type_of_business['ID'];
    $type_of_business_array[$BusinessID] = $type_of_business['BusinessName'];
}

$where = " where 1";
$services_array_temp = $core->_getTableRecords($conn,'services',$where);
$services_array = array();
foreach($services_array_temp as $services)
{
    $ServiceID = $services['ID'];
    $services_array[$ServiceID] = $services['ServiceName'];
}

foreach ($all_lead_details as $all_lead_details_value)
{
  extract($all_lead_details_value);

  if($CompanyName != "")
  {
    $CompanyName = $CompanyName;
  }else{
    $CompanyName = "N/A";
  }

  if($BranchID != -1){
    $BranchID = $branch_array[$BranchID];
  }else{
    $BranchID = "N/A";
  }

  $Lead_ID_encrypted = $encryption->encrypt_message($ID);

  if($AssignedTo == -1){
    $AssignedTo = 'N/A';
  }
  else if(isset($user_array[$AssignedTo]))
  {
    $AssignedTo = $user_array[$AssignedTo];
  }
  else
  {
    $AssignedTo = 'N/A';
  }

  if($ContactPersonPhoneNumber == "")
  {
    $Mobile_Email = $ContactPersonPhoneNumber;
  }
  else
  {
    $Mobile_Email = $ContactPersonEmail."<br>".$ContactPersonPhoneNumber;
  }

  $serviceNames = [];

  if (!empty($Services)) {
      $serviceIDs = explode(',', $Services); // convert string to array

      foreach ($serviceIDs as $sid) {
          if (isset($services_array[$sid])) {
              $serviceNames[] = $services_array[$sid];
          }
      }
  }

  $services_list = implode(', ', $serviceNames);

  if(!empty($TypeofBusiness)){
      $Business_category = $type_of_business_array[$TypeofBusiness];
  }else{
    $Business_category = 'N/A';
  }

   $data[] = array(
    "id"=>$ID,
    "BranchID"=>$BranchID,
    "CompanyName_TypeofBusiness"=>$CompanyName."<br>" .$Business_category,
    "Services"=>$services_list,
    "ViewDetails"=>"<a href='view-lead-details?LeadID=".$Lead_ID_encrypted."'><span class='badge bg-info badge-sm  me-1 mb-1 mt-1'>View Details</span></a><br><span style='cursor: pointer;' class='badge bg-primary' onclick='OpenModal_QuickChangeAssignment($ID)'>Change Assignment</span><br><span style='cursor: pointer;' class='badge bg-danger' onclick='OpenModal_LeadDetails($ID)'>Quick View</span>",
    "Status"=>"<span class='badge' style='background-color:$lead_status_array[$Status]'>$Status</span>",
    "AssignedTo"=>$AssignedTo,
    "Action"=>"<a class='btn text-danger btn-sm' data-bs-toggle='tooltip'  onclick='EditManageLead_modal($ID)' data-bs-original-title='Edit'><span class='fe fe-edit fs-14'></span></a>"
   );

}
## Response
$response = array(
  "draw" => intval($draw),
  "iTotalRecords" => $totalRecords,
  "iTotalDisplayRecords" => $totalRecordwithFilter,
  "aaData" => $data
);
// echo $response;
echo json_encode($response);
?>