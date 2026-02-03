<?php
class LeadAnalytics extends Core
{

    private $conn;
	public function __construct($conn)
	{
		$this->conn = $conn;
		$this->setTimeZone();
	}

    private $all_lead_table = 'all_lead';
    private $lead_status_table = 'lead_status';
    private $lead_assignment_table = 'lead_assignment';
    private $lead_assignment_history_table = 'lead_assignment_history';
    private $lead_remarks_table = 'lead_remarks';
    private $user_table = 'user_details';

    public function GetBDEPerformanceDetailed()
    {
        // Step 1: Get all BDEs
        $bdes = $this->_getTableRecords($this->conn, 'user_details', "WHERE UserType='BDE' AND IsActive=1");
        $result = [];

        foreach($bdes as $bde) {
            $bdeID = $bde['ID'];
            $bdeName = $bde['Name'];

            // Total leads assigned to this BDE
            $totalLeads = $this->_getTableRecords($this->conn, 'all_lead', "WHERE AssignedTo='$bdeID' AND IsActive=1");
            $totalCount = count($totalLeads);

            // Converted leads
            $convertedLeads = $this->_getTableRecords($this->conn, 'all_lead', "WHERE AssignedTo='$bdeID' AND Status='Converted' AND IsActive=1");
            $convertedCount = count($convertedLeads);

            // Follow-ups done (lead_remarks)
            $followups = $this->_getTableRecords($this->conn, 'lead_remarks', "WHERE CreatedBy='$bdeID' AND IsActive=1");
            $followupCount = count($followups);

            // Reassignments / status changes (lead_assignment_history)
            $reassignments = $this->_getTableRecords($this->conn, 'lead_assignment_history', "WHERE AssignedTo='$bdeID'");
            $reassignCount = count($reassignments);

            $result[] = [
                'bde_name' => $bdeName,
                'total_leads' => $totalCount,
                'converted_leads' => $convertedCount,
                'followups' => $followupCount,
                'reassignments' => $reassignCount
            ];
        }

        return $result;
    }


    public function GetLast10BDELeads()
    {
        // Get last 10 active BDEs based on last remark date, including those with no remarks
        $where = " LEFT JOIN lead_remarks lr ON lr.CreatedBy = ud.ID
                WHERE ud.UserType='BDE' AND ud.IsActive=1
                GROUP BY ud.ID
                ORDER BY MAX(lr.CreatedDate) DESC, MAX(lr.CreatedTime) DESC
                LIMIT 10";
        return $this->_getTableRecords($this->conn, "user_details ud", $where);
    }


    // Get BDE activity with Lead info and remarks
    public function GetBDELeadActivity($BDEID)
    {
        // Get all leads assigned to this BDE
        $lead_where  = " WHERE AssignedTo = '$BDEID' AND IsActive = 1";
        $lead_rows   = $this->_getTableRecords($this->conn, "all_lead", $lead_where);

        if (empty($lead_rows)) {
            return []; // no leads for this BDE
        }

        // Collect lead IDs
        $lead_ids = array_column($lead_rows, 'ID');
        $lead_ids_str = implode(",", $lead_ids);

        // Fetch remarks for these leads
        $remark_where = " WHERE LeadID IN ($lead_ids_str) AND IsActive = 1 ORDER BY CreatedDate DESC, CreatedTime DESC";
        $activity     = $this->_getTableRecords($this->conn, "lead_remarks", $remark_where);

        return $activity ?: [];
    }


}
?>
