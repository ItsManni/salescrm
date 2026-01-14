<?php
@session_start();
require_once('../include/autoloader.inc.php');
$conf = new Conf();
$_ProductName = $conf->_ProductName;
$_ProductLogo = $conf->_ProductLogo;
?>
<!DOCTYPE html>
<html lang="en">

<head>
     <style type="text/css">


        .lead-card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            min-width: 300px;
            transition: transform 0.3s, background-color 0.3s;
        }
        .lead-card:hover {
            transform: translateY(-10px);
        }

    </style>
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <!-- TITLE -->
    <title>View All Leads - <?= $_ProductName ?> Portal</title>
    <?php
    include("../include/common-head.php");
    $dbh = new Dbh();
    $conn = $dbh->_connectodb();
    $core = new Core();
    $authentication = new Authentication($conn);
    $UserType = $authentication->SessionCheck();
    $ManageLead = new ManageLead($conn);

    $BranchID = -1;
    if(isset($_SESSION['BranchID'])){
        $BranchID = $_SESSION['BranchID'];
    }
    if(isset($_GET['center']))
    {
        $BranchID = $_GET['center'];
    }


    $Branch = new Branch($conn);
    $AllBranches = $Branch->GetAllBranch($conn);

    $IMSSetting = new IMSSetting($conn);
    $All_Lead_Sources = $IMSSetting->GetAllLeadSources();


    $user = new Users($conn);
    $all_counsellor_details = $user->getAllCounsellorByBranchID($BranchID);
    $lead_status = $IMSSetting->GetAllLeadStatus($conn);
    $FinalStatus = $IMSSetting->GetFinalLeadStatus($conn);
    $All_Services = $IMSSetting->GetAllServices();
    $All_Business_Types  = $IMSSetting->GetAllBusinessTypes();
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
                            <h1 class="page-title">All Leads</h1>
                            <div>
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="../dashboard/admin-dashboard">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">All Lead</li>
                                </ol>
                            </div>
                        </div>
                        <!-- PAGE-HEADER END -->
                        <div class="row" id="lead_analytics">

                        </div>

                        <div class="row pb-5 justify-content-end">
                            <div class="col-md-6 text-end">
                                <?php if($UserType == "System Admin" || $UserType == "BDE" || $UserType == "Center Manager"){?>
                                <a onclick="OpenModal_AddLead()" class="btn btn-success text-white">Add Lead</a>
                                <?php
                                 }
                                 if($UserType == "System Admin"){
                                 ?>
                                <!-- <span onclick="OpenStudentImporter_modal()" class="btn btn-primary">Import Lead</a> -->
                                <?php
                                 }
                                 ?>
                            </div>
                        </div>



                        <!-- Filters -->
                        <form id="export_fillter_form">
                            <div class="row row-sm pt-2 pb-2 justify-content-center">
                                <input type="hidden" name="center_id" id="center_id" value="<?php echo $BranchID; ?>" />
                                <div class="col-2">
                                    <input type="date" class="form-control fc-datepicker" id="filter_start_date"
                                        name="filter_start_date" placeholder="Start Date">
                                </div>

                                <div class="col-2">
                                    <input type="date" class="form-control fc-datepicker" id="filter_end_date"
                                        name="filter_end_date" placeholder="End Date">
                                </div>

                                <!-- <div class="col-2">
                                            <select class="form-control bg-white" name="fillter_course" id="fillter_course">
                                            <option value="">Choose Course</option>
                                            <?php
                                            $i = 1;
                                            foreach($AllCourses as $Course_value)
                                            {
                                            ?>
                                                <option value="<?php echo  $Course_value['ID']?>" ><?php echo  $Course_value['CourseName']?></option>
                                            <?php
                                            $i++;
                                            }
                                            ?>
                                            </select>
                                        </div> -->


                                <div class="col-2">
                                    <select class="form-control" name="fillter_status" id="fillter_status">
                                        <option value="">Select Status</option>
                                        <?php
                                        foreach($lead_status as $Status_value)
                                        {

                                        ?>
                                        <option value="<?php echo  $Status_value['Status']?>">
                                            <?php echo  $Status_value['Status']?></option>
                                        <?php
                                        }
                                        ?>
                                    </select>
                                </div>
                                <div class="col-2">
                                    <select class="form-control" name="fillter_lead_source" id="fillter_lead_source">
                                        <option value="">Select Lead Source</option>
                                        <?php
                                        foreach($All_Lead_Sources as $Lead_Source_value)
                                        {

                                        ?>
                                        <option value="<?php echo  $Lead_Source_value['SourceName']?>">
                                            <?php echo  $Lead_Source_value['SourceName']?></option>
                                        <?php
                                        }
                                        ?>
                                    </select>
                                </div>
                                <div class="col-2">
                                    <select class="form-control" name="fillter_assign" id="fillter_assign">
                                        <option value="">Select Assigned To</option>
                                        <option value="-1">Not Assigned</option>
                                        <?php
                                        foreach($all_counsellor_details as $Counsellor_value)
                                        {

                                        ?>
                                        <option value="<?php echo  $Counsellor_value['ID']?>">
                                            <?php echo  $Counsellor_value['Name']?></option>
                                        <?php
                                        }
                                        ?>
                                    </select>
                                </div>

                                <!-- <div class="col-2">
                                            <input type="text" class="form-control" name="fillter_mobile" id="fillter_mobile" placeholder="Enter Mobile No.">
                                        </div> -->
                                <div class="col-12 mt-3 text-center d-flex justify-content-center">
                                    <span onclick="SearchFillterLead('<?php echo $UserType;?>')" class="btn btn-danger"
                                        style="margin-right:5px">Search</span>

                                    <span onclick="ClearLeadFillter()" class="btn btn-info">Clear Fillter</span>

                                </div>


                            </div> <!-- row -->
                        </form>
                        <!-- Filters -->

                        <div class="row row-sm">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered text-nowrap border-bottom"
                                                id="all_leads">
                                                <thead>
                                                    <tr>
                                                        <th class="wd-15p border-bottom-0">#</th>
                                                        <?php
                                                        if($UserType == "System Admin")
                                                        {
                                                        ?>
                                                            <th class="wd-15p border-bottom-0">Branch</th>
                                                        <?php
                                                        }
                                                        ?>
                                                            <th class="wd-15p border-bottom-0">Services</th>
                                                            <th class="wd-15p border-bottom-0">Company / Business </th>
                                                            <th class="wd-15p border-bottom-0">Email / Mobile Number</th>
                                                            <th class="wd-15p border-bottom-0">Details</th>
                                                            <th class="wd-15p border-bottom-0">Status</th>
                                                            <th class="wd-15p border-bottom-0">Assigned To</th>
                                                            <th class="wd-15p border-bottom-0">Action</th>

                                                    </tr>
                                                </thead>

                                            </table>
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



            <!-- start add modal  -->

            <div class="modal fade" id="quick_change_assignment_modal" tabindex="1">
                <div class="modal-dialog" role="document">
                    <div class="modal-content modal-content-demo">
                        <div class="modal-header">
                            <h3 class="modal-title" id="QuickAssignmentHeading"></h3>
                            <button class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form id="lead_assignment_form" onsubmit="return false;">

                                <div class="mb-3">
                                    <label for="recipient-name" class="col-form-label">Assigned To <span
                                            class="text-danger">*<span></label>
                                    <select class="form-control select2-show-search" name="UserName" id="user_name">
                                        <option value="">Select User</option>
                                        <?php
                                        foreach($all_counsellor_details as $Counsellor_value)
                                        {

                                        ?>
                                        <option value="<?php echo  $Counsellor_value['ID']?>">
                                            <?php echo  $Counsellor_value['Name']?></option>
                                        <?php
                                        }
                                        ?>
                                    </select>
                                </div>

                                <div class="mb-3">
                                    <label for="recipient-name" class="col-form-label">Lead Status <span
                                            class="text-danger">*<span></label>
                                    <select class="form-control select2-show-search" name="LeadStatus" id="lead_status">
                                        <option value="">Select Status</option>
                                        <?php
                                        $i = 1;
                                        foreach($lead_status as $Status_value)
                                        {
                                            if($Status_value['Status'] == $FinalStatus)
                                            {
                                                continue;
                                            }
                                        ?>
                                        <option value="<?php echo  $Status_value['Status']?>">
                                            <?php echo  $Status_value['Status']?></option>
                                        <?php
                                        $i++;
                                        }
                                        ?>
                                    </select>
                                </div>


                                <div class="mb-3">
                                    <label for="recipient-name" class="col-form-label">Remark <span
                                            class="text-danger">*<span></label>
                                    <textarea type="text" class="form-control" name="LeadRemark" id="lead_remark"
                                        placeholder="Type Remark Here... "></textarea>
                                </div>

                                <input type="hidden" name="LeadID" id="Assignment_lead_id" value="">


                                <div class="mt-5 text-center">
                                    <button class="btn btn-success text-white" id="QuickAssignmentBtn"
                                        onclick="AddUpdateAssignment()"></button>
                                </div>


                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <!-- End End modal  -->

            <!-- start add modal  -->

            <div class="modal fade" id="add_lead_form_modal" tabindex="1">
                <div class="modal-dialog modal-xl" role="document">
                    <div class="modal-content modal-content-demo">
                        <div class="modal-header">
                            <h3 class="modal-title" id="AddLeadHeading"></h3>
                            <button class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form id="lead_form" onsubmit="return false;">
                                <div class="row bg-white">

                                    <div class="col-sm-6 col-md-6 mb-3">
                                        <label for="recipient-name" class="col-form-label">Branch <span
                                                class="text-danger">*</span></label>
                                        <select class="select2 form-control select2-show-search"
                                            onchange="GetCenterUserDropDown(this.value)" name="Branch" id="Branch"
                                            style='width:100%;'>
                                            <option value="">Select Branch</option>
                                            <?php
                                            foreach($AllBranches as $Branch_value)
                                            {
                                                $selected = '';
                                                if($BranchID == $Branch_value['ID']){
                                                    $selected = 'selected';
                                                }

                                                if($BranchID == -1 || $BranchID == $Branch_value['ID'])
                                                {

                                            ?>
                                            <option <?php echo $selected; ?> value="<?php echo  $Branch_value['ID']?>">
                                                <?php echo  $Branch_value['BranchName']?></option>
                                            <?php
                                            }
                                            }
                                            ?>
                                        </select>
                                    </div>

                                    <div class="col-sm-6 col-md-6">
                                        <div class="form-group">
                                            <label class="form-label">Company Name </label>
                                            <input type="text" class="form-control" placeholder="Enter Company Name" name="CompanyName"
                                                id="CompanyName">
                                        </div>
                                    </div>

                                    <div class="col-sm-3 col-md-3">
                                        <div class="form-group">
                                            <label class="form-label">Type of Business <span class="text-danger">*</span></label>
                                            <select class="select2 form-control select2-show-search" name="BusinessName" id="BusinessName" style='width:100%;'>
                                                    <option value="">Select Business</option>
                                                    <?php
                                                    foreach($All_Business_Types as $All_Business_Types_value)
                                                    {

                                                    ?>
                                                    <option value="<?php echo  $All_Business_Types_value['ID']?>">
                                                        <?php echo  $All_Business_Types_value['BusinessName']?></option>
                                                    <?php
                                                    }
                                                    ?>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-sm-3 col-md-3">
                                        <div class="form-group">
                                            <label class="form-label">Services <span class="text-danger">*</span></label>
                                            <select class="select2 form-control select2-show-search" name="Services[]" id="Services" multiple style='width:100%;'>
                                                    <option value="">Select Services</option>
                                                    <?php
                                                    foreach($All_Services as $All_Services_value)
                                                    {

                                                    ?>
                                                    <option value="<?php echo  $All_Services_value['ID']?>">
                                                        <?php echo  $All_Services_value['ServiceName']?></option>
                                                    <?php
                                                    }
                                                    ?>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-sm-3 col-md-3">
                                        <div class="form-group">
                                            <label class="form-label">Budget </label>
                                            <input type="text" class="form-control" placeholder="Enter Service Cost" name="ServiceCost"
                                                id="ServiceCost">
                                        </div>
                                    </div>

                                    <div class="col-sm-3 col-md-3">
                                        <div class="form-group">
                                            <label class="form-label">Contact Person Name <span class="text-danger">*</span></label>
                                            <input type="tel" class="form-control" placeholder="Enter Name" name="ContactPersonName"
                                                id="ContactPersonName">
                                        </div>
                                    </div>


                                    <div class="col-sm-3 col-md-3">
                                        <div class="form-group">
                                            <label class="form-label">Contact Person Email </label>
                                            <input type="text" class="form-control" placeholder="Enter Email"
                                                name="ContactPersonEmail" id="ContactPersonEmail">
                                        </div>
                                    </div>

                                    <div class="col-sm-6 col-md-3">
                                        <div class="form-group">
                                            <label class="form-label">Contact Person Phone Number <span
                                                    class="text-danger">*</span></label>
                                            <input type="tel" maxlength="10" onkeyup="validISNumber()"
                                                class="form-control" placeholder="Enter Phone Number" name="ContactPersonPhoneNumber"
                                                id="ContactPersonPhoneNumber">
                                            <input type="hidden" id="primary_country_code" name="primary_country_code">
                                                <!-- <input maxlength="10" onkeyup="validISNumber()"
                                                class="form-control" placeholder="Enter Phone Number" name="ContactPersonPhoneNumber" id="phone1" type="tel"> -->
                                        </div>
                                    </div>
                                    <!-- <div class="col-sm-6 col-md-6 mb-3">
                                        <label for="recipient-name" class="col-form-label">State</label>

                                        <select id="State" class="select2 form-control select2-show-search" name="State"
                                            style='width:100%;'>
                                            <option value="">Select state</option>
                                            <option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands
                                            </option>
                                            <option value="Andhra Pradesh">Andhra Pradesh</option>
                                            <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                            <option value="Assam">Assam</option>
                                            <option value="Bihar">Bihar</option>
                                            <option value="Chandigarh">Chandigarh</option>
                                            <option value="Chhattisgarh">Chhattisgarh</option>
                                            <option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
                                            <option value="Daman and Diu">Daman and Diu</option>
                                            <option value="Delhi">Delhi</option>
                                            <option value="Goa">Goa</option>
                                            <option value="Gujarat">Gujarat</option>
                                            <option value="Haryana">Haryana</option>
                                            <option value="Himachal Pradesh">Himachal Pradesh</option>
                                            <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                                            <option value="Jharkhand">Jharkhand</option>
                                            <option value="Karnataka">Karnataka</option>
                                            <option value="Kerala">Kerala</option>
                                            <option value="Ladakh">Ladakh</option>
                                            <option value="Lakshadweep">Lakshadweep</option>
                                            <option value="Madhya Pradesh">Madhya Pradesh</option>
                                            <option value="Maharashtra">Maharashtra</option>
                                            <option value="Manipur">Manipur</option>
                                            <option value="Meghalaya">Meghalaya</option>
                                            <option value="Mizoram">Mizoram</option>
                                            <option value="Nagaland">Nagaland</option>
                                            <option value="Odisha">Odisha</option>
                                            <option value="Puducherry">Puducherry</option>
                                            <option value="Punjab">Punjab</option>
                                            <option value="Rajasthan">Rajasthan</option>
                                            <option value="Sikkim">Sikkim</option>
                                            <option value="Tamil Nadu">Tamil Nadu</option>
                                            <option value="Telangana">Telangana</option>
                                            <option value="Tripura">Tripura</option>
                                            <option value="Uttar Pradesh">Uttar Pradesh</option>
                                            <option value="Uttarakhand">Uttarakhand</option>
                                            <option value="West Bengal">West Bengal</option>
                                        </select>
                                    </div> -->

                                    <div class="col-sm-3 col-md-3">
                                        <div class="form-group">
                                            <label class="form-label">Contact Person Alternative No</label>
                                            <input type="tel"  maxlength="10" class="form-control" placeholder="Enter AlternativeNo" name="ContactPersonAlternativeNo"
                                                id="ContactPersonAlternativeNo">
                                            <input type="hidden" id="secondary_country_code" name="secondary_country_code">
                                        </div>
                                    </div>

                                    <div class="col-sm-3 col-md-3">
                                        <div class="form-group">
                                            <label class="form-label">Website</label>
                                            <input type="text" class="form-control" placeholder="Enter Website" name="Website"
                                                id="Website">
                                        </div>
                                    </div>

                                    <div class="col-sm-6 col-md-6">
                                        <div class="form-group">
                                            <label class="form-label">City or Address </label>
                                            <input type="text" class="form-control" placeholder="Enter City or Address"
                                                name="City" id="City">
                                        </div>
                                    </div>

                                    <!-- <div class="col-sm-6 col-md-6 mb-3">
                                        <label for="recipient-name" class="col-form-label">Mode</label>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="Mode" id="mode_online"
                                                value="Online" checked="true">
                                            <label class="form-check-label" for="mode_online">
                                                Online
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="Mode" id="mode_offline"
                                                value="Offline">
                                            <label class="form-check-label" for="mode_offline">
                                                Offline
                                            </label>
                                        </div>
                                    </div> -->


                                    <div class="col-sm-3 col-md-3 mb-3" id="assinged_to_div" style="display:none;">
                                        <div class="form-group">
                                            <label class="form-label">Assigned To <span
                                                    class="text-danger">*</span></label>
                                            <select class="select2 form-control select2-show-search" name="AssignedTo"
                                                id="AssignedTo" style='width:100%;'>
                                                <option value="">Select User</option>

                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-6 col-sm-3 mb-3">
                                        <label class="form-label">Lead Source <span class="text-danger">*</span></label>
                                        <select class="form-control" name="LeadSource"
                                            id="LeadSource" style='width:100%;'>
                                            <option value="">Select Lead Source</option>
                                            <?php

                                            foreach($All_Lead_Sources as $Lead_Source_value)
                                            {

                                            ?>
                                            <option value="<?php echo  $Lead_Source_value['SourceName']?>">
                                                <?php echo  $Lead_Source_value['SourceName']?></option>
                                            <?php

                                            }
                                            ?>
                                        </select>
                                    </div>

                                    <div class="mb-3 col-6 col-sm-3" id="">
                                        <label for="recipient-name" class="col-form-label">Lead Status <span
                                                class="text-danger">*<span></label>
                                        <select class="form-control" name="LeadStatus"
                                            id="LeadStatus" style='width:100%;'>
                                            <option value="">Select Status </option>
                                            <?php

                                        foreach($lead_status as $Status_value)
                                        {
                                            if($Status_value['Status'] == $FinalStatus)
                                            {
                                                continue;
                                            }
                                        ?>
                                            <option value="<?php echo  $Status_value['Status']?>">
                                                <?php echo  $Status_value['Status']?></option>
                                        <?php
                                         }
                                        ?>
                                        </select>
                                    </div>
                                    <div class="col-sm-3 col-md-3">
                                        <div class="form-group">
                                            <label class="form-label">Lead Date </label>
                                            <input type="date" class="form-control" placeholder="Select Lead Date" name="LeadDate"
                                                id="LeadDate">
                                        </div>
                                    </div>


                                    <input type="hidden" name='form_action' id='form_action' value='add'>
                                    <input type="hidden" name='form_id' id='form_id' value='-1'>
                                </div>
                                <div class="row pt-5 pb-5 justify-content-center">
                                    <div class="col-md-4 text-center">
                                        <a class="btn btn-success text-white" id="lead_form_btn"
                                            onclick="AddLead()">Submit</a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <!-- End End modal  -->





            <?php
         include("../navigation/right-side-navigation.php");
        ?>

        </div>

        <?php
       include("../include/common-script.php");
        ?>

         <!-- INTERNAL intlTelInput js-->
        <script src="../theme-assets/plugins/intl-tel-input-master/intlTelInput.js"></script>
        <script src="../theme-assets/plugins/intl-tel-input-master/country-select.js"></script>
        <!-- <script src="../theme-assets/plugins/intl-tel-input-master/utils.js"></script> -->

        <script src="../project-assets/js/manage-lead.js"></script>
        <script type="text/javascript">
        var param = "?BranchID=<?php echo $BranchID;?>"
        $(document).ready(function() {
            var i = 1;
            $('#all_leads').dataTable({
                responsive: true,
                'processing': true,
                'serverSide': true,
                'ordering': false,
                'serverMethod': 'post',
                'ajax': {
                    'url': 'ajax/view-all-lead_post.php'+param
                },
                'columnDefs': [{
                    "targets": [0],
                    "className": "text-center"
                }],
                "order": [
                    [1, 'asc']
                ],
                'columns': [{
                        "data": "id",
                        render: function(data, type, row, meta) {
                            return meta.row + meta.settings._iDisplayStart + 1;
                        }
                    },
                    <?php
                    if($UserType == "System Admin")
                    {
                    ?>
                    {
                        data: 'BranchID'
                    },
                    <?php
                    }
                    ?>
                    {
                        data: 'Services'
                    },
                    {
                        data: 'CompanyName_TypeofBusiness'
                    },
                    {
                        data: 'Mobile_Email'
                    },
                    {
                        data: 'ViewDetails'
                    },
                    {
                        data: 'Status'
                    },
                    {
                        data: 'AssignedTo'
                    },
                    {
                        data: 'Action'
                    }


                ]
            });
            GenerateLeadAnalytics();
        });

        $(document).ready(function() {
            $("#nav_manage_lead_li").css("display", "block");
            $("#nav_manage_lead_li").addClass("open");
            $("#nav_manage_lead").addClass("active");
            $("#nav_all_lead").addClass("active");
        });

        // $('.fc-datepicker').datepicker({
        //     locale: {
        //         format: 'YYYY-MM-DD'
        //     }
        // });
        // $('#filter_start_date').daterangepicker({
        //     locale: {
        //         format: 'YYYY-MM-DD'
        //     }
        // });
         // Get today's date in YYYY-MM-DD format
            const today = new Date();
            const yyyy = today.getFullYear();
            const mm = String(today.getMonth() + 1).padStart(2, '0'); // Months are 0-indexed
            const dd = String(today.getDate()).padStart(2, '0');

            const formattedDate = `${yyyy}-${mm}-${dd}`;

            // Set max attribute to disable future dates
            const leadDateInput = document.getElementById('LeadDate');
            leadDateInput.max = formattedDate;

            // Optional: set default value to today
            leadDateInput.value = formattedDate;

            initPhone("#ContactPersonPhoneNumber", "#primary_country_code");
            initPhone("#ContactPersonAlternativeNo", "#secondary_country_code");



        </script>
</body>

</html>