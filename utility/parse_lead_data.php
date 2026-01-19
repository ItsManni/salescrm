<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
require_once('../include/autoloader.inc.php');

$dbh  = new Dbh();
$conn = $dbh->_connectodb();

/* ---------------- CONFIG ---------------- */
$filename    = 'lead_data.csv';
$Branch      = 1;
$AssignedTo  = 4;
$CreatedBy   = 'saurabh@digidir.com';
$CreatedDate = date('Y-m-d');
$CreatedTime = date('H:i:s');
// $Status      = 'New';

/* ---------------- HELPERS ---------------- */

function formatDateYMD($date)
{
    if (empty($date)) return '';
    try {
        return (new DateTime($date))->format('Y-m-d');
    } catch (Exception $e) {
        return '';
    }
}

function isEmptyRow($row)
{
    foreach ($row as $value) {
        if (trim($value) !== '') return false;
    }
    return true;
}

function normalizePhone($phone)
{
    return trim($phone);
}

/* -------- DUPLICATE CHECK -------- */
function getExistingLeadIdByPhone($conn, $phone)
{
    if ($phone === '') return false;

    $phoneEsc = mysqli_real_escape_string($conn, $phone);
    $sql = "SELECT ID FROM all_lead
            WHERE ContactPersonPhoneNumber = '$phoneEsc'
            LIMIT 1";

    $res = mysqli_query($conn, $sql);

    return ($res && mysqli_num_rows($res) > 0)
        ? mysqli_fetch_assoc($res)['ID']
        : false;
}

/* -------- BUSINESS TYPE IDS -------- */
function getBusinessTypeIds($conn, $csvValue)
{
    if ($csvValue === '') return '';

    $names = array_map('trim', explode(',', $csvValue));
    $ids = [];

    foreach ($names as $name) {
        $nameEsc = mysqli_real_escape_string($conn, $name);
        $sql = "SELECT ID FROM type_of_business
                WHERE LOWER(BusinessName) = LOWER('$nameEsc')
                LIMIT 1";
        $res = mysqli_query($conn, $sql);
        if ($res && mysqli_num_rows($res) > 0) {
            $ids[] = mysqli_fetch_assoc($res)['ID'];
        }
    }
    return implode(',', $ids);
}

/* -------- SERVICE IDS -------- */
function getServiceIds($conn, $csvValue)
{
    if ($csvValue === '') return '';

    $names = array_map('trim', explode(',', $csvValue));
    $ids = [];

    foreach ($names as $name) {
        $nameEsc = mysqli_real_escape_string($conn, $name);
        $sql = "SELECT ID FROM services
                WHERE LOWER(ServiceName) = LOWER('$nameEsc')
                LIMIT 1";
        $res = mysqli_query($conn, $sql);
        if ($res && mysqli_num_rows($res) > 0) {
            $ids[] = mysqli_fetch_assoc($res)['ID'];
        }
    }
    return implode(',', $ids);
}

/* ---------------- FILE OPEN ---------------- */

$file = fopen($filename, 'r');
$rowNo = 0;

while (($row = fgetcsv($file)) !== false) {

    $rowNo++;
    if ($rowNo == 1) continue;        // Skip header
    if (isEmptyRow($row)) continue;  // Skip empty rows

    /* -------- CSV DATA -------- */
    $CompanyName = trim($row[0] ?? '');
    $BusinessCsv = trim($row[1] ?? '');
    $ServiceCsv  = trim($row[2] ?? '');
    $ContactName = trim($row[3] ?? '');
    $DialCode    = trim($row[4] ?? '');
    $Phone       = normalizePhone(trim($row[5] ?? ''));
    $Email       = trim($row[6] ?? '');
    $Website     = trim($row[7] ?? '');
    $LeadSource  = trim($row[8] ?? '');
    $Status  = trim($row[9] ?? '');
    $LeadDate    = formatDateYMD($row[10] ?? '');
    $City        = trim($row[11] ?? '');
    $Remark        = trim($row[12] ?? '');

    if ($CompanyName === '' && $Phone === '') continue;

    /* -------- CONVERT NAMES → IDS -------- */
    $BusinessType = getBusinessTypeIds($conn, $BusinessCsv);
    $Services     = getServiceIds($conn, $ServiceCsv);

    /* -------- CHECK DUPLICATE -------- */
    $leadID = getExistingLeadIdByPhone($conn, $Phone);

    if ($leadID === false) {

        /* -------- INSERT NEW LEAD -------- */
        $phoneEsc = mysqli_real_escape_string($conn, $Phone);

        $sqlLead = "
            INSERT INTO all_lead (
                BranchID, CompanyName, TypeofBusiness, Services,
                ContactPersonName, ContactPersonEmail,
                PrimaryDialCode, ContactPersonPhoneNumber,
                Website, City, Status, LeadSource, LeadDate,
                CreatedDate, CreatedTime, CreatedBy, IsActive, AssignedTo
            ) VALUES (
                '$Branch', '$CompanyName', '$BusinessType', '$Services',
                '$ContactName', '$Email',
                '$DialCode', '$phoneEsc',
                '$Website', '$City', '$Status', '$LeadSource', '$LeadDate',
                '$CreatedDate', '$CreatedTime', '$CreatedBy', 1 , '$AssignedTo'
            )
        ";

        if (!mysqli_query($conn, $sqlLead)) {
            echo "❌ Lead insert failed at row $rowNo<br>";
            continue;
        }

        $leadID = mysqli_insert_id($conn);

        /* -------- INSERT ONE REMARK -------- */
        mysqli_query($conn, "
            INSERT INTO lead_remarks
            (LeadID, Remark, CreatedDate, CreatedTime, CreatedBy)
            VALUES
            ('$leadID', '$Remark',
            '$CreatedDate', '$CreatedTime', '$CreatedBy')
        ");

        /* -------- ASSIGN LEAD -------- */
        mysqli_query($conn, "
            INSERT INTO lead_assignment
            (LeadID, AssignedTo, Status, Remark,
            CreatedDate, CreatedTime, CreatedBy)
            VALUES
            ('$leadID', '$AssignedTo', '$Status', 'Lead Created',
            '$CreatedDate', '$CreatedTime', '$CreatedBy')
        ");

        mysqli_query($conn, "
            INSERT INTO lead_assignment_history
            (LeadID, AssignedTo, Status, Remark,
            CreatedDate, CreatedTime, CreatedBy)
            VALUES
            ('$leadID', '$AssignedTo', '$Status', 'Lead Created',
            '$CreatedDate', '$CreatedTime', '$CreatedBy')
        ");

        echo "✅ Imported LeadID: $leadID<br>";
    }else{
         echo "No Lead";
    }


}

fclose($file);

echo "<br><b>CSV Import Completed Successfully</b>";
