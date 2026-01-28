<?php
class Session extends Core
{
	private $conn;
	public function __construct($conn)
	{
		$this->conn = $conn;
		$this->setTimeZone();
	}


	// public function SessionCheck_redirect()
	// {
	// 	@session_start();

	// 	$current_device_id = hash('sha256', $_SERVER['HTTP_USER_AGENT'] . ($_SERVER['HTTP_ACCEPT_LANGUAGE'] ?? ''));

	// 	if (isset($_SESSION['pp_UserType'])) {
	// 		if (!isset($_SESSION['pp_DeviceID']) || $_SESSION['pp_DeviceID'] !== $current_device_id) {
	// 			session_destroy();
	// 			die("Access denied: Device mismatch.");
	// 		}
	// 		return $_SESSION['pp_UserType'];
	// 	}

	// 	// fallback to cookies
	// 	if (isset($_COOKIE['pp_UserType']) && isset($_COOKIE['pp_DeviceID'])) {
	// 		if ($_COOKIE['pp_DeviceID'] !== $current_device_id) {
	// 			die("Access denied: Unknown device.");
	// 		}
	// 		$_SESSION['pp_email']      = $_COOKIE['pp_email'];
	// 		$_SESSION['pp_UserType']   = $_COOKIE['pp_UserType'];
	// 		$_SESSION['pp_DeviceID']   = $_COOKIE['pp_DeviceID'];
	// 		$_SESSION['BranchID'] = $_SESSION['BranchID'];
	// 		return $_SESSION['pp_UserType'];
	// 	}

	// 	// redirect to login
	// 	if(file_exists("../login"))
	// 		header('Location: ../admin/authentication/login.php');
	// 	else
	// 		header('Location: ../../admin/authentication/login.php');

	// 	exit();
	// }

	// private function generateDeviceId()
	// {
	// 	return hash(
	// 		'sha256',
	// 		$_SERVER['HTTP_USER_AGENT'] .
	// 		($_SERVER['HTTP_ACCEPT_LANGUAGE'] ?? '')
	// 	);
	// }



	public function SessionCheck_redirect()
	{
		@session_start();
		if(isset($_SESSION['pp_UserType']))
		{
			return $_SESSION['pp_UserType'];
		}
		else
		{
			if(isset($_COOKIE['pp_UserType']))
			{
				$_SESSION['pp_email'] = $_COOKIE['pp_email'];
				$_SESSION['pp_UserType'] = $_COOKIE['pp_UserType'];
				return $_SESSION['UserType'];
			}
			else
			{
				if(file_exists("../login"))
					header('Location: ../admin/authentication/login.php');
				else
					header('Location:../../admin/authentication/login.php');
			}
		}
	}

	public function GetAllLoginHistroy($conn, $BranchID = -1)
	{
		$BranchID = (int)$BranchID;

		$where = "
			INNER JOIN user_details u ON u.ID = login_history.UserID
			WHERE 1
		";

		if ($BranchID != -1) {
			$where .= " AND u.BranchID = ".$BranchID;
		}

		// ❌ DO NOT ADD ORDER BY HERE
		return $this->_getTableRecords($conn, "login_history", $where);
	}

}