<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
require_once('../include/autoloader.inc.php');

$dbh  = new Dbh();
$conn = $dbh->_connectodb();

/* ---------------- CONFIG ---------------- */
$filename    = 'meta_lead_2.csv';
$Branch      = 1;
$AssignedTo  = 6;
$CreatedBy   = 'ujala@digidir.com';
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
/* -------- DUPLICATE CHECK: PHONE FIRST, THEN COMPANY -------- */
function getExistingLeadIdByPhoneOrName($conn, $companyName, $phone)
{


    // If phone not found or blank, check company name
    // if ($companyName !== '') {
    //     $companyEsc = mysqli_real_escape_string($conn, $companyName);
    //     $sql = "SELECT ID FROM all_lead WHERE CompanyName = '$companyEsc' LIMIT 1";
    //     $res = mysqli_query($conn, $sql);
    //     if ($res && mysqli_num_rows($res) > 0) {
    //         return mysqli_fetch_assoc($res)['ID'];
    //     }
    // }

    // if ($phone !== '') {
    //     $phoneEsc = mysqli_real_escape_string($conn, $phone);
    //     $sql = "SELECT ID FROM all_lead WHERE ContactPersonPhoneNumber = '$phoneEsc' LIMIT 1";
    //     $res = mysqli_query($conn, $sql);
    //     if ($res && mysqli_num_rows($res) > 0) {
    //         return mysqli_fetch_assoc($res)['ID'];
    //     }
    // }

    // Check phone first
    // if($companyName == ''){
    //     if ($phone !== '') {
    //         $phoneEsc = mysqli_real_escape_string($conn, $phone);
    //         $sql = "SELECT ID FROM all_lead WHERE ContactPersonPhoneNumber = '$phoneEsc' LIMIT 1";
    //         $res = mysqli_query($conn, $sql);
    //         if ($res && mysqli_num_rows($res) > 0) {
    //             return mysqli_fetch_assoc($res)['ID'];
    //         }
    //     }
    // }

    // if($phone == ''){
    //     if ($companyName !== '') {
    //     $companyEsc = mysqli_real_escape_string($conn, $companyName);
    //     $sql = "SELECT ID FROM all_lead WHERE CompanyName = '$companyEsc' LIMIT 1";
    //     $res = mysqli_query($conn, $sql);
    //     if ($res && mysqli_num_rows($res) > 0) {
    //         return mysqli_fetch_assoc($res)['ID'];
    //     }
    //     }
    // }else{
    //     if ($phone !== '') {
    //         $phoneEsc = mysqli_real_escape_string($conn, $phone);
    //         $sql = "SELECT ID FROM all_lead WHERE ContactPersonPhoneNumber = '$phoneEsc' LIMIT 1";
    //         $res = mysqli_query($conn, $sql);
    //         if ($res && mysqli_num_rows($res) > 0) {
    //             return mysqli_fetch_assoc($res)['ID'];
    //         }
    //     }
    // }
    // // No duplicates found
    // return false;

    // if (empty($phone) && !empty($companyName)) {
    //     // Only company name
    //     $companyEsc = mysqli_real_escape_string($conn, $companyName);
    //     $sql = "SELECT ID FROM all_lead WHERE CompanyName = '$companyEsc' LIMIT 1";
    //     $res = mysqli_query($conn, $sql);
    //     return ($res && mysqli_num_rows($res) > 0) ? true : false;

    // } elseif (!empty($phone) && empty($companyName)) {
    //     // Only phone
    //     $phoneEsc = mysqli_real_escape_string($conn, $phone);
    //     $sql = "SELECT ID FROM all_lead WHERE ContactPersonPhoneNumber = '$phoneEsc' LIMIT 1";
    //     $res = mysqli_query($conn, $sql);
    //     return ($res && mysqli_num_rows($res) > 0) ? true : false;

    // }

   if (!empty($phone) && !empty($companyName)) {
        $phoneEsc   = mysqli_real_escape_string($conn, $phone);
        $companyEsc = mysqli_real_escape_string($conn, $companyName);

        // 1️⃣ Check SAME row (convert both sides)
        $sqlBoth = "
            SELECT ID
            FROM all_lead
            WHERE ContactPersonPhoneNumber = '$phoneEsc'
            AND CONVERT(CompanyName USING utf8mb4) = CONVERT('$companyEsc' USING utf8mb4)
            LIMIT 1
        ";
        $resBoth = mysqli_query($conn, $sqlBoth);

        if ($resBoth && mysqli_num_rows($resBoth) > 0) {
            return false; // same phone + same company
        }

        // 2️⃣ Phone exists?
        $sqlPhone = "
            SELECT ID
            FROM all_lead
            WHERE ContactPersonPhoneNumber = '$phoneEsc'
            LIMIT 1
        ";
        $resPhone = mysqli_query($conn, $sqlPhone);
        $phoneExists = ($resPhone && mysqli_num_rows($resPhone) > 0);

        // 3️⃣ Company exists? (convert)
        $sqlCompany = "
            SELECT ID
            FROM all_lead
            WHERE CONVERT(CompanyName USING utf8mb4) = CONVERT('$companyEsc' USING utf8mb4)
            LIMIT 1
        ";
        $resCompany = mysqli_query($conn, $sqlCompany);
        $companyExists = ($resCompany && mysqli_num_rows($resCompany) > 0);

        // 4️⃣ TRUE only if both exist but NOT in same row
        return ($phoneExists && $companyExists);
    }


    // Default
    return false;

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
$skippedRows = [];      // Rows failed to insert
$duplicateRows = [];    // Rows skipped due to duplicates
$rowNo = 0;             // CSV line number, including header
$totalRows = 0;

while (($row = fgetcsv($file)) !== false) {
    $rowNo++;  // increment per CSV line

    if ($rowNo == 1) continue;        // Skip header
    if (isEmptyRow($row)) continue;   // Skip completely empty rows
     $totalRows++;
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
    $Status      = trim($row[9] ?? '');
    $LeadDate    = formatDateYMD($row[10] ?? '');
    $City        = trim($row[11] ?? '');
    $Remark      = trim($row[12] ?? '');
    $SecondDialCode = trim($row[13] ?? '');
    $SecondPhone    = trim($row[14] ?? '');
    $Budget         = trim($row[15] ?? '');

    if ($CompanyName === '' && $Phone === '') continue;  // Skip empty content rows

    /* -------- CONVERT NAMES → IDS -------- */
    $BusinessType = getBusinessTypeIds($conn, $BusinessCsv);
    $Services     = getServiceIds($conn, $ServiceCsv);

    /* -------- CHECK DUPLICATE -------- */
    $leadID = getExistingLeadIdByPhoneOrName($conn, $CompanyName, $Phone);

    if ($leadID === false) {

        /* -------- INSERT NEW LEAD -------- */
        $phoneEsc = mysqli_real_escape_string($conn, $Phone);

        /* -------- ESCAPE ALL INPUTS -------- */
        $CompanyName     = mysqli_real_escape_string($conn, $CompanyName);
        $BusinessType    = mysqli_real_escape_string($conn, $BusinessType);
        $Services        = mysqli_real_escape_string($conn, $Services);
        $ContactName     = mysqli_real_escape_string($conn, $ContactName);
        $Email           = mysqli_real_escape_string($conn, $Email);
        $DialCode        = mysqli_real_escape_string($conn, $DialCode);
        $PhoneEsc        = mysqli_real_escape_string($conn, $Phone);
        $Website         = mysqli_real_escape_string($conn, $Website);
        $City            = mysqli_real_escape_string($conn, $City);
        $Status          = mysqli_real_escape_string($conn, $Status);
        $LeadSource      = mysqli_real_escape_string($conn, $LeadSource);
        $LeadDate        = mysqli_real_escape_string($conn, $LeadDate);
        $RemarkEsc       = mysqli_real_escape_string($conn, $Remark);
        $SecondDialCode  = mysqli_real_escape_string($conn, $SecondDialCode);
        $SecondPhone     = mysqli_real_escape_string($conn, $SecondPhone);
        $Budget          = mysqli_real_escape_string($conn, $Budget);

        $sqlLead = "
            INSERT INTO all_lead (
                BranchID, CompanyName, TypeofBusiness, Services,
                ContactPersonName, ContactPersonEmail,
                PrimaryDialCode, ContactPersonPhoneNumber,
                Website, City, Status, LeadSource, LeadDate,
                CreatedDate, CreatedTime, CreatedBy, IsActive, AssignedTo, SecondaryDialCode, ContactPersonAlternativeNo, ServiceCost
            ) VALUES (
                '$Branch', '$CompanyName', '$BusinessType', '$Services',
                '$ContactName', '$Email',
                '$DialCode', '$phoneEsc',
                '$Website', '$City', '$Status', '$LeadSource', '$LeadDate',
                '$CreatedDate', '$CreatedTime', '$CreatedBy', 1 , '$AssignedTo', '$SecondDialCode', '$SecondPhone', '$Budget'
            )
        ";

        if (!mysqli_query($conn, $sqlLead)) {
            echo "❌ Lead insert failed at row $rowNo: " . mysqli_error($conn) . "<br>";
            echo "<pre>$sqlLead</pre><br>";
            $skippedRows[] = $rowNo; // store the row that failed
            continue;
        }

        $leadID = mysqli_insert_id($conn); // Get the inserted LeadID

        /* -------- INSERT ONE REMARK -------- */
        mysqli_query($conn, "
            INSERT INTO lead_remarks
            (LeadID, Remark, CreatedDate, CreatedTime, CreatedBy)
            VALUES
            ('$leadID', '$RemarkEsc',
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

    } else {
        echo "⛔ Duplicate found at row $rowNo — skipping insert<br>";
        $duplicateRows[] = $rowNo; // store duplicate row
    }
}

/* -------- SHOW SKIPPED ROWS -------- */
if (!empty($skippedRows)) {
    echo "<b>Failed insert rows:</b> " . implode(", ", $skippedRows) . "<br>";
}

if (!empty($duplicateRows)) {
    echo "<b>Duplicate rows:</b> " . implode(", ", $duplicateRows) . "<br>";
}

/* -------- SHOW TOTAL ROWS -------- */
echo "<b>Total rows processed:</b> $totalRows<br>";



fclose($file);

echo "<br><b>CSV Import Completed Successfully</b>";
