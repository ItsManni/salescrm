<?php
// Enable error reporting
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
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
    .chart-container {
        position: relative;
        height: 275px;
        /* This ensures both charts have the same height */
        width: 100%;
        /* Make the chart take the full width of its container */
        box-sizing: border-box;
    }

    .card {
        display: flex;
        flex-direction: column;
        height: 100%;
    }

    .card-body {
        flex: 1;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .table th,
    .text-wrap table th {
        text-transform: none !important;
    }

    .table {
        border-collapse: collapse;
        width: 100%;
    }

    .table td {
        border: 1px solid black;
        padding: 8px;
        text-align: left;
    }

    .table th {
        background-color: #f2f2f2;
    }

    .table-container {
        position: relative;
        overflow-x: auto;
        width: 100%;
    }

    .fixed-column th,
    .fixed-column td {
        position: -webkit-sticky;
        /* for Safari */
        position: sticky;
        left: 0;
        background-color: #fff;
        z-index: 1;
    }

    .fixed-column th {
        z-index: 2;
    }
    </style>
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <!-- TITLE -->
    <title>Leads Analytics - <?= $_ProductName ?> Portal</title>
    <?php
    include("../include/common-head.php");
    $dbh = new Dbh();
    $conn = $dbh->_connectodb();
    $authentication = new Authentication($conn);
    $UserType = $authentication->SessionCheck();
    $IMSSetting = new IMSSetting($conn);
    $User_ID = $_SESSION['UserID'];
    $BranchID = -1;
     if(isset($_SESSION['BranchID']))
    {
        $BranchID = $_SESSION['BranchID'];
    }
    if(isset($_GET['center']))
    {
        $BranchID = $_GET['center'];
    }


    $leadSourceAnalytics = $IMSSetting->GetLeadSourceVsConversion();
    $analyticsObj = new LeadAnalytics($conn);


    $bdePerformance = $analyticsObj->GetBDEPerformanceDetailed();
    // Calculate total summary
    $totalLeadsAll = array_sum(array_column($bdePerformance,'total_leads'));
    $convertedAll = array_sum(array_column($bdePerformance,'converted_leads'));
    $followupsAll = array_sum(array_column($bdePerformance,'followups'));
    $reassignAll = array_sum(array_column($bdePerformance,'reassignments'));
    ?>

</head>

<body class="app sidebar-mini ltr light-mode">
    <div class="page">
        <div class="page-main">
            <?php
            include("../navigation/top-header.php");
            ?>

            <?php
            include("../navigation/side-navigation.php");
            ?>

            <!--app-content open-->
            <div class="main-content app-content mt-0">
                <div class="side-app">
                    <!-- CONTAINER -->
                    <div class="main-container container-fluid">
                        <!-- PAGE-HEADER -->
                        <div class="page-header">
                            <!-- <h1 class="page-title">DigitalWorkDesk Dashboard</h1> -->
                            <div>
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Lead Analytics</li>
                                </ol>
                            </div>
                        </div>


                        <!-- <div class="row bg-white">

                                <div class="card">
                                    <div class="card-header">
                                        <h3 class="card-title">BDE Activity (Last 50)</h3>
                                    </div>
                                    <div class="card-body d-block">
                                        <div class="row">
                                            <form id="bde_filter_form" class='w-100 col-12'>
                                                <input type="hidden" name="BranchID" value="1">
                                                <div class="row mb-3">
                                                    <div class="col-md-6">
                                                        <label for="bdeSelect" class="form-label">Select BDE:</label>
                                                        <select id="bdeSelect" name="BDEID" class="form-select">
                                                        </select>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>

                                        <div class="row">
                                            <div id="bde_activity_table" class='bg-white col-12'></div>
                                        </div>


                                    </div>
                                </div>


                            </div> -->

                        <div class="row bg-white">
                            <div class="card">
                                <div class="card-header">
                                    <h3 class="card-title">BDE Activity (Last 50)</h3>
                                </div>
                                <div class="card-body d-block">
                                    <div class="row">
                                        <form id="bde_filter_form" class='w-100 col-12'>
                                            <input type="hidden" name="BranchID" value="1"> <!-- example branch -->
                                            <div class="row mb-3 align-items-end">
                                                <!-- BDE Selection -->
                                                <div class="col-md-4">
                                                    <label for="bdeSelect" class="form-label">Select BDE:</label>
                                                    <select id="bdeSelect" name="BDEID" class="form-select">
                                                    </select>
                                                </div>

                                                <!-- Start Date Input -->
                                                <div class="col-md-3">
                                                    <label for="filter_start_date" class="form-label">Start
                                                        Date:</label>
                                                    <input type="date" class="form-control fc-datepicker"
                                                        id="filter_start_date" name="filter_start_date"
                                                        placeholder="Start Date">
                                                </div>

                                                <!-- End Date Input -->
                                                <div class="col-md-3">
                                                    <label for="filter_end_date" class="form-label">End Date:</label>
                                                    <input type="date" class="form-control fc-datepicker"
                                                        id="filter_end_date" name="filter_end_date"
                                                        placeholder="End Date">
                                                </div>

                                                <!-- Clear Action Button -->
                                                <div class="col-md-2">
                                                    <button type="button" id="btnClearFilters"
                                                        class="btn btn-outline-danger w-100">Clear Filters</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>

                                    <div class="row">
                                        <div id="bde_activity_table" class='bg-white col-12'></div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>


            <?php
            include("../navigation/right-side-navigation.php");
            ?>
        </div>
        <?php
        include("../include/common-script.php");
        ?>
        <script>
        $(document).ready(function() {
            $("#nav_manage_lead_li").css("display", "block");
            $("#nav_manage_lead_li").addClass("open");
            $("#nav_manage_lead").addClass("active");
            $("#view_bde_remark_activity").addClass("active");
        });

        </script>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <script>
        function GenerateBDEActivity() {
            var bdeValue = $("#bdeSelect").val();
            var startDate = $("#filter_start_date").val();
            var endDate = $("#filter_end_date").val();

            // Guard: If no BDE is selected, stop here
            if (!bdeValue) {
                $("#bde_activity_table").html(
                    '<p class="text-center text-muted py-4">Please select a BDE executive above to look up analytics history.</p>'
                    );
                return;
            }

            // Guard: If one date is chosen but the other is empty, wait for the user to finish
            if ((startDate !== "" && endDate === "") || (startDate === "" && endDate !== "")) {
                return;
            }

            // Show a clean loading state
            $("#bde_activity_table").html(`
                <div class="text-center py-5">
                    <div class="spinner-border text-primary" role="status"><span class="visually-hidden">Loading...</span></div>
                    <p class="mt-2 text-secondary small mb-0">Processing data filters...</p>
                </div>
            `);

            $.ajax({
                url: "ajax/get-bde-activity.php",
                type: "POST",
                data: $("#bde_filter_form").serialize(),
                success: function(data) {
                    $("#bde_activity_table").html(data);
                },
                error: function(xhr, status, error) {
                    console.error("AJAX Error: ", error);
                    $("#bde_activity_table").html(
                        '<p class="text-center text-danger py-4">Error loading activity data.</p>');
                }
            });
        }

        // Populate BDE dropdown on page load
        $.ajax({
            url: "ajax/get_loggedin_bde_dropdown.php",
            type: "POST",
            data: {
                BranchID: 1
            },
            success: function(data) {
                $("#bdeSelect").html('<option value="">-- Choose Executive --</option>' + data);
            }
        });

        // Event Triggers
        $(document).ready(function() {
            $("#bdeSelect").on("change", function() {
                GenerateBDEActivity();
            });

            $("#filter_start_date, #filter_end_date").on("change", function() {
                GenerateBDEActivity();
            });

            // Reset date picker values and refresh standard feed
            $("#btnClearFilters").on("click", function() {
                $("#filter_start_date").val("");
                $("#filter_end_date").val("");
                GenerateBDEActivity();
            });
        });
        </script>
</body>

</html>