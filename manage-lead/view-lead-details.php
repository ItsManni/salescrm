<?php
@session_start();
require_once('../include/autoloader.inc.php');
$conf = new Conf();
$_ProductName = $conf->_ProductName;
$_ProductLogo = $conf->_ProductLogo;
$_LeadName = $conf->_LeadName;
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <!-- TITLE -->
    <title>View Lead Details - <?= $_ProductName ?> Portal </title>
    <?php 
    include("../include/common-head.php");
    $dbh = new Dbh();
    $conn = $dbh->_connectodb();
    $core = new Core();
    $authentication = new Authentication($conn);
    $UserType = $authentication->SessionCheck();
    $encrypt = new Encryption();
    $ManageLead = new ManageLead($conn);

    $LeadID = -1;
    
    if(isset($_GET['LeadID'])){
        $Encrypt_LeadID= $_GET['LeadID'];
        $LeadID = $encrypt->decrypt_message($Encrypt_LeadID);
    }

    $lead_details = $ManageLead->GetLeadsDetailsByID($LeadID);
    $Lead_remarks_arr = $ManageLead->GetAllLeadRemarks($conn,$LeadID);
    $Lead_histroy_arr = $ManageLead->GetAllLeadAssignmentHistory($conn,$LeadID);

    $where = " where 1";
    $courses_array_temp = $core->_getTableRecords($conn,'courses_for_display',$where);
    $courses_array = array();
    foreach($courses_array_temp as $course)
    {
        $CourseID = $course['ID'];
        $courses_array[$CourseID] = $course['CourseName'];
    }

    $where = " where 1";
    $user_array_temp = $core->_getTableRecords($conn,'user_details',$where);
    $user_array = array();
    $user_array2 = array();
    foreach($user_array_temp as $user)
    {
        $UserID = $user['ID'];
        $User_email = $user['Email'];
        $user_array[$UserID] = $user['Name'];
        $user_array2[$User_email] = $user['Name'];
    }

    $where = " where 1";
    $lead_status_array_temp = $core->_getTableRecords($conn,'lead_status',$where);
    $lead_status_array = array();
    foreach($lead_status_array_temp as $lead_status)
    {
        $StatusID = $lead_status['ID'];
        $lead_status_array[$StatusID] = $lead_status['Status'];
    }

    $where = " where 1";
    $branch_array_temp = $core->_getTableRecords($conn,'branch',$where);
    $branch_array = array();
    foreach($branch_array_temp as $user)
    {
        $Branch_ID = $user['ID'];
        $branch_array[$Branch_ID] = $user['BranchName'];
    }
    $access = false;
    if($UserType == "System Admin" || $UserType == "Lead Counsellor" || $UserType == "Counsellor" || $UserType == "Admin" || $UserType == "Center Manager")
    {
        $access = true;
    }
    ?>
</head>

<body class="app sidebar-mini ltr light-mode">
    <div class="page">
        <div class="page-main">
            <?php 
                include("../navigation/top-header.php");
                include("../navigation/side-navigation.php");
            ?>

            <!--app-content open-->
            <div class="main-content app-content mt-0">
                <div class="side-app">

                    <!-- CONTAINER -->
                    <div class="main-container container-fluid">

                        <!-- PAGE-HEADER -->
                        <div class="page-header mb-3">
                            <h1 class="page-title">Lead Details</h1>
                            <div>
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="../dashboard/admin-dashboard">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">View Lead Details</li>
                                </ol>
                            </div>
                        </div>
                        <!-- PAGE-HEADER END -->

                        <!-- Row -->
                        <div class="row pb-5 justify-content-end">
                            <div class="col-md-4 text-end">
                                <a href="../admission/add-admission-form?LeadID=<?php echo $LeadID;?>" class="btn btn-success">Convert Into Admission</a>
                            </div>
                        </div>
                        <div class="row row-sm">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="panel panel-primary">
                                            <div class="tab-menu-heading tab-menu-heading-boxed">
                                                <div class="tabs-menu-boxed">
                                                    <!-- Tabs -->
                                                    <ul class="nav panel-tabs">
                                                        <?php
                                                        if($access)
                                                        {
                                                        ?>
                                                            <li><a href="#lead_details" class="active" data-bs-toggle="tab">Lead Details</a></li>
                                                            <li><a href="#change_assignment" data-bs-toggle="tab">Assignment & Status</a></li>
                                                            <li><a href="#leadremark" data-bs-toggle="tab">Remarks</a></li>
                                                            <li><a href="#leadhistory" data-bs-toggle="tab">History</a></li>
                                                        <?php
                                                        }
                                                        ?>
                                                        
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="panel-body tabs-menu-body p-0">
                                                <div class="tab-content">
                                                    <?php
                                                    if($access)
                                                    {
                                                    ?>
                                                        <div class="tab-pane active" id="lead_details">
                                                            <?php include("include/lead-details.php"); ?>
                                                        </div>
                                                       
                                                        <div class="tab-pane" id="change_assignment">
                                                            <?php include("include/change-assignment.php"); ?>
                                                        </div>
                                                        
                                                        <div class="tab-pane" id="leadremark">
                                                            <?php include("include/lead_remark.php"); ?>
                                                        </div>
                                                       
                                                        <div class="tab-pane" id="leadhistory">
                                                            <?php include("include/lead_history.php"); ?>
                                                        </div>
                                                    <?php 
                                                    } 
                                                    ?>

                                                    



                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Row -->

                    </div>
                    <!-- CONTAINER END -->
                </div>
            </div>
            <!--app-content close-->




            

            <?php
       include("../navigation/right-side-navigation.php");
        ?>

        </div>

        <?php
       include("../include/common-script.php");
        ?>
       <script src="../project-assets/js/manage-lead.js"></script>

       <!-- DATEPICKER JS -->
        <script src="../theme-assets/plugins/date-picker/date-picker.js"></script>
        <script src="../theme-assets/plugins/date-picker/jquery-ui.js"></script>
        <script src="../theme-assets/plugins/daterangepicker/custom-daterangepicker.js"></script>

        <!-- INTERNAL Bootstrap-Datepicker js -->
        <script src="../theme-assets/plugins/bootstrap-datepicker/bootstrap-datepicker.js"></script>

        <script type="text/javascript">
            $(document).ready(function() {
              $("#nav_manage_lead").addClass("active");
            });
        </script>

        
</body>

</html>