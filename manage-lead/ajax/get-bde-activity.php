<?php
@session_start();
require_once('../../include/autoloader.inc.php');

$dbh = new Dbh();
$conn = $dbh->_connectodb();
$analyticsObj = new LeadAnalytics($conn);

$BDEID = $_POST['BDEID'] ?? '';

if (empty($BDEID)) {
    echo "<p class='text-center text-danger'>Please select a BDE</p>";
    exit;
}

// Step 1: Get all leads assigned to this BDE
$lead_where = " WHERE AssignedTo = '$BDEID' AND IsActive = 1 ORDER BY LeadDate DESC LIMIT 50"; // last 50 leads
$lead_rows  = $analyticsObj->_getTableRecords($conn, 'all_lead', $lead_where);

// Check if BDE has leads
if (empty($lead_rows)) {
    echo "<p class='text-center'>No leads assigned to this BDE</p>";
    exit;
}

// Map LeadID => CompanyName
$lead_map = [];
$lead_ids = [];
foreach ($lead_rows as $lead) {
    $lead_map[$lead['ID']] = $lead['CompanyName'];
    $lead_ids[] = $lead['ID'];
}

// Step 2: Get last 10 remarks for these leads
$lead_ids_str = implode(',', $lead_ids);
$remark_where = " WHERE LeadID IN ($lead_ids_str) AND IsActive = 1 ORDER BY CreatedDate DESC, CreatedTime DESC LIMIT 10";
$remarks      = $analyticsObj->_getTableRecords($conn, 'lead_remarks', $remark_where);

// Step 3: Display table
if (empty($remarks)) {
    echo "<p class='text-center'>No remarks found for these leads yet</p>";
    exit;
}
?>

<div class="table-responsive">
    <table class="table table-striped table-bordered">
        <thead class="table-dark">
            <tr>
                <th class='text-white'>Lead ID</th>
                <th class='text-white'>Company Name</th>
                <th class='text-white'>Remark</th>
                <th class='text-white'>Date</th>
                <th class='text-white'>Time</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($remarks as $row): ?>
                <?php
                    $companyName = $lead_map[$row['LeadID']] ?? '—';
                ?>
                <tr>
                    <td><?php echo htmlspecialchars($row['LeadID']); ?></td>
                    <td><?php echo htmlspecialchars($companyName); ?></td>
                    <td><?php echo htmlspecialchars($row['Remark']); ?></td>
                    <td><?php echo htmlspecialchars($row['CreatedDate']); ?></td>
                    <td><?php echo htmlspecialchars($row['CreatedTime']); ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
