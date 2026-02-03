<?php
class IMSSetting extends Core
{
	private $conn;
	public function __construct($conn)
	{
		$this->conn = $conn;
		$this->setTimeZone();
	}

	public function CheckDuplicateLeadStatus($data)
	{
		$LeadStatus = $data['LeadStatus'];
		$filter = " where Status = '$LeadStatus'";
		$response = $this->check_unique_identity_filter($this->conn,'lead_status', $filter);
		return $response;
	}
	public function CheckDuplicateTelecallerLeadStatus($data)
	{
		$LeadStatus = $data['LeadStatus'];
		$filter = " where Status = '$LeadStatus'";
		$response = $this->check_unique_identity_filter($this->conn,'telecaller_lead_status', $filter);
		return $response;
	}
	public function InsertLeadStatus($data)
	{
		$LeadStatus = $data['LeadStatus'];
		$final_status = $data['final_status'];
		$not_interested_status = $data['not_interested_status'];
		$default_status = $data['default_status'];
		$LeadColor = $data['LeadColor'];
		$sql = "INSERT INTO lead_status(Status,DefaultStatus,NotInterestedStatus,FinalStatus,LeadColor) VALUES ('$LeadStatus',$default_status,$not_interested_status,$final_status,'$LeadColor')";
		$response_insert_status_details= $this->_InsertTableRecords($this->conn,$sql);
		return $response_insert_status_details;

	}
	public function InsertTelecallerLeadStatus($data)
	{
		$LeadStatus = $data['LeadStatus'];
		$final_status = $data['final_status'];
		$not_interested_status = $data['not_interested_status'];
		$default_status = $data['default_status'];
		$LeadColor = $data['LeadColor'];
		$sql = "INSERT INTO telecaller_lead_status(Status,DefaultStatus,NotInterestedStatus,FinalStatus,LeadColor) VALUES ('$LeadStatus',$default_status,$not_interested_status,$final_status,'$LeadColor')";
		$response_insert_status_details= $this->_InsertTableRecords($this->conn,$sql);
		return $response_insert_status_details;

	}
	public function UpdateLeadStatus($data)
	{
		extract($data);
		if($final_status == 1)
		{
			$update_sql = "FinalStatus = 0 where 1";
			$response = $this->_UpdateTableRecords($this->conn,'lead_status',$update_sql);
		}
		if($default_status == 1)
		{
			$update_sql = "DefaultStatus = 0 where 1";
			$response = $this->_UpdateTableRecords($this->conn,'lead_status',$update_sql);
		}
		if($not_interested_status == 1)
		{
			$update_sql = "NotInterestedStatus = 0 where 1";
			$response = $this->_UpdateTableRecords($this->conn,'lead_status',$update_sql);
		}
		$update_sql = " Status = '$LeadStatus',DefaultStatus=$default_status,NotInterestedStatus=$not_interested_status,FinalStatus=$final_status,LeadColor='$LeadColor' where ID = $lead_status_form_id";
		$response = $this->_UpdateTableRecords($this->conn,'lead_status',$update_sql);
		return $response;
	}
	public function UpdateTelecallerLeadStatus($data)
	{
		extract($data);
		if($final_status == 1)
		{
			$update_sql = "FinalStatus = 0 where 1";
			$response = $this->_UpdateTableRecords($this->conn,'telecaller_lead_status',$update_sql);
		}
		if($default_status == 1)
		{
			$update_sql = "DefaultStatus = 0 where 1";
			$response = $this->_UpdateTableRecords($this->conn,'telecaller_lead_status',$update_sql);
		}
		if($not_interested_status == 1)
		{
			$update_sql = "NotInterestedStatus = 0 where 1";
			$response = $this->_UpdateTableRecords($this->conn,'telecaller_lead_status',$update_sql);
		}
		$update_sql = " Status = '$LeadStatus',DefaultStatus=$default_status,NotInterestedStatus=$not_interested_status,FinalStatus=$final_status,LeadColor='$LeadColor' where ID = $lead_status_form_id";
		$response = $this->_UpdateTableRecords($this->conn,'telecaller_lead_status',$update_sql);
		return $response;
	}


	public function GetAllLeadStatus()
	{
		$where = " where IsActive = 1";
		$lead_status_array = $this->_getTableRecords($this->conn,'lead_status',$where);
		return $lead_status_array;
	}
	public function GetAllTelecallerLeadStatus()
	{
		$where = " where IsActive = 1";
		$lead_status_array = $this->_getTableRecords($this->conn,'telecaller_lead_status',$where);
		return $lead_status_array;
	}
	public function GetAllLeadSources()
	{
		$where = " where IsActive = 1 ORDER BY ID DESC";
        $lead_source_details = $this->_getTableRecords($this->conn, "lead_source", $where);
        return $lead_source_details;
	}

	public function CheckDuplicateSourceName($data)
	{
		$SourceName = $data['SourceName'];
		$filter = " where SourceName = '$SourceName'";
		$response = $this->check_unique_identity_filter($this->conn,'lead_source', $filter);
		return $response;
	}
	public function InsertSourceName($data)
	{
		$SourceName = $data['SourceName'];

		$sql = "INSERT INTO lead_source(SourceName) VALUES ('$SourceName')";
		$response_insert_source_details= $this->_InsertTableRecords($this->conn,$sql);
		return $response_insert_source_details;

	}
	public function UpdateSourceName($data)
	{
		extract($data);
		$update_sql = " SourceName = '$SourceName' where ID = $lead_source_form_id";
		$response = $this->_UpdateTableRecords($this->conn,'lead_source',$update_sql);
		return $response;
	}

	public function GetLeadSourceVsConversion()
	{
		// 1. Get all final lead status NAMES
		$status_where = " WHERE IsActive = 1 AND FinalStatus = 1";
		$final_status_rows = $this->_getTableRecords($this->conn, 'lead_status', $status_where);

		$finalStatusNames = [];
		foreach ($final_status_rows as $row) {
			$finalStatusNames[] = $row['Status']; // STATUS NAME
		}

		// 2. Get all active leads
		$lead_where = " WHERE IsActive = 1";
		$leads = $this->_getTableRecords($this->conn, 'all_lead', $lead_where);

		$analytics = [];

		// 3. Process leads
		foreach ($leads as $lead) {

			$source = trim($lead['LeadSource']);
			$status = trim($lead['Status']);

			if ($source == '') {
				continue;
			}

			if (!isset($analytics[$source])) {
				$analytics[$source] = [
					'lead_source' => $source,
					'total_leads' => 0,
					'converted_leads' => 0,
					'conversion_percentage' => 0
				];
			}

			$analytics[$source]['total_leads']++;

			if (in_array($status, $finalStatusNames)) {
				$analytics[$source]['converted_leads']++;
			}
		}

		// 4. Calculate conversion %
		foreach ($analytics as &$row) {
			$row['conversion_percentage'] = $row['total_leads'] > 0
				? round(($row['converted_leads'] / $row['total_leads']) * 100, 2)
				: 0;
		}

		return array_values($analytics);
	}

	public function GetFinalLeadStatus()
	{
		$FinalStatus = "";
		$filter = " where FinalStatus = 1";
		$response = $this->_getTableDetails($this->conn,'lead_status',$filter);
		if($response != NULL)
		{
			$FinalStatus = $response['Status'];
		}
		return $FinalStatus;
	}
	public function GetFinalTelecallerLeadStatus()
	{
		$FinalStatus = "";
		$filter = " where FinalStatus = 1";
		$response = $this->_getTableDetails($this->conn,'telecaller_lead_status',$filter);
		if($response != NULL)
		{
			$FinalStatus = $response['Status'];
		}
		return $FinalStatus;
	}
	public function GetDefaultLeadStatus()
	{
		$DefaultStatus = "";
		$filter = " where DefaultStatus = 1";
		$response = $this->_getTableDetails($this->conn,'lead_status',$filter);
		if($response != NULL)
		{
			$DefaultStatus = $response['Status'];
		}
		return $DefaultStatus;
	}
	public function GetDefaultTelecallerLeadStatus()
	{
		$DefaultStatus = "";
		$filter = " where DefaultStatus = 1";
		$response = $this->_getTableDetails($this->conn,'telecaller_lead_status',$filter);
		if($response != NULL)
		{
			$DefaultStatus = $response['Status'];
		}
		return $DefaultStatus;
	}

	public function GetAllServices()
	{
		$where = " WHERE IsActive = 1 ORDER BY ID DESC";
		$service_details = $this->_getTableRecords($this->conn, "services", $where);
		return $service_details;
	}

	public function CheckDuplicateServiceName($data)
	{
		$ServiceName = $data['ServiceName'];
		$filter = " WHERE ServiceName = '$ServiceName'";
		$response = $this->check_unique_identity_filter($this->conn, 'services', $filter);
		return $response;
	}

	public function InsertServiceName($data)
	{
		$ServiceName = $data['ServiceName'];

		$sql = "INSERT INTO services (ServiceName) VALUES ('$ServiceName')";
		$response_insert_service_details = $this->_InsertTableRecords($this->conn, $sql);
		return $response_insert_service_details;
	}

	public function UpdateServiceName($data)
	{
		extract($data);
		$update_sql = " ServiceName = '$ServiceName' WHERE ID = $service_form_id";
		$response = $this->_UpdateTableRecords($this->conn, 'services', $update_sql);
		return $response;
	}

	public function GetAllBusinessTypes()
	{
		$where = " WHERE IsActive = 1 ORDER BY ID DESC";
		$business_type_details = $this->_getTableRecords($this->conn, "type_of_business", $where);
		return $business_type_details;
	}

	public function CheckDuplicateBusinessName($data)
	{
		$BusinessName = $data['BusinessName'];
		$filter = " WHERE BusinessName = '$BusinessName'";
		$response = $this->check_unique_identity_filter($this->conn, 'type_of_business', $filter);
		return $response;
	}

	public function InsertBusinessName($data)
	{
		$BusinessName = $data['BusinessName'];

		$sql = "INSERT INTO type_of_business (BusinessName) VALUES ('$BusinessName')";
		$response_insert_business_details = $this->_InsertTableRecords($this->conn, $sql);
		return $response_insert_business_details;
	}

	public function UpdateBusinessName($data)
	{
		extract($data);
		$update_sql = " BusinessName = '$BusinessName' WHERE ID = $business_type_form_id";
		$response = $this->_UpdateTableRecords($this->conn, 'type_of_business', $update_sql);
		return $response;
	}


}