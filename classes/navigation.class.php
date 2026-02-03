<?php
class Navigation extends Core
{
	public $_Nav_Dashboard;
	public $_Nav_Users;
	public $_Nav_Company;
	public $_Nav_Dashboard_Lead;
	public $_Nav_Branch;
	public $_Nav_ManageLead;
	public $_Nav_Configurations;
	public $_Nav_Lead_Analytics;
	public $_Nav_Login_History;
	public $_Nav_Logs;

	public function __construct()
	{
		$this->_Nav_Dashboard = false;
		$this->_Nav_Users = false;
		$this->_Nav_Company = false;
		$this->_Nav_Dashboard_Lead = false;
		$this->_Nav_Branch = false;
		$this->_Nav_ManageLead = false;
		$this->_Nav_Configurations = false;
		$this->_Nav_Lead_Analytics = false;
		$this->_Nav_Login_History = false;
		$this->_Nav_Logs = false;
	}

	public function setNavigation($role)
	{
		$json = file_get_contents('../navigation/roles_navigation.json');
		$nav_array = json_decode($json, true);

		if (!isset($nav_array[$role])) {
			return;
		}

		$temp_nav_array = $nav_array[$role];

		if (in_array("_Nav_Dashboard", $temp_nav_array))
			$this->_Nav_Dashboard = true;

		if (in_array("_Nav_Users", $temp_nav_array))
			$this->_Nav_Users = true;

		if (in_array("_Nav_Company", $temp_nav_array))
			$this->_Nav_Company = true;

		if (in_array("_Nav_Dashboard_Lead", $temp_nav_array))
			$this->_Nav_Dashboard_Lead = true;

		if (in_array("_Nav_Branch", $temp_nav_array))
			$this->_Nav_Branch = true;

		if (in_array("_Nav_ManageLead", $temp_nav_array))
			$this->_Nav_ManageLead = true;

		if (in_array("_Nav_Configurations", $temp_nav_array))
			$this->_Nav_Configurations = true;

		if (in_array("_Nav_Lead_Analytics", $temp_nav_array))
			$this->_Nav_Lead_Analytics = true;

		if (in_array("_Nav_Login_History", $temp_nav_array))
			$this->_Nav_Login_History = true;

		if (in_array("_Nav_Logs", $temp_nav_array))
			$this->_Nav_Logs = true;
	}
}
?>
