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
    $BranchID = -1;
     if(isset($_SESSION['BranchID']))
    {
        $BranchID = $_SESSION['BranchID'];
    }
    if(isset($_GET['center']))
    {
        $BranchID = $_GET['center'];
    }

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
                            <?php
                            $IMSSetting = new IMSSetting($conn);
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
                            <div class="row">
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
        $("#dasboard").addClass("open");
        $("#dasboard").addClass("active");

        </script>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
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
        </script>
</body>

</html>