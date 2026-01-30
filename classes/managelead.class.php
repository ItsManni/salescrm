<?php
class ManageLead extends Core
{
	private $conn;
	public $file;
	public function __construct($conn)
    {
        $this->conn = $conn;

        if (file_exists("../logs/lead_logs.txt")) {
            $this->file = "../logs/lead_logs.txt";
        } elseif (file_exists("admin/logs/lead_logs.txt")) {
            $this->file = "admin/logs/lead_logs.txt";
        } else {
            $this->file = "../../logs/lead_logs.txt";
        }

        $this->setTimeZone();
    }
	public function WriteLog($txt)
	{
		$logFile = fopen($this->file, "a");
		fwrite($logFile, "\n". $txt);
		fclose($logFile);
	}
	public function GetAllLeads($conn)
	{
		$where = " where IsActive = 1 ORDER BY ID DESC";
        $Admission_details = $this->_getTableRecords($conn, "all_lead", $where);
        return $Admission_details;
	}
	public function getTotalLeads($table)
	{
		$sql = "Select COUNT(*) as total_enquiries from $table where IsActive = 1";
		$result=mysqli_query($this->conn,$sql);
		if($result->num_rows>0)
		{
			$row = $result->fetch_assoc();
			return $row['total_enquiries'];
		}
		else
		{
			return 0;
		}
	}

	public function getLeadsDetails($data)
	{
		$response = array();
		// $Email = $data['Email'];
		$CompanyName = $data['CompanyName'];
		$where = " where CompanyName = '$CompanyName' and IsActive = 1";
		$response['data'] = $this->_getTableDetails($this->conn,'all_lead',$where);
		if(isset($response['data']['Name']))
		{
			$response['exist'] = true;
		}
		else
		{
			$response['exist'] = false;
		}
		return $response;
	}

	public function getTelecallerLeadsDetails($data)
	{
		$response = array();
		// $Email = $data['Email'];
		$PhoneNumber = $data['PhoneNumber'];
		$where = " where PhoneNumber = '$PhoneNumber' and IsActive = 1";
		$response['data'] = $this->_getTableDetails($this->conn,'telecaller_leads',$where);
		if(isset($response['data']['Name']))
		{
			$response['exist'] = true;
		}
		else
		{
			$response['exist'] = false;
		}
		return $response;
	}


	function InsertLeadForm($data)
	{
		$Branch = isset($data['Branch']) ? $data['Branch'] : '';
		$CompanyName = isset($data['CompanyName']) ? $data['CompanyName'] : '';
		$BusinessType = isset($data['BusinessName']) ? $data['BusinessName'] : '';
		$Services = '';
		if (isset($data['Services']) && is_array($data['Services'])) {
			$Services = implode(',', $data['Services']); // array → "1,3,4"
		}
		$ServiceCost = isset($data['ServiceCost']) ? $data['ServiceCost'] : '';
		$ContactPersonName = isset($data['ContactPersonName']) ? $data['ContactPersonName'] : '';
		$ContactPersonEmail = isset($data['ContactPersonEmail']) ? $data['ContactPersonEmail'] : '';
		$ContactPersonPhoneNumber = isset($data['ContactPersonPhoneNumber']) ? $data['ContactPersonPhoneNumber'] : '';
		$PrimaryDialCode = isset($data['primary_country_code']) ? $data['primary_country_code'] : '';

		$ContactPersonAlternativeNo = isset($data['ContactPersonAlternativeNo']) ? $data['ContactPersonAlternativeNo'] : '';
		$SecondaryDialCode = isset($data['secondary_country_code']) ? $data['secondary_country_code'] : '';

		$Website = isset($data['Website']) ? $data['Website'] : '';
		$Country = isset($data['Country']) ? $data['Country'] : '';
		$State = isset($data['State']) ? $data['State'] : '';
		$City = isset($data['City']) ? $data['City'] : '';
		$Address = isset($data['Address']) ? $data['Address'] : '';
		$AssignedTo = isset($data['AssignedTo']) ? $data['AssignedTo'] : '';
		$Status = isset($data['LeadStatus']) ? $data['LeadStatus'] : '';
		$Remark = isset($data['Remark']) ? $data['Remark'] : '';
		$LeadSource = isset($data['LeadSource']) ? $data['LeadSource'] : '';
		$TelecallerLeadID = isset($data['TelecallerLeadID']) ? $data['TelecallerLeadID'] : -1;
		$LeadDate = isset($data['LeadDate']) ? $data['LeadDate'] : '';
		$CreatedBy = isset($data['CreatedBy']) ? $data['CreatedBy'] : '';

		$CreatedDate = date('Y-m-d');
		$CreatedTime = date('H:i:s');

		// Default Status if not provided
		if (empty($Status)) {
			$Status = isset($data['DefaultStatus']) ? $data['DefaultStatus'] : 'New';
		}

		$ActionType = isset($data['ActionType']) ? $data['ActionType'] : 'default';

		if ($ActionType == 'default') {

			$sql = "INSERT INTO `all_lead`(`BranchID`, `CompanyName`, `TypeofBusiness`, `Services`, `ServiceCost`,`ContactPersonName`, `ContactPersonEmail`, `PrimaryDialCode` ,`ContactPersonPhoneNumber`, `SecondaryDialCode`, `ContactPersonAlternativeNo`, `Website`, `Country`, `State`, `City`, `Address`, `AssignedTo`, `Status`, `Remark`, `LeadSource`, `TelecallerLeadID`, `LeadDate` , `CreatedTime`, `CreatedDate`, `CreatedBy`, `IsActive`)
            VALUES ('$Branch', '$CompanyName', '$BusinessType', '$Services', '$ServiceCost',
                    '$ContactPersonName', '$ContactPersonEmail', '$PrimaryDialCode' ,'$ContactPersonPhoneNumber', '$SecondaryDialCode',
                    '$ContactPersonAlternativeNo', '$Website', '$Country', '$State', '$City', '$Address',
                    '$AssignedTo', '$Status', '$Remark', '$LeadSource', '$TelecallerLeadID', '$LeadDate',
                    '$CreatedTime', '$CreatedDate', '$CreatedBy', 1)";


			$response_insert_lead_details = $this->_InsertTableRecords($this->conn, $sql);
			$this->WriteLog(" -------------- New Lead  ------------------");
			$this->WriteLog($sql);

			if ($response_insert_lead_details['error'] == false) {
				$last_insert_id = $response_insert_lead_details['last_insert_id'];

				$sql_assignment = "INSERT INTO lead_assignment (LeadID, AssignedTo, Status, Remark, CreatedDate, CreatedTime, CreatedBy)
								VALUES ('$last_insert_id', '$AssignedTo', '$Status', 'Lead Created', '$CreatedDate', '$CreatedTime', '$CreatedBy')";
				$response_assignment = $this->_InsertTableRecords($this->conn, $sql_assignment);

				$sql_history = "INSERT INTO lead_assignment_history (LeadID, AssignedTo, Status, Remark, CreatedDate, CreatedTime, CreatedBy)
								VALUES ('$last_insert_id', '$AssignedTo', '$Status', 'Lead Created', '$CreatedDate', '$CreatedTime', '$CreatedBy')";
				$response_history = $this->_InsertTableRecords($this->conn, $sql_history);


				$where = " where 1";
				$user_array_temp = $this->_getTableRecords($this->conn,'user_details',$where);
				$user_array = array();
				$user_array2 = array();
				foreach($user_array_temp as $user)
				{
					$UserID = $user['ID'];
					$User_email = $user['Email'];
					$user_array[$UserID] = $user['Name'];
					$user_array2[$UserID] = $user['Email'];
				}


				$mail_data['LeadID'] = $last_insert_id;
				$mail_data['CompanyName']= $CompanyName;
				$mail_data['AssignedTo']= $user_array[$AssignedTo];
				$mail_data['AssignedEmail']= $user_array2[$AssignedTo];
				$mail_data['LeadSource']= $LeadSource;
				$mail_data['Status']= $Status;


				$URL = "https://digidir.in/comdrdigi/mail-api/lead-notification-api.php";
				$this->sendMailRequest($mail_data,$URL);

			} else {
				$this->WriteLog($response_insert_lead_details['message']);
			}
		}
	    else
	    {
	    	$TelecallerLeadID = $data['TelecallerLeadID'];
	    	$sql = "INSERT INTO all_lead(BranchID,Name,CompanyName,Services,Email,PhoneNumber,State,City,Address,Mode,Course,AssignedTo,CreatedDate,CreatedTime,CreatedBy,DOB,HighestQualification,Remark,LeadSource,TelecallerLeadID,Status) VALUES ('$Center','$Name','$CompanyName','$Services','$Email','$PhoneNumber','$State','$City','$Address','$Mode','$course','$AssignedTo','$CreatedDate','$CreatedTime','$CreatedBy','$DOB','$HighQualification','$Remark','$LeadSource',$TelecallerLeadID,'$Status')";
			$response_insert_lead_details = $this->_InsertTableRecords($this->conn,$sql);
			$this->WriteLog(" -------------- New Leads  ------------------");
			$this->WriteLog($sql);

			if($response_insert_lead_details['error'] == false)
			{
	          $last_insert_id = $response_insert_lead_details['last_insert_id'];

				$sql = "INSERT INTO lead_assignment(LeadID,AssignedTo,Status,Remark,CreatedDate,CreatedTime,CreatedBy) VALUES ('$last_insert_id','$AssignedTo','$Status','Raised','$CreatedDate','$CreatedTime','$CreatedBy')";
				$response = $this->_InsertTableRecords($this->conn,$sql);

				$sql = "INSERT INTO lead_assignment_history(LeadID,AssignedTo,Status,Remark,CreatedDate,CreatedTime,CreatedBy) VALUES ('$last_insert_id','$AssignedTo','$Status','Lead Transferred from Telecaller','$CreatedDate','$CreatedTime','$CreatedBy')";
				$response_insert_remark_details = $this->_InsertTableRecords($this->conn,$sql);

				$TelecallerFinalStatus = $data['TelecallerFinalStatus'];
				$sql_update_telecaller_lead = " Status = '$TelecallerFinalStatus' where ID = $TelecallerLeadID";
				$response_update = $this->_UpdateTableRecords($this->conn,'telecaller_leads',$sql_update_telecaller_lead);

	        }
	        else
	        {
	        	$this->WriteLog($response_insert_lead_details['message']);
	        }
	    }
		return $response_insert_lead_details;
	}

	function UpdateLeadsDetails($data)
	{
		$LeadID = isset($data['form_id']) ? $data['form_id'] : 0;

		$Branch = isset($data['Branch']) ? $data['Branch'] : '';
		$CompanyName = isset($data['CompanyName']) ? $data['CompanyName'] : '';
		$BusinessType = isset($data['BusinessName']) ? $data['BusinessName'] : '';
		$Services = isset($data['Services']) && is_array($data['Services']) ? implode(',', $data['Services']) : '';
		$ServiceCost = isset($data['ServiceCost']) ? $data['ServiceCost'] : '';

		$ContactPersonName = isset($data['ContactPersonName']) ? $data['ContactPersonName'] : '';
		$ContactPersonEmail = isset($data['ContactPersonEmail']) ? $data['ContactPersonEmail'] : '';
		$ContactPersonPhoneNumber = isset($data['ContactPersonPhoneNumber']) ? $data['ContactPersonPhoneNumber'] : '';
		$PrimaryDialCode = isset($data['primary_country_code']) ? $data['primary_country_code'] : '';

		$ContactPersonAlternativeNo = isset($data['ContactPersonAlternativeNo']) ? $data['ContactPersonAlternativeNo'] : '';
		$SecondaryDialCode = isset($data['secondary_country_code']) ? $data['secondary_country_code'] : '';

		$Website = isset($data['Website']) ? $data['Website'] : '';
		$Country = isset($data['Country']) ? $data['Country'] : '';
		$State = isset($data['State']) ? $data['State'] : '';
		$City = isset($data['City']) ? $data['City'] : '';
		$Address = isset($data['Address']) ? $data['Address'] : '';

		$AssignedTo = isset($data['AssignedTo']) ? $data['AssignedTo'] : '';
		$Status = isset($data['LeadStatus']) ? $data['LeadStatus'] : '';
		$Remark = isset($data['Remark']) ? $data['Remark'] : '';
		$LeadSource = isset($data['LeadSource']) ? $data['LeadSource'] : '';
		$LeadDate = isset($data['LeadDate']) ? $data['LeadDate'] : '';
		$UpdatedBy = isset($data['CreatedBy']) ? $data['CreatedBy'] : '';

		$UpdatedDate = date('Y-m-d');
		$UpdatedTime = date('H:i:s');

		// Default Status fallback
		if (empty($Status)) {
			$Status = isset($data['DefaultStatus']) ? $data['DefaultStatus'] : 'New';
		}

		// -------- Update all_lead table --------
		$query = "
			BranchID = '$Branch',
			CompanyName = '$CompanyName',
			TypeofBusiness = '$BusinessType',
			Services = '$Services',
			ServiceCost = '$ServiceCost',
			ContactPersonName = '$ContactPersonName',
			ContactPersonEmail = '$ContactPersonEmail',
			PrimaryDialCode = '$PrimaryDialCode',
			ContactPersonPhoneNumber = '$ContactPersonPhoneNumber',
			SecondaryDialCode = '$SecondaryDialCode',
			ContactPersonAlternativeNo = '$ContactPersonAlternativeNo',
			Website = '$Website',
			Country = '$Country',
			State = '$State',
			City = '$City',
			Address = '$Address',
			AssignedTo = '$AssignedTo',
			LeadDate = '$LeadDate',
			Status = '$Status',
			Remark = '$Remark',
			CreatedDate = '$UpdatedDate',
			CreatedTime = '$UpdatedTime',
			LeadSource = '$LeadSource'
			WHERE ID = $LeadID
		";


		$response = $this->_UpdateTableRecords($this->conn, 'all_lead', $query);
		$this->WriteLog("-------------- Update Lead ------------------");
		$this->WriteLog($query);

		// -------- Insert assignment history on update --------
		if ($response['error'] == false) {

			$sql_history = "
				INSERT INTO lead_assignment_history
				(LeadID, AssignedTo, Status, Remark, CreatedDate, CreatedTime, CreatedBy)
				VALUES
				('$LeadID', '$AssignedTo', '$Status', 'Lead Updated', '$UpdatedDate', '$UpdatedTime', '$UpdatedBy')
			";

			$this->_InsertTableRecords($this->conn, $sql_history);
		}

		$where = " where ID = $LeadID";
        $lead_details = $this->_getTableDetails($this->conn, "all_lead", $where);

		$oldAssignedTo = $lead_details['AssignedTo'];

		// Insert into lead_assignment ONLY if AssignedTo changed
		if ($oldAssignedTo !== $AssignedTo) {

			$sql_assignment = "
				INSERT INTO lead_assignment
				(LeadID, AssignedTo, Status, Remark, CreatedDate, CreatedTime, CreatedBy)
				VALUES
				('$LeadID', '$AssignedTo', '$Status', 'Lead Assigned', '$UpdatedDate', '$UpdatedTime', '$UpdatedBy')
			";

			$this->_InsertTableRecords($this->conn, $sql_assignment);
		}

		return $response;
	}


	function UpdateTelecallerLeadsDetails($data){

		$LeadID = $data['form_id'];
		$Center = $data['Center'];
		if(isset($data['Center'])){
			$Center = $data['Center'];
		}

		$Name = $data['Name'];
		if(isset($data['Name'])){
			$Name = $data['Name'];
		}
		$Gender = '';
		if(isset($data['Gender'])){
			$Gender = $data['Gender'];
		}

		$Email = "";
		if(isset($data['Email'])){
			$Email = $data['Email'];
		}
		$PhoneNumber = "";
		if(isset($data['PhoneNumber'])){
			$PhoneNumber = $data['PhoneNumber'];
		}

		$State = '';
		if(isset($data['State'])){
			$State = $data['State'];
		}

		$City = '';
		if(isset($data['City'])){
			$City = $data['City'];
		}

		$Address = '';
		if(isset($data['Address'])){
		$Address = $data['Address'];
		}
		$Remark = "";
		if(isset($data['Remark'])){
		  $Remark = $data['Remark'];
		}

		$Mode = "";
		if(isset($data['Mode'])){
		  $Mode = $data['Mode'];
		}
		$course_arr = $data['Courses'];
		if(is_array($course_arr))
		{
			$course = implode(",",$course_arr);
		}
		else
		{
			$course = $course_arr;
		}

		$CreatedDate = $data['CreatedDate'] = date('Y-m-d');
		$CreatedBy ="";
		if(isset($data['CreatedBy'])){
			$CreatedBy = $data['CreatedBy'];
		  }
		$CreatedTime = $data['CreatedTime'] = date('H:i:s');

		$LeadSource = "";
		if(isset($data['LeadSource'])){
		  $LeadSource = $data['LeadSource'];
		}

		$Status = "";
		if(isset($data['Status'])){
		  $Status = $data['Status'];
		}


		$query = " BranchID = '$Center',Name = '$Name',Email = '$Email',PhoneNumber = '$PhoneNumber',State = '$State',City = '$City',Address = '$Address',Mode = '$Mode',Course = '$course' where ID = $LeadID";
        $response = $this->_UpdateTableRecords($this->conn,'telecaller_leads', $query);
        return $response;
	}

	public function GetLeadsDetailsByID($ID)
	{
		$where = " where ID = $ID";
        $lead_details = $this->_getTableDetails($this->conn, "all_lead", $where);
        return $lead_details;
	}

	public function GetTelecallerLeadsDetailsByID($ID)
	{
		$where = " where ID = $ID";
        $lead_details = $this->_getTableDetails($this->conn, "telecaller_leads", $where);
        return $lead_details;
	}

	function UpdateLeadAssignment($data)
	{
		$AssignedTo = $data['UserName'];

		$LeadStatus = $data['LeadStatus'];
		$LeadRemark = $data['LeadRemark'];
		$LeadID = $data['LeadID'];

		$CreatedDate = date('Y-m-d');
		$CreatedBy = $data['CreatedBy'];
		$CreatedTime = date('H:i:s');

        $query = " AssignedTo = '$AssignedTo',Status = '$LeadStatus',Remark = '$LeadRemark',CreatedDate = '$CreatedDate',CreatedTime = '$CreatedTime',CreatedBy = '$CreatedBy' where LeadID = $LeadID";
        $response_lead_assignment = $this->_UpdateTableRecords($this->conn,'lead_assignment', $query);

		$all_lead_query = "AssignedTo = '$AssignedTo',Status = '$LeadStatus' where ID = $LeadID";
        $response_all_lead = $this->_UpdateTableRecords($this->conn,'all_lead', $all_lead_query);
        if($response_lead_assignment['error'] == false){

        	$sql = "INSERT INTO lead_remarks(LeadID,Remark,CreatedDate,CreatedTime,CreatedBy) VALUES ('$LeadID','$LeadRemark','$CreatedDate','$CreatedTime','$CreatedBy')";
			$response_insert_remark_details = $this->_InsertTableRecords($this->conn,$sql);

			$sql = "INSERT INTO lead_assignment_history(LeadID,AssignedTo,Status,Remark,CreatedDate,CreatedTime,CreatedBy) VALUES ('$LeadID','$AssignedTo','$LeadStatus','$LeadRemark','$CreatedDate','$CreatedTime','$CreatedBy')";
			$response_insert_remark_details = $this->_InsertTableRecords($this->conn,$sql);

			// $where = " where 1";
			// $user_array_temp = $core->_getTableRecords($conn,'user_details',$where);
			// $user_array = array();
			// $user_array2 = array();
			// foreach($user_array_temp as $user)
			// {
			// 	$UserID = $user['ID'];
			// 	$User_email = $user['Email'];
			// 	$user_array[$UserID] = $user['Name'];
			// 	$user_array2[$User_email] = $user['Name'];
			// }


			// $mail_data['LeadID'] = $last_insert_id;
			// $mail_data['CompanyName']= $CompanyName;
			// $mail_data['AssignedTo']= $user_array[$AssignedTo];
			// $mail_data['AssignedEmail']= $user_array2[$AssignedEmail];
			// $mail_data['LeadSource']= $LeadSource;
			// $mail_data['Status']= $Status;


			// $URL = "https://digidir.in/comdrdigi/mail-api/lead-notification-api.php";
			// $this->sendMailRequest($mail_data,$URL);
        }
        return $response_lead_assignment;
	}

	function UpdateTelecallerLeadAssignment($data)
	{
		$LeadStatus = $data['LeadStatus'];
		$LeadRemark = $data['LeadRemark'];
		$LeadID = $data['LeadID'];

		$CreatedDate = date('Y-m-d');
		$CreatedBy = $data['CreatedBy'];
		$CreatedTime = date('H:i:s');

		$update_telecaller_lead_status = "Status = '$LeadStatus' where ID = $LeadID";
        $response= $this->_UpdateTableRecords($this->conn,'telecaller_leads', $update_telecaller_lead_status);
        if($response['error'] == false)
        {
        	if($LeadRemark != "")
        	{
        		$where = " where ID = $LeadID";
        		$lead_assignement_details = $this->_getTableDetails($this->conn, "telecaller_lead_assignment_history", $where);
            	$AssignedTo = $lead_assignement_details['AssignedTo'];

	        	$sql = "INSERT INTO telecaller_lead_remarks(LeadID,Remark,CreatedDate,CreatedTime,CreatedBy) VALUES ('$LeadID','$LeadRemark','$CreatedDate','$CreatedTime','$CreatedBy')";
				$response_insert_remark_details = $this->_InsertTableRecords($this->conn,$sql);

				$sql = "INSERT INTO telecaller_lead_assignment_history(LeadID,AssignedTo,Status,Remark,CreatedDate,CreatedTime,CreatedBy) VALUES ('$LeadID','$AssignedTo','$LeadStatus','$LeadRemark','$CreatedDate','$CreatedTime','$CreatedBy')";
				$response_insert_remark_details = $this->_InsertTableRecords($this->conn,$sql);
			}
        }
        return $response;
	}

	public function GetLeadAssignmentDetailsByID($conn,$ID)
	{
		$where = " where LeadID = $ID";
        $lead_assignement_details = $this->_getTableDetails($this->conn, "lead_assignment", $where);
        return $lead_assignement_details;
	}

	public function GetAllLeadRemarks($conn,$ID)
	{
		$where = " where LeadID = $ID";
        $lead_remarks = $this->_getTableRecords($this->conn, "lead_remarks", $where);
        return $lead_remarks;
	}
	public function GetAllTelecallerLeadRemarks($conn,$ID)
	{
		$where = " where LeadID = $ID";
        $lead_remarks = $this->_getTableRecords($this->conn, "telecaller_lead_remarks", $where);
        return $lead_remarks;
	}

	public function AddLeadRemarkData($data){
		$LeadID = $data['LeadID'];
		$leadremark = $data['lead_remark'];

		$CreatedDate = date('Y-m-d');
		$CreatedTime = date('H:i:s');
		$CreatedBy = $data['CreatedBy'];

		if(isset($data['LeadID'])){

			$sql = "INSERT INTO lead_remarks(LeadID,Remark,CreatedDate,CreatedTime,CreatedBy) VALUES ('$LeadID','$leadremark','$CreatedDate','$CreatedTime','$CreatedBy')";
			$response_insert_remark_details = $this->_InsertTableRecords($this->conn,$sql);

			$where = " where LeadID = $LeadID ORDER BY CONCAT(CreatedDate, ' ', CreatedTime) DESC LIMIT 1";
            $lead_assignement_details = $this->_getTableDetails($this->conn, "lead_assignment_history", $where);
            $AssignedTo = $lead_assignement_details['AssignedTo'];
			$LeadStatus = $lead_assignement_details['Status'];
			if($lead_assignement_details){

				$sql = "INSERT INTO lead_assignment_history(LeadID,AssignedTo,Status,Remark,CreatedDate,CreatedTime,CreatedBy) VALUES ('$LeadID','$AssignedTo','$LeadStatus','$leadremark','$CreatedDate','$CreatedTime','$CreatedBy')";
			    $response_insert_remark_details = $this->_InsertTableRecords($this->conn,$sql);
			}



		}

		return $response_insert_remark_details;
	}

	public function AddTelecallerLeadRemarkData($data){
		$LeadID = $data['LeadID'];
		$leadremark = $data['lead_remark'];

		$CreatedDate = date('Y-m-d');
		$CreatedTime = date('H:i:s');
		$CreatedBy = $data['CreatedBy'];

		if(isset($data['LeadID'])){

			$sql = "INSERT INTO telecaller_lead_remarks(LeadID,Remark,CreatedDate,CreatedTime,CreatedBy) VALUES ('$LeadID','$leadremark','$CreatedDate','$CreatedTime','$CreatedBy')";
			$response_insert_remark_details = $this->_InsertTableRecords($this->conn,$sql);

			$where = " where LeadID = $LeadID ORDER BY CONCAT(CreatedDate, ' ', CreatedTime) DESC LIMIT 1";
            $lead_assignement_details = $this->_getTableDetails($this->conn, "telecaller_lead_assignment_history", $where);
            $AssignedTo = $lead_assignement_details['AssignedTo'];
			$LeadStatus = $lead_assignement_details['Status'];
			if($lead_assignement_details){

				$sql = "INSERT INTO telecaller_lead_assignment_history(LeadID,AssignedTo,Status,Remark,CreatedDate,CreatedTime,CreatedBy) VALUES ('$LeadID','$AssignedTo','$LeadStatus','$leadremark','$CreatedDate','$CreatedTime','$CreatedBy')";
			    $response_insert_remark_details = $this->_InsertTableRecords($this->conn,$sql);
			}



		}

		return $response_insert_remark_details;
	}

	public function GetAllLeadAssignmentHistory($conn,$ID)
	{
		$where = " where LeadID = $ID ORDER BY CreatedTime ASC";
        $lead_assignment_history = $this->_getTableRecords($this->conn, "lead_assignment_history", $where);
        return $lead_assignment_history;
	}
	public function GetAllTelecallerLeadAssignmentHistory($conn,$ID)
	{
		$where = " where LeadID = $ID ORDER BY CreatedTime DESC";
        $lead_assignment_history = $this->_getTableRecords($this->conn, "telecaller_lead_assignment_history", $where);
        return $lead_assignment_history;
	}

	public function UpdateLeadStatusFromAccountsApproval($data)
	{
		$email = $data['StudentEmail'];
		$PhoneNumber = $data['PhoneNumber'];
		$where = " where PhoneNumber = '$PhoneNumber' or Email = 'email'";
		$lead_data_rows = $this->_getTotalRows($this->conn, 'all_lead', $where);
		if($lead_data_rows > 0)
		{
			$LeadID = $this->_getTableDetails($this->conn,'all_lead',$where)['ID'];
			$lead_final_status = $this->_getTableDetails($this->conn,'lead_status','where FinalStatus = 1')['Status'];
			$update_lead = " Status = '$lead_final_status' where ID = $LeadID";
			$this->_UpdateTableRecords($this->conn,'all_lead',$update_lead);
		}
	}

	// Leads Analytics
	public function GetLeadsDataGroupedByDate($lastSevenDates,$data_input)
	{
		$BranchID = $data_input['BranchID'];
		$filter_center = "";
		if($BranchID != -1)
		{
			$filter_center = " AND BranchID = $BranchID";
		}
		$data = array();
		foreach($lastSevenDates as $i_date)
		{
			$data[$i_date] = 0;
		}
		$sql = "SELECT CreatedDate,Count(*) as Total FROM all_lead WHERE CreatedDate IN ('" . implode("', '", $lastSevenDates) . "') $filter_center GROUP BY CreatedDate";
		$result = mysqli_query($this->conn, $sql);
		if ($result) {
			if ($result->num_rows > 0) {
				while($row = $result->fetch_assoc())
				{
					$CreatedDate = $row['CreatedDate'];
					$data[$CreatedDate] = $row['Total'];
				}
			}
		}
		return $data;
	}
	public function GetLeadsDataGroupedByStatus($data_input)
	{
		$BranchID = $data_input['BranchID'];
		$filter_center = "";
		if($BranchID != -1)
		{
			$filter_center = " AND BranchID = $BranchID";
		}
		$data = array();
		$sql = "SELECT Status,COUNT(*) as Total FROM all_lead WHERE IsActive=1 $filter_center AND Status != '' GROUP BY Status";
		$result = mysqli_query($this->conn, $sql);
		if ($result) {
			if ($result->num_rows > 0) {
				while($row = $result->fetch_assoc())
				{
					$Status = $row['Status'];
					$data[$Status] = $row['Total'];
				}
			}
		}
		return $data;
	}
	public function GetGroupedStatusandAssignment($BranchID)
	{
		$data = array();
		$filter_center = "";
		if($BranchID != -1)
		{
			$filter_center = " AND BranchID = $BranchID";
		}

		$sql = "Select AssignedTo,Status,COUNT(*) as sum_leads from all_lead where IsActive = 1 AND Status != '' $filter_center GROUP BY AssignedTo,Status";

		$result = mysqli_query($this->conn, $sql);
		if ($result) {
			if ($result->num_rows > 0) {
				while($row = $result->fetch_assoc())
				{
					$Status = $row['Status'];
					$AssignedTo = $row['AssignedTo'];
					$data[$AssignedTo][$Status] = $row['sum_leads'];
				}
			}
		}
		return $data;

	}

	function getLeadCounsellorofCenter($BranchID)
	{
		$LeadCounsellorID = -1;
		$where_query = " where UserType = 'Lead Counsellor' and BranchID = $BranchID";
		$num_rows = $this->_getTotalRows($this->conn,'user_details',$where_query);
		if($num_rows > 0)
		{

			$details = $this->_getTableDetails($this->conn,'user_details',$where_query);
			$LeadCounsellorID = $details['ID'];
		}
		return $LeadCounsellorID;
	}

	function getCenterManagerofCenter($BranchID)
	{
		$CenterManager = -1;
		$where_query = " where UserType = 'Center Manager' and BranchID = $BranchID";
		$num_rows = $this->_getTotalRows($this->conn,'user_details',$where_query);
		if($num_rows > 0)
		{
			$details = $this->_getTableDetails($this->conn,'user_details',$where_query);
			$CenterManager = $details['ID'];
		}
		return $CenterManager;
	}

}
?>