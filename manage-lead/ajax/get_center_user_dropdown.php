<?php
@session_start();
require_once('../../include/autoloader.inc.php');
$dbh = new Dbh();
$conn = $dbh->_connectodb();
$BranchID = $_POST['BranchID'];
$Users = new Users($conn);
$center_user_array = $Users->getAllBDEByBranchID($BranchID);
?>
<option value="">Please Select BDE</option>
<?php
foreach ($center_user_array as $Center_User)
{
?>
    <option value="<?php echo $Center_User['ID']; ?>"><?php echo $Center_User['Name']; ?></option>
<?php
}
?>