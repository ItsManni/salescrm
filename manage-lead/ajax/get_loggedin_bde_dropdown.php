<?php
@session_start();
require_once('../../include/autoloader.inc.php');

$dbh = new Dbh();
$conn = $dbh->_connectodb();

$BranchID = $_POST['BranchID'];

$Users = new Users($conn);

/*
    If manager/admin:
    $_SESSION['UserID'] = -1

    If BDE:
    $_SESSION['UserID'] = actual user id
*/
$SessionUserID = $_SESSION['UserID'];

$center_user_array = $Users->getUsersBySession($SessionUserID, $BranchID);

echo '<option value="">Please Select BDE</option>';

foreach ($center_user_array as $Center_User)
{
?>
    <option value="<?php echo $Center_User['ID']; ?>">
        <?php echo htmlspecialchars($Center_User['Name']); ?>
    </option>
<?php
}
?>