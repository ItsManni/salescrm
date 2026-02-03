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
            height: 275px; /* This ensures both charts have the same height */
            width: 100%;   /* Make the chart take the full width of its container */
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
        .table th, .text-wrap table th
        {
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
            position: -webkit-sticky; /* for Safari */
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
                            <?php
                            $all_lead_status = $IMSSetting->GetAllLeadStatus();
                            $default_status = "";
                            $final_status = "";
                            $not_interested_status = "";
                            $other_status_array = array();
                            foreach($all_lead_status as $lead_status)
                            {
                                if($lead_status['DefaultStatus'] == 1)
                                {
                                    $default_status = $lead_status['Status'];
                                }
                                else if($lead_status['NotInterestedStatus'] == 1)
                                {
                                    $not_interested_status = $lead_status['Status'];
                                }
                                else if($lead_status['FinalStatus'] == 1)
                                {
                                    $final_status = $lead_status['Status'];
                                }
                                else
                                {
                                    array_push($other_status_array,$lead_status['Status']);
                                }

                            }

                            $lead_obj = new ManageLead($conn);
                            $grouped_status_array = $lead_obj->GetGroupedStatusandAssignment($BranchID);
                            //print_r($grouped_status_array);

                            $user = new Users($conn);
                            $all_counsellor_details = $user->getAllCounsellorByBranchID($BranchID);

                            $counsellor_display_status = array();
                            foreach($all_counsellor_details as $counsellor)
                            {

                                $CounsellorID = $counsellor['ID'];
                                $counsellor_display_status[$CounsellorID]['Name'] = $counsellor['Name'];
                                //echo $counsellor['Name']."<br>";
                                foreach($all_lead_status as $status)
                                {
                                    //echo "|".$status['Status'];
                                    $Status = $status['Status'];
                                    if(isset($grouped_status_array[$CounsellorID][$Status]))
                                    {
                                        $counsellor_display_status[$CounsellorID][$Status] = $grouped_status_array[$CounsellorID][$Status];
                                    }
                                    else
                                    {
                                        $counsellor_display_status[$CounsellorID][$Status] = 0;
                                    }
                                   // echo "|".$counsellor_display_status[$CounsellorID][$Status];
                                }
                                //echo "<br>";
                            }


                            ?>

                            <div class='bg-white p-4' style="width:100%; margin:auto; text-align:center;">
                                <h2>BDE Performance & Activity Dashboard</h2>

                                <!-- KPI Cards -->
                                <div style="display:flex; justify-content:space-around; margin:20px 0;">
                                    <div style="background:#36A2EB; color:white; padding:20px; border-radius:10px; width:20%;">
                                        <h4>Total Leads</h4>
                                        <h2><?php echo $totalLeadsAll; ?></h2>
                                    </div>
                                    <div style="background:#4BC0C0; color:white; padding:20px; border-radius:10px; width:20%;">
                                        <h4>Converted Leads</h4>
                                        <h2><?php echo $convertedAll; ?></h2>
                                    </div>
                                    <div style="background:#FFCE56; color:white; padding:20px; border-radius:10px; width:20%;">
                                        <h4>Follow-ups Done</h4>
                                        <h2><?php echo $followupsAll; ?></h2>
                                    </div>
                                    <div style="background:#FF6384; color:white; padding:20px; border-radius:10px; width:20%;">
                                        <h4>Reassignments</h4>
                                        <h2><?php echo $reassignAll; ?></h2>
                                    </div>
                                </div>

                                <!-- Stacked Bar Chart -->
                                <div style="margin-top:40px;">
                                    <canvas id="bdeChart" style="height:400px;"></canvas>
                                </div>
                            </div>

                            <!-- <div class="row">
                                <div class="col-xl-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h3 class="card-title">Counsellor wise Analytics (Tabular View)</h3>
                                        </div>
                                        <div class="card-body">

                                            <div class="table-responsive table-container">
                                                <table class="table border text-nowrap text-md-nowrap table-hover mb-0">
                                                    <thead>
                                                        <tr>
                                                            <th class="fixed-column">Name</th>
                                                            <?php
                                                            if($default_status != "")
                                                            {
                                                                echo "<th>".$default_status."</th>";
                                                            }
                                                            foreach($other_status_array as $other_status)
                                                            {
                                                                 echo "<th>".$other_status."</th>";
                                                            }
                                                            if($not_interested_status != "")
                                                            {
                                                                echo "<th>".$not_interested_status."</th>";
                                                            }
                                                            if($final_status != "")
                                                            {
                                                                echo "<th>".$final_status."</th>";
                                                            }
                                                            ?>

                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <?php

                                                        foreach($counsellor_display_status as $CounsellorID=>$c_status)
                                                        {

                                                            echo "<tr>";
                                                            echo "<td class='fixed-column'>".$counsellor_display_status[$CounsellorID]['Name']."</td>";
                                                            echo "<td>".$counsellor_display_status[$CounsellorID][$default_status]."</td>";
                                                            foreach($other_status_array as $other_status)
                                                            {
                                                               echo "<td>".$counsellor_display_status[$CounsellorID][$other_status]."</td>";
                                                            }
                                                            echo "<td>".$counsellor_display_status[$CounsellorID][$not_interested_status]."</td>";
                                                            echo "<td>".$counsellor_display_status[$CounsellorID][$final_status]."</td>";
                                                            echo "</tr>";

                                                        }
                                                        ?>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> -->

                            <div class="table-responsive">
                                <table class="table table-bordered table-hover text-nowrap">
                                    <thead class="table-light">
                                        <tr>
                                            <th>Name</th>
                                            <th>Total Leads</th>

                                            <?php if ($default_status != "") { ?>
                                                <th><?= $default_status ?></th>
                                            <?php } ?>

                                            <?php if ($not_interested_status != "") { ?>
                                                <th><?= $not_interested_status ?></th>
                                            <?php } ?>

                                            <?php if ($final_status != "") { ?>
                                                <th><?= $final_status ?></th>
                                            <?php } ?>

                                            <th>Details</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <?php foreach ($counsellor_display_status as $CounsellorID => $data) {

                                            // Calculate total leads
                                            $total_leads = 0;
                                            foreach ($data as $key => $value) {
                                                if ($key !== 'Name') {
                                                    $total_leads += (int)$value;
                                                }
                                            }
                                        ?>
                                            <tr>
                                                <td class="bg-white"><?= $data['Name'] ?></td>
                                                <td class="bg-white"><strong><?= $total_leads ?></strong></td>

                                                <?php if ($default_status != "") { ?>
                                                    <td class="bg-white"><?= $data[$default_status] ?></td>
                                                <?php } ?>

                                                <?php if ($not_interested_status != "") { ?>
                                                    <td class="bg-white"><?= $data[$not_interested_status] ?></td>
                                                <?php } ?>

                                                <?php if ($final_status != "") { ?>
                                                    <td class="bg-white"><?= $data[$final_status] ?></td>
                                                <?php } ?>

                                                <td class="bg-white">
                                                    <button class="btn btn-sm btn-outline-primary"
                                                            data-bs-toggle="collapse"
                                                            data-bs-target="#details<?= $CounsellorID ?>">
                                                        View
                                                    </button>
                                                </td>
                                            </tr>

                                            <!-- Collapsible row -->
                                            <tr class="collapse bg-white" id="details<?= $CounsellorID ?>">
                                                <td colspan="6">
                                                    <strong>Other Status Breakdown:</strong>
                                                    <div class="row mt-2">
                                                        <?php foreach ($other_status_array as $status) { ?>
                                                            <div class="col-md-3 mb-2">
                                                                <?= $status ?> :
                                                                <strong><?= $data[$status] ?></strong>
                                                            </div>
                                                        <?php } ?>
                                                    </div>
                                                </td>
                                            </tr>

                                        <?php } ?>
                                    </tbody>
                                </table>
                            </div>



                            <div class="card">
                                <div class="card-header">
                                    <h3 class="card-title">Lead Source vs Conversion</h3>
                                </div>

                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-hover">
                                            <thead class="table-light">
                                                <tr>
                                                    <th>Lead Source</th>
                                                    <th>Total Leads</th>
                                                    <th>Converted</th>
                                                    <th>Conversion %</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php foreach ($leadSourceAnalytics as $row) { ?>
                                                <tr>
                                                    <td><?= htmlspecialchars($row['lead_source']) ?></td>
                                                    <td><?= $row['total_leads'] ?></td>
                                                    <td><?= $row['converted_leads'] ?></td>
                                                    <td>
                                                        <strong><?= $row['conversion_percentage'] ?>%</strong>
                                                    </td>
                                                </tr>
                                                <?php } ?>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-7 col-md-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h3 class="card-title">Leads (Last 7 days)</h3>
                                        </div>
                                        <div class="card-body">
                                            <div class="chart-container">
                                                <canvas id="leadChart" class="h-275" width="722" height="275" style="display: block; box-sizing: border-box; height: 275px; width: 722px;"></canvas>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-5 col-md-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h3 class="card-title">Lead Status</h3>
                                        </div>
                                        <div class="card-body">
                                            <div class="chart-container">
                                                <canvas id="leadStatusChart" class="h-275" width="722" height="275" style="display: block; box-sizing: border-box; height: 275px; width: 722px;"></canvas>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="row bg-white">

                                <div class="card">
                                    <div class="card-header">
                                        <h3 class="card-title">BDE Activity (Last 20)</h3>
                                    </div>
                                    <div class="card-body d-block">
                                        <div class="row">
                                            <form id="bde_filter_form" class='w-100 col-12'>
                                                <input type="hidden" name="BranchID" value="1"> <!-- example branch -->
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


                            </div>


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
        <script>
        $("#nav_lead_analytics").addClass("active");

        </script>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <script src="../project-assets/js/analytics.js"></script>
        <script>
          $.post("ajax/get-leads-data.php",
          {
            BranchID:<?php echo $BranchID; ?>
          },
          function (data, status)
          {
             response_data = JSON.parse(data);
             const ctx = document.getElementById('leadChart');
             new Chart(ctx, {
                type: 'bar',
                data: {
                  labels: response_data.chart_data.data_labels,
                  datasets: [{
                    label: 'Lead Count',
                    data: response_data.chart_data.data,
                    borderWidth: 1,
                    backgroundColor: '#016064'
                  }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                      scales: {
                        y: {
                          beginAtZero: true
                        }
                      }
                    }
              });
            });

          $.post("ajax/get-lead-status-data.php",
          {
            BranchID:<?php echo $BranchID; ?>
          },
          function (data, status)
          {
              response_data = JSON.parse(data);
              const ctx = document.getElementById('leadStatusChart');
              console.log(response_data.chart_data.data_labels);
              new Chart(ctx, {
                type: 'pie',
                data: {
                  labels: response_data.chart_data.data_labels,
                  datasets: [{
                    label: 'Count',
                    data: response_data.chart_data.data,
                    backgroundColor:response_data.chart_data.data_label_color
                  }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    plugins: {
                      legend: {
                        position: 'right',
                      },
                      title: {
                        display: true,
                        text: 'Status'
                      }
                    }
                }
              });
            });

            const bdeLabels = <?php echo json_encode(array_column($bdePerformance,'bde_name')); ?>;
            const bdeTotal = <?php echo json_encode(array_column($bdePerformance,'total_leads')); ?>;
            const bdeConverted = <?php echo json_encode(array_column($bdePerformance,'converted_leads')); ?>;
            const bdeFollowups = <?php echo json_encode(array_column($bdePerformance,'followups')); ?>;
            const bdeReassign = <?php echo json_encode(array_column($bdePerformance,'reassignments')); ?>;

            new Chart(document.getElementById('bdeChart'), {
                type: 'bar',
                data: {
                    labels: bdeLabels,
                    datasets: [
                        { label: 'Converted', data: bdeConverted, backgroundColor: '#4BC0C0' },
                        { label: 'Follow-ups', data: bdeFollowups, backgroundColor: '#FFCE56' },
                        { label: 'Reassignments', data: bdeReassign, backgroundColor: '#FF6384' },
                        { label: 'Remaining Leads',
                        data: bdeTotal.map((t,i)=> t - bdeConverted[i] - bdeFollowups[i] - bdeReassign[i]),
                        backgroundColor: '#36A2EB'
                        }
                    ]
                },
                options: {
                    responsive: true,
                    plugins: { legend: { position: 'top' } },
                    scales: { x: { stacked: true }, y: { stacked: true, beginAtZero:true } }
                }
            });
            </script>
</body>

</html>