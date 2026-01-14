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


            <?php
         include("../navigation/right-side-navigation.php");
        ?>

        </div>

        <?php
       include("../include/common-script.php");
        ?>

        <script src="../project-assets/js/convert-lead.js"></script>
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
                    'url': 'ajax/view-all-convert-lead_post.php'+param
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
            $("#nav_convert").addClass("active");
        });




        </script>
</body>

</html>