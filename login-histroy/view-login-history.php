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
    <title>View Login History - <?= $_ProductName ?></title>

    <?php
    include("../include/common-head.php");

    $dbh = new Dbh();
    $conn = $dbh->_connectodb();

    $authentication = new Authentication($conn);
    $UserType = $authentication->SessionCheck();

    $BranchID = -1;
    if (isset($_SESSION['BranchID'])) {
        $BranchID = $_SESSION['BranchID'];
    }

    $sessionObj = new Session($conn);
    $loginHistory = $sessionObj->GetAllLoginHistroy($conn, $BranchID);
    // 🔥 LAST TO FIRST
$loginHistory = array_reverse($loginHistory);
    ?>
</head>

<body class="app sidebar-mini ltr light-mode">
    <div class="page">
        <div class="page-main">

            <?php
            include("../navigation/top-header.php");
            include("../navigation/side-navigation.php");
            ?>

            <!-- app-content -->
            <div class="main-content app-content mt-0">
                <div class="side-app">

                    <div class="main-container container-fluid">

                        <!-- PAGE HEADER -->
                        <div class="page-header">
                            <h1 class="page-title">Login History</h1>
                            <div>
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item">
                                        <a href="../dashboard/admin-dashboard">Home</a>
                                    </li>
                                    <li class="breadcrumb-item active">Login History</li>
                                </ol>
                            </div>
                        </div>

                        <!-- TABLE -->
                        <div class="row row-sm">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">

                                        <div class="table-responsive">
                                            <table class="table table-bordered text-nowrap border-bottom"
                                                id="login-history">
                                                <thead>
                                                    <tr>
                                                        <th>#</th>
                                                        <th>Name</th>
                                                        <th>Email</th>
                                                        <th>User Type</th>
                                                        <th>IP Address</th>
                                                        <th>Login Time</th>
                                                        <th>Status</th>
                                                        <th>Location</th>
                                                    </tr>
                                                </thead>

                                                <tbody>
                                                    <?php
                                                    $i = 1;
                                                    foreach ($loginHistory as $row) {
                                                    ?>
                                                    <tr>
                                                        <td><?= $i++; ?></td>
                                                        <td><?= $row['Name']; ?></td>
                                                        <td><?= $row['Email']; ?></td>
                                                        <td><?= $row['UserType']; ?></td>
                                                        <td><?= $row['IPAddress']; ?></td>
                                                        <td><?= date("h:i A", strtotime($row['LoginTime'])); ?>
                                                        </td>
                                                        <td><?= date("d M Y", strtotime($row['LoginDate'])); ?>
                                                        </td>
                                                        <td class="text-center">
                                                            <a onclick="ViewIPLocation('<?= $row['IPAddress']; ?>')"
                                                                data-bs-toggle="tooltip"
                                                                data-bs-original-title="View Location">
                                                                <i
                                                                    class="fa fa-map-marker text-primary cursor-pointer"></i>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <?php } ?>
                                                </tbody>
                                            </table>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <?php include("../navigation/right-side-navigation.php"); ?>
            <?php include("../include/common-script.php"); ?>

            <script src="../project-assets/js/commonjs.js"></script>

            <script>
            $(document).ready(function() {
                $("#nav_login_history").addClass("active");
            });

            function ViewIPLocation(ip) {
                $.ajax({
                    url: "ajax/get-ip-location.php",
                    type: "POST",
                    data: {
                        ip: ip
                    },
                    success: function(res) {
                        $("#ipLocationModalBody").html(res);
                        $("#ipLocationModal").modal("show");
                    }
                });
            }
            </script>

            <!-- LOCATION MODAL -->
            <div class="modal fade" id="ipLocationModal">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">IP Location</h5>
                            <button class="btn-close" data-bs-dismiss="modal"></button>
                        </div>
                        <div class="modal-body" id="ipLocationModalBody"></div>
                    </div>
                </div>
            </div>

</body>

</html>