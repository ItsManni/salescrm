<?php
@session_start();
require_once('../../include/autoloader.inc.php');

$dbh = new Dbh();
$conn = $dbh->_connectodb();
$analyticsObj = new LeadAnalytics($conn);

// Sanitize inputs
$BDEID      = isset($_POST['BDEID']) ? mysqli_real_escape_string($conn, $_POST['BDEID']) : '';
$startDate  = isset($_POST['filter_start_date']) ? mysqli_real_escape_string($conn, $_POST['filter_start_date']) : '';
$endDate    = isset($_POST['filter_end_date']) ? mysqli_real_escape_string($conn, $_POST['filter_end_date']) : '';

if (empty($BDEID)) {
    echo "<p class='text-center text-danger my-4 fw-bold'>Please select a BDE</p>";
    exit;
}

// Build the date filter condition dynamically
$date_condition = "";
if (!empty($startDate) && !empty($endDate)) {
    // Wrapping CreatedDate inside DATE() strips out hours/minutes/seconds if it's a DATETIME column
    $date_condition = " AND DATE(CreatedDate) BETWEEN '$startDate' AND '$endDate'";
}

/**
 * STEP 1: Get latest remarks for the designated BDE
 */
$remark_where = " WHERE LeadID IN (SELECT ID FROM all_lead WHERE AssignedTo = '$BDEID')
                  AND IsActive = 1
                  {$date_condition}
                  ORDER BY CreatedDate DESC, CreatedTime DESC
                  LIMIT 50";

$remarks = $analyticsObj->_getTableRecords($conn, 'lead_remarks', $remark_where);

if (empty($remarks)) {
    echo "<p class='text-center text-muted my-4'>No recent activity found for this BDE within the selected date range.</p>";
    exit;
}

/**
 * STEP 2: Collect unique Lead IDs to map Company Names
 */
$found_lead_ids = array_unique(array_column($remarks, 'LeadID'));
$ids_string = implode(',', array_map('intval', $found_lead_ids));

$lead_where = " WHERE ID IN ($ids_string)";
$lead_details = $analyticsObj->_getTableRecords($conn, 'all_lead', $lead_where);

$lead_map = [];
if (!empty($lead_details)) {
    foreach ($lead_details as $ld) {
        $lead_map[$ld['ID']] = $ld['CompanyName'];
    }
}
?>

<!-- Render Table Layout Grid Back to UI View -->
<div class="table-responsive">
    <table class="table table-hover align-middle border mb-0">
        <thead class="table-light">
            <tr>
                <th>Lead ID</th>
                <th>Company Name</th>
                <th>Remark</th>
                <th>Date</th>
                <th>Time</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($remarks as $row): ?>
                <?php $companyName = $lead_map[$row['LeadID']] ?? 'Unknown'; ?>
                <tr>
                    <td><span class="fw-bold">#<?php echo htmlspecialchars($row['LeadID']); ?></span></td>
                    <td><span class="fw-semibold"><?php echo htmlspecialchars($companyName); ?></span></td>
                    <td><div class="text-wrap" style="max-width: 450px;"><?php echo htmlspecialchars($row['Remark']); ?></div></td>
                    <td><span class="text-dark"><?php echo htmlspecialchars($row['CreatedDate']); ?></span></td>
                    <td><small class="text-muted"><?php echo htmlspecialchars($row['CreatedTime']); ?></small></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>