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
    // Step 1: Get all active BDEs
    $bdes = $this->_getTableRecords($this->conn, 'user_details', "WHERE UserType='BDE' AND IsActive=1");
    $result = [];

    if (empty($bdes)) {
        return $result;
    }

    foreach($bdes as $bde) {
        $bdeID = $bde['ID'];
        $bdeName = $bde['Name'];

        // 1. Total leads currently assigned to this BDE
        $totalLeads = $this->_getTableRecords($this->conn, 'all_lead', "WHERE AssignedTo='$bdeID' AND IsActive=1");
        $totalCount = count($totalLeads);

        // 2. Converted leads
        $convertedLeads = $this->_getTableRecords($this->conn, 'all_lead', "WHERE AssignedTo='$bdeID' AND Status='Converted' AND IsActive=1");
        $convertedCount = count($convertedLeads);

        // 3. Follow-up leads
        $followupLeads = $this->_getTableRecords($this->conn, 'all_lead', "WHERE AssignedTo='$bdeID' AND Status='Follow-up' AND IsActive=1");
        $followupCount = count($followupLeads);

        // 4. FIX: Reassignments (Ignoring the very first assignment of the lead)
        $history = $this->_getTableRecords($this->conn, 'lead_assignment_history', "WHERE AssignedTo='$bdeID' ORDER BY ID ASC");

        $reassignCount = 0;
        $trackedTransfers = [];

        foreach ($history as $entry) {
            $leadID = $entry['LeadID'];

            // Skip if we already processed this unique lead for this BDE
            if (in_array($leadID, $trackedTransfers)) {
                continue;
            }

            $trackedTransfers[] = $leadID;

            // Check the global absolute first log entry for this specific Lead ID
            $firstAssignment = $this->_getTableRecords($this->conn, 'lead_assignment_history', "WHERE LeadID='$leadID' ORDER BY ID ASC LIMIT 1");

            if (!empty($firstAssignment)) {
                // If this current BDE was the one who got it on entry #1, ignore it!
                if ($firstAssignment[0]['AssignedTo'] == $bdeID) {
                    continue;
                }
            }

            // If it passes the check, it means someone else had it first. Count it!
            $reassignCount++;
        }

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