<?php
require_once('../include/autoloader.inc.php');

$dbh  = new Dbh();
$conn = $dbh->_connectodb();

$filename     = 'lead_data.csv';
$Branch       = 1;
$AssignedTo   = 2;
$CreatedBy    = 'admin@digidir.com';
$CreatedDate  = date('Y-m-d');
$CreatedTime  = date('H:i:s');

/* ---------------- HELPERS ---------------- */

function formatDateYMD($date)
{
    if (empty($date)) return '';
    try { return (new DateTime($date))->format('Y-m-d'); } catch (Exception $e) { return ''; }
}

function isEmptyRow($row)
{
    foreach ($row as $value) { if (trim($value) !== '') return false; }
    return true;
}

function normalizePhone($phone)
{
    return trim($phone);
}

function getExistingLeadIdByPhone($conn, $phone)
{
    $phoneNorm = normalizePhone($phone);
    if ($phoneNorm === '') return false;

    $phoneEscaped = mysqli_real_escape_string($conn, $phoneNorm);

    $sql = "SELECT LeadID FROM all_lead WHERE ContactPersonPhoneNumber = '$phoneEscaped' LIMIT 1";
    $res = mysqli_query($conn, $sql);
    if ($res && mysqli_num_rows($res) > 0) {
        return mysqli_fetch_assoc($res)['LeadID'];
    }
    return false;
}

/* ---------------- CREATE UNIQUE INDEX ON PHONE ---------------- */
// Ensure this is executed once in DB. You can comment out after first run.
// mysqli_query($conn, "ALTER TABLE all_lead ADD UNIQUE KEY unique_phone (ContactPersonPhoneNumber)");

/* ---------------- FILE OPEN ---------------- */
$file = fopen($filename, 'r');
$i = 0;

while (($row = fgetcsv($file)) !== false) {

    $i++;
    if ($i == 1) continue; // skip header
    if (isEmptyRow($row)) continue;

    /* ---------------- LEAD DATA ---------------- */
    $CompanyName = trim($row[0] ?? '');
    $BusinessType = trim($row[1] ?? '');
    $Services = trim($row[2] ?? '');
    $ContactPersonName = trim($row[3] ?? '');
    $PrimaryDialCode = trim($row[4] ?? '');
    $ContactPersonPhoneNumber = normalizePhone(trim($row[5] ?? ''));
    $ContactPersonEmail = trim($row[6] ?? '');
    $Website = trim($row[7] ?? '');
    $LeadSource = trim($row[8] ?? '');
    $LeadDate = formatDateYMD($row[10] ?? '');
    $City = trim($row[11] ?? '');
    $Status = 'New';

    if ($CompanyName === '' && $ContactPersonPhoneNumber === '') continue;

    /* ---------------- BUILD REMARK STRING ---------------- */
    $remarks = [];
    for ($r = 12; $r < count($row); $r += 2) {
        $rawDate = trim($row[$r] ?? '');
        $text    = trim($row[$r + 1] ?? '');
        if ($text === '') continue;

        $date = formatDateYMD($rawDate);
        $remarks[] = ($date ?: 'NA') . ': ' . $text;
    }
    $finalRemark = implode(' | ', $remarks);
    $finalRemarkEscaped = mysqli_real_escape_string($conn, $finalRemark);

    /* ---------------- DUPLICATE CHECK & INSERT ---------------- */
    $leadID = false;
    $phoneEscaped = mysqli_real_escape_string($conn, $ContactPersonPhoneNumber);

    $sqlLead = "
        INSERT INTO all_lead
        (
            BranchID, CompanyName, TypeofBusiness, Services,
            ContactPersonName, ContactPersonEmail,
            PrimaryDialCode, ContactPersonPhoneNumber,
            Website, City, Status, LeadSource, LeadDate,
            CreatedDate, CreatedTime, CreatedBy, IsActive
        )
        VALUES
        (
            '$Branch', '$CompanyName', '$BusinessType', '$Services',
            '$ContactPersonName', '$ContactPersonEmail',
            '$PrimaryDialCode', '$phoneEscaped',
            '$Website', '$City', '$Status', '$LeadSource', '$LeadDate',
            '$CreatedDate', '$CreatedTime', '$CreatedBy', 1
        )
        ON DUPLICATE KEY UPDATE LeadID=LeadID
    ";

    if (mysqli_query($conn, $sqlLead)) {
        if (mysqli_affected_rows($conn) > 0) {
            // New lead inserted
            $leadID = mysqli_insert_id($conn);
        } else {
            // Duplicate, fetch existing LeadID
            $leadID = getExistingLeadIdByPhone($conn, $ContactPersonPhoneNumber);
        }
    } else {
        echo "Lead insert failed at row $i<br>";
        continue;
    }

    /* ---------------- INSERT REMARK ---------------- */
    if (!empty($finalRemark)) {
        mysqli_query($conn, "
            INSERT INTO lead_remark
            (LeadID, Remark, CreatedDate, CreatedTime, CreatedBy)
            VALUES
            ('$leadID', '$finalRemarkEscaped', '$CreatedDate', '$CreatedTime', '$CreatedBy')
        ");
    }

    /* ---------------- ASSIGNMENT ---------------- */
    mysqli_query($conn, "
        INSERT INTO lead_assignment
        (LeadID, AssignedTo, Status, Remark, CreatedDate, CreatedTime, CreatedBy)
        VALUES
        ('$leadID', '$AssignedTo', '$Status', 'Lead Created',
         '$CreatedDate', '$CreatedTime', '$CreatedBy')
    ");

    echo "Imported LeadID: $leadID<br>";
}

fclose($file);

echo "<br><b>CSV Import Completed Successfully</b>";

?>
