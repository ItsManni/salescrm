<?php
class Authentication extends Core
{
	private $conn;
	public function __construct($conn)
	{
		$this->conn = $conn;
		$this->setTimeZone();
	}

	// public function login($data)
	// {
	// 	$email = trim($data['email']);
	// 	$password = $data['password'];

	// 	$response = ['error' => true, 'message' => 'Invalid login'];

	// 	// Validate email
	// 	if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
	// 		$response['message'] = "Please enter a valid email address";
	// 		return $response;
	// 	}

	// 	// Fetch user from table `users`
	// 	$stmt = $this->conn->prepare("SELECT ID, Password, UserType, DeviceID, IsActive FROM users WHERE Email=? LIMIT 1");
	// 	$stmt->bind_param("s", $email);
	// 	$stmt->execute();
	// 	$user = $stmt->get_result()->fetch_assoc();

	// 	if (!$user) {
	// 		$response['message'] = "User not found";
	// 		return $response;
	// 	}

	// 	// Check if user is active
	// 	if ($user['IsActive'] != 1) {
	// 		$response['message'] = "Your account is inactive. Contact admin.";
	// 		return $response;
	// 	}

	// 	// Verify password
	// 	if (md5($password) !== $user['Password']) {
	// 		$response['message'] = "Incorrect password";
	// 		return $response;
	// 	}

	// 	// Generate device ID
	// 	$device_id = hash('sha256', $_SERVER['HTTP_USER_AGENT'] . ($_SERVER['HTTP_ACCEPT_LANGUAGE'] ?? ''));

	// 	// First login → save DeviceID
	// 	if (empty($user['DeviceID'])) {
	// 		$update = $this->conn->prepare("UPDATE users SET DeviceID=? WHERE ID=?");
	// 		$update->bind_param("si", $device_id, $user['ID']);
	// 		$update->execute();
	// 	}
	// 	// Device mismatch → deny login
	// 	elseif ($user['DeviceID'] !== $device_id) {
	// 		$response['message'] = "Access denied: This account is locked to another device.";
	// 		return $response;
	// 	}

	// 	// Set session and cookies for 1 day
	// 	ini_set('session.gc_maxlifetime', 86400); // 24 hours
	// 	session_set_cookie_params(86400); // 24 hours
	// 	session_start();

	// 	$_SESSION['pp_user_id']    = $user['ID'];
	// 	$_SESSION['pp_email']      = $email;
	// 	$_SESSION['pp_UserType']   = $user['UserType'];
	// 	$_SESSION['pp_DeviceID']   = $device_id;
	// 	$_SESSION['BranchID']   = $user['BranchID'];

	// 	setcookie("pp_user_id", $user['ID'], time() + 86400, "/");
	// 	setcookie("pp_DeviceID", $device_id, time() + 86400, "/");

	// 	$response['error'] = false;
	// 	$response['UserType'] = $user['UserType'];
	// 	$response['message'] = "Login successful";

	// 	return $response;
	// }


	public function login($data)
	{
		$response = array();
		$email = $data['email'];
		$password = $data['password'];
		$password_hash = md5($password);
		$filter = " where Email = '$email' and Password = '$password_hash' and IsActive = 1";
		$num_rows = $this->_getTotalRows($this->conn,'users', $filter);
		if($num_rows > 0)
		{
			$row = $this->_getTableDetails($this->conn,'users',$filter);
			$response['UserType'] = $data['UserType'] = $row['UserType'];
			$data['BranchID'] = $row['BranchID'];
			$filter_user_detail = " where Email = '$email'";
			$row_user_detail = $this->_getTableDetails($this->conn,'user_details',$filter_user_detail);
			$data['UserID'] = $row_user_detail['ID'];
			$response['error'] = false;
			$response['message'] = "User authenticated";
			$this->SessionStart($data);

			// ✅ INSERT LOGIN HISTORY USING EXISTING HELPER
			$LoginDate = date('Y-m-d');
			$LoginTime = date('H:i:s');
			$IPAddress = $_SERVER['REMOTE_ADDR'];
			$CreatedDate = date('Y-m-d');
			$CreatedTime = date('H:i:s');

			$sql = "INSERT INTO login_history (UserID, LoginDate, LoginTime, IPAddress, CreatedDate, CreatedTime)
					VALUES ('".$data['UserID']."','$LoginDate','$LoginTime','$IPAddress','$CreatedDate','$CreatedTime')";

			$response_insert_login_history = $this->_InsertTableRecords($this->conn, $sql);

		}
		else
		{
			$response['error'] = true;
			$response['message'] = "Invalid Credentials, Please try again with valid credentials";
		}
		return $response;
	}


	// public function login($data)
	// {
	// 	$response = array();
	// 	$email = $data['email'];
	// 	$password = $data['password'];
	// 	$password_hash = md5($password);
	// 	$filter = " where Email = '$email' and Password = '$password_hash' and IsActive = 1";
	// 	$num_rows = $this->_getTotalRows($this->conn,'users', $filter);
	// 	if($num_rows > 0)
	// 	{
	// 		$row = $this->_getTableDetails($this->conn,'users',$filter);
	// 		$response['UserType'] = $data['UserType'] = $row['UserType'];
	// 		$data['BranchID'] = $row['BranchID'];
	// 		$filter_user_detail = " where Email = '$email'";
	// 		$row_user_detail = $this->_getTableDetails($this->conn,'user_details',$filter_user_detail);
	// 		$data['UserID'] = $row_user_detail['ID'];
	// 		$response['error'] = false;
	// 		$response['message'] = "User authenticated";
	// 		$this->SessionStart($data);
	// 	}
	// 	else
	// 	{
	// 		$response['error'] = true;
	// 		$response['message'] = "Invalid Credentials, Please try again with valid credentials";
	// 	}
	// 	return $response;
	// }

	public function SessionStart($data)
	{
		@session_start();

		$_SESSION['pp_email']    = $data['email'];
		$_SESSION['pp_UserType'] = $data['UserType'];
		$_SESSION['BranchID']    = $data['BranchID'];
		$_SESSION['UserID']      = $data['UserID'];

		$expiry = time() + (15 * 60 * 60); // 15 hours

		setcookie('pp_email', $data['email'], $expiry);
		setcookie('pp_UserType', $data['UserType'], $expiry);
		setcookie('BranchID', $data['BranchID'], $expiry);
		setcookie('UserID', $data['UserID'], $expiry);
	}

	public function SessionCheck()
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
				if(file_exists("../login.php"))
					header('Location: ../');
				else
					header('Location:../../');
				return false;
			}

		}
	}

}
