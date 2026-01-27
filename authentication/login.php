<?php
require_once('../include/autoloader.inc.php');

// ===== IP RESTRICTION =====
$allowed_ips = [
    '122.161.52.24',
    '122.161.52.54',
    '122.161.49.95',
    '49.36.187.103',
    '::1'
];

// Function to get the first two octets of an IP
function get_first_two_octets($ip) {
    $parts = explode('.', $ip);
    return $parts[0] . '.' . $parts[1];
}

// Get visitor IP
$visitor_ip = $_SERVER['REMOTE_ADDR'];
$visitor_prefix = get_first_two_octets($visitor_ip);

// Check if visitor is allowed
$allowed = false;
foreach ($allowed_ips as $ip) {
    if (get_first_two_octets($ip) === $visitor_prefix) {
        $allowed = true;
        break;
    }
}

if (!$allowed) {
    // Denied → show JS alert and stop page
    echo "<script>
        alert('Access denied. You must be connected to the home Wi-Fi to access this site.\\nYour IP: $visitor_ip');
        window.location.href = 'about:blank';
    </script>";
    exit();
}
// ===== END IP RESTRICTION =====


$conf = new Conf();
$_ProductName = $conf->_ProductName;
$_ProductLogo = $conf->_ProductLogo;
?>
<!doctype html>
<html lang="en" dir="ltr">

<head>
    <!-- META DATA -->
    <meta charset="UTF-8">
    <meta name='viewport' content='width=device-width, initial-scale=1.0, user-scalable=0'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <title><?= $_ProductName ?> Portal Login</title>
    <?php
        include("../include/common-head.php");
        $dbh = new Dbh();
        $conn = $dbh->_connectodb();
        $authentication = new Authentication($conn);

        $session = new Session($conn);
        // $UserType = $session->SessionCheck_redirect();

        if($UserType !== false)
        {
            if($UserType == "System Admin")
            {
                header("Location:../dashboard/admin-dashboard");
            }
            if($UserType == "BDE")
            {
                header("Location:../dashboard/admin-dashboard");
            }
            if($UserType == "Center Manager")
            {
                header("Location:../dashboard/admin-dashboard");
            }
        }
    ?>

    <style>
    font,
    br {
        display: none;
    }
    </style>

</head>

<body class="app sidebar-mini ltr login-img">

    <!-- BACKGROUND-IMAGE -->
    <div class="">
        <div id="global-loader">
            <div class="d-flex align-items-center w-100 h-100">
                <div class="spinner2">
                    <div class="cube1"></div>
                    <div class="cube2"></div>
                </div>
            </div>
        </div>

        <!-- PAGE -->
        <div class="page">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-12 bg-white p-6">
                        <form class="login100-form validate-form" id="form-login">
                            <div class="text-center login_logo">
                                <a href="index.html"><img src="../project-assets/images/bw2.png" class="header-brand-img" alt=""
                                        style="width:150px; margin-bottom:20px;"></a>
                            </div>
                            <span class="login100-form-title pb-5">
                                Login
                            </span>
                            <div class="wrap-input100 validate-input input-group pt-3">
                                <a href="javascript:void(0)" class="input-group-text bg-white text-muted">
                                    <i class="zmdi zmdi-email text-muted" aria-hidden="true"></i>
                                </a>
                                <input class="input100 border-start-0 form-control ms-0" type="Text"
                                    placeholder="Enter Email" name="email" id="email">
                            </div>
                            <div class="wrap-input100 validate-input input-group pt-5" id="Password-toggle">
                                <a href="javascript:void(0)" class="input-group-text bg-white text-muted">
                                    <i class="zmdi zmdi-eye text-muted" aria-hidden="true"></i>
                                </a>
                                <input class="input100 border-start-0 form-control ms-0" type="password"
                                    placeholder="Enter Password" name="password" id="password">
                            </div>
                            <div class="container-login100-form-btn">
                                <a onclick="login();" id="login_btn" class="login100-form-btn btn-primary cursor-pointer">
                                    Login
                                </a>
                            </div>
                        </form>
                    </div>
                    <div class="col-lg-8 col-md-6 col-12 p-6" style="background:#13ad99;">
                        <div class="d-flex align-items-center">
                            <img src="../project-assets/images/login-3.png" class="w-100" alt="">
                        </div>
                    </div>
                </div>
                <!-- CONTAINER CLOSED -->
            </div>
        </div>
        <!-- End PAGE -->
    </div>
    <!-- BACKGROUND-IMAGE CLOSED -->

    <?php
       include("../include/common-script.php");
    ?>
    <script src="../project-assets/js/login.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.4.0/jquery.min.js"
        integrity="sha512-e4WJV+b4BBNgVWODO1v6KU6xbZRf/9acSAWSc9B+q/OiSXt6Q3MPhxPOntoGGfA+zQPbnYjhXwWIuX4PPZCtzw=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- SHOW PASSWORD JS -->
    <script src="../theme-assets/js/show-password.min.js"></script>
    <script>
    // Trigger login on Enter key
    var Submit_input = document.getElementById("email");
    var Submit_inputpassword = document.getElementById("password");
    var Submit_btn = document.getElementById("login_btn");

    [Submit_input, Submit_inputpassword, Submit_btn].forEach(function(elem){
        elem.addEventListener("keypress", function(event) {
            if (event.key === "Enter") {
                event.preventDefault();
                document.getElementById("login_btn").click();
            }
        });
    });
    </script>
</body>

</html>
