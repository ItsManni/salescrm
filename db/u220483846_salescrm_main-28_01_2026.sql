-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 28, 2026 at 11:19 AM
-- Server version: 11.8.3-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u220483846_salescrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_lead`
--

CREATE TABLE `all_lead` (
  `ID` int(11) NOT NULL,
  `BranchID` int(11) NOT NULL DEFAULT -1,
  `CompanyName` varchar(250) NOT NULL DEFAULT '',
  `TypeofBusiness` varchar(250) NOT NULL DEFAULT '',
  `Services` varchar(250) NOT NULL DEFAULT '',
  `ServiceCost` varchar(250) NOT NULL DEFAULT '',
  `ContactPersonName` varchar(200) NOT NULL DEFAULT '',
  `ContactPersonEmail` varchar(200) NOT NULL DEFAULT '',
  `PrimaryDialCode` varchar(50) NOT NULL DEFAULT '',
  `ContactPersonPhoneNumber` varchar(200) NOT NULL DEFAULT '',
  `SecondaryDialCode` varchar(50) NOT NULL DEFAULT '',
  `ContactPersonAlternativeNo` varchar(250) NOT NULL DEFAULT '',
  `Website` varchar(200) NOT NULL DEFAULT '',
  `Country` varchar(50) NOT NULL DEFAULT '',
  `State` varchar(50) NOT NULL DEFAULT '',
  `City` varchar(200) NOT NULL DEFAULT '',
  `Address` varchar(256) NOT NULL DEFAULT '',
  `AssignedTo` varchar(200) NOT NULL DEFAULT '',
  `Status` varchar(200) NOT NULL DEFAULT 'Created',
  `Remark` varchar(256) NOT NULL DEFAULT '',
  `LeadSource` varchar(50) NOT NULL DEFAULT '',
  `TelecallerLeadID` int(11) NOT NULL DEFAULT -1,
  `LeadDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `all_lead`
--

INSERT INTO `all_lead` (`ID`, `BranchID`, `CompanyName`, `TypeofBusiness`, `Services`, `ServiceCost`, `ContactPersonName`, `ContactPersonEmail`, `PrimaryDialCode`, `ContactPersonPhoneNumber`, `SecondaryDialCode`, `ContactPersonAlternativeNo`, `Website`, `Country`, `State`, `City`, `Address`, `AssignedTo`, `Status`, `Remark`, `LeadSource`, `TelecallerLeadID`, `LeadDate`, `CreatedTime`, `CreatedDate`, `CreatedBy`, `IsActive`) VALUES
(1, 1, 'Bug Bucks India', '3', '4', '', 'Rituraj', 'Info@bigbucksindia.com', '91', '9289742923', '', '', 'bigbucksindia.com', '', '', '', '', '4', 'Proposal Sent', '', 'Direct WhatsApp', -1, '', '13:34:13', '2026-01-19', 'saurabh@digidir.com', 1),
(2, 1, 'AASA by Pooja', '4', '12,4', '', 'Pooja', '', '91', '9818981207', '', '', '', '', '', '', '', '4', 'No Action Taken', '', 'Reference', -1, '', '13:34:13', '2026-01-19', 'saurabh@digidir.com', 1),
(3, 1, 'Dr. Neeraj Manchanda', '6', '2,1', '', 'Neeraj Manchanda', '', '91', '9811113404', '', '', '', '', '', '', '', '4', 'Follow-up', '', 'Reference', -1, '', '13:34:13', '2026-01-19', 'saurabh@digidir.com', 1),
(4, 1, 'Have On Deal', '3', '7,6', '', 'Vikash Sinha', 'digitalmarketing.hod@gmail.com', '91', '8130036651', '', '', 'haveondeal.com', '', '', '', '', '4', 'Follow-up', '', 'Website', -1, '', '13:34:13', '2026-01-19', 'saurabh@digidir.com', 1),
(5, 1, 'Go Recycle', '10', '4', '', 'Hitesh Yadav', 'hitesh.gorecycle@gmail.com', '91', '9311174274', '', '', 'gorecycle.in', '', '', '', '', '4', 'Follow-up', '', 'Direct WhatsApp', -1, '', '13:34:13', '2026-01-19', 'saurabh@digidir.com', 1),
(6, 1, 'The Pink Feather', '9', '4', '', 'Shivam Sachdeva', 'thepinkfeatherindia@gmail.com', '91', '7206110644', '', '', '', '', '', '', '', '4', 'Follow-up', '', 'Website', -1, '', '13:34:13', '2026-01-19', 'saurabh@digidir.com', 1),
(7, 1, 'YALI Awakens', '12', '4,3,2', '', 'Ajay Shukla', 'ashukla63@yahoo.com', '91', '9930062014', '', '', 'authorajayshukla.in', '', '', '', '', '4', 'In Progress', '', 'Reference', -1, '', '13:34:13', '2026-01-19', 'saurabh@digidir.com', 1),
(8, 1, 'Style Store By Neha', '9', '10,7,3', '', 'Neha', 'Origen_fitness@yahoo.in', '+91', '880098812', '+91', '', '', '', 'Select State', '', '', '5', 'Proposal Sent', '', 'Meta Ads', -1, '2026-01-20', '13:20:01', '2026-01-21', 'naina.gupta@digidir.com', 1),
(9, 1, 'Successive Digital', '24', '3', '', 'Shrishti', 'shrishti.tomar@successive.tech', '+91', '8851203804', '+91', '', 'https://successive.tech/', '', 'Select State', '', '', '5', 'Proposal Sent', '', 'SEO', -1, '2026-01-20', '18:05:21', '2026-01-21', 'naina.gupta@digidir.com', 1),
(10, 1, 'Derma S-thetic Clinic', '17', '10,7,4,3', '', 'Ranjan', 'dermaestheticc11@gmail.com', '+91', '8005781749', '+91', '', 'https://www.dermaestheticc.com/index.php', '', 'Select State', '', '', '5', 'Proposal Sent', '', 'SEO', -1, '2026-01-20', '18:09:04', '2026-01-21', 'naina.gupta@digidir.com', 1),
(11, 1, 'Wild Flip Safari', '1', '7,6,4,3', '', 'Frank', 'fmalamia24@gmail.com', '+91', '2556555319', '+91', '', 'http://www.wildflipsafaris.com/', '', 'Select State', '', '', '5', 'Meeting Scheduled', '', 'SEO', -1, '2026-01-21', '18:11:51', '2026-01-21', 'naina.gupta@digidir.com', 1),
(12, 1, 'Shunox', '56', '14,10,7,6,4,3', '', 'Arjun Agarwal', 'Arjun@shunox.in', '+91', '8860336339', '+91', '', 'shunox.co.in', '', 'Select State', '', '', '4', 'In Progress', '', 'Existing Client/Old Client', -1, '2016-01-01', '18:14:56', '2026-01-21', 'saurabh@digidir.com', 1),
(13, 1, 'Kusheldigi', '24', '14,7,6,4,3', '', 'Shubham ', 'shubham@kusheldigi.com', '+91', '9045301702', '+91', '', 'krcustomizer.com', '', 'Select State', '', '', '4', 'Proposal Sent', '', 'Existing Client/Old Client', -1, '1025-12-29', '18:21:32', '2026-01-21', 'saurabh@digidir.com', 1),
(14, 1, 'Ayush Scholar', '20', '14,7,6,4,3', '', 'sonam', 'shreya.ayuscholar@gmail.com', '+91', '9548201270', '+91', '', 'ayuscholar.com', '', 'Select State', '', '', '6', 'Proposal Sent', '', 'SEO', -1, '2026-01-14', '18:25:20', '2026-01-21', 'saurabh@digidir.com', 1),
(15, 1, 'Fun Forge', '37', '15,5,4', '', 'Tarique', 'tariquefaraz@funnforgegames.in', '+91', '970943768', '+91', '', '', '', 'Select State', '', '', '5', 'Proposal Sent', '', 'Direct WhatsApp', -1, '2026-01-19', '12:22:33', '2026-01-22', 'naina.gupta@digidir.com', 1),
(16, 1, 'Royal Group', '13', '7,4', '', 'Ashish', '', '+91', '989188993', '+91', '', '', '', 'Select State', '', '', '5', 'In Progress', '', 'Telephonic', -1, '2026-01-19', '18:28:50', '2026-01-21', 'naina.gupta@digidir.com', 1),
(17, 1, 'Print Perfection India', '5', '14,7,6,5,4,3,2', '', 'Kannav Arora', 'info@printperfectionindia.com', '+91', '9810086080', '+91', '', 'printperfectionindia.com', '', 'Select State', '', '', '6', 'Pending Decision', '', 'Reference', -1, '2025-11-19', '14:26:59', '2026-01-24', 'saurabh@digidir.com', 1),
(18, 1, 'Wellness Mahotsav', '28', '7,6,3', '', 'Ranjit K Mishra', '', '+91', '9205905551', '+91', '', 'wellnessmahotsav.com', '', 'Select State', '', '', '4', 'In Progress', '', 'Direct WhatsApp', -1, '2026-01-20', '00:04:40', '2026-01-22', 'saurabh@digidir.com', 1),
(19, 1, 'maakamakhyavedicastrology.com', '30', '6', '', 'Shalu', 'shaluboriwal@gmail.com', '+91', '8860818148', '+91', '', 'maakamakhyavedicastrology.com', '', 'Select State', '', '', '5', 'Not Interested', '', 'SEO', -1, '2026-01-21', '08:52:40', '2026-01-22', 'saurabh@digidir.com', 1),
(20, 1, '', '25', '4', '', 'Prashant Bhagat', '', '+91', '9881390721', '+91', '', '', '', 'Select State', '', '', '5', 'In Progress', '', 'Meta Ads', -1, '2026-01-22', '13:46:17', '2026-01-22', 'naina.gupta@digidir.com', 1),
(21, 1, 'Aristotle Consultancy', '15', '1', '', 'Sanjeev Lamba', '', '+91', '9818013024', '+91', '', 'https://www.aristotleconsultancy.com/', '', 'Select State', '', '', '5', 'In Progress', '', 'SEO', -1, '2026-01-23', '10:51:45', '2026-01-23', 'naina.gupta@digidir.com', 1),
(22, 1, 'MG Enterprise', '2', '4', '', 'Savi Kumar Govind', '', '+91', '9150198501', '+91', '', '', '', 'Select State', '', '', '5', 'In Progress', '', 'Meta Ads', -1, '2026-01-23', '12:45:55', '2026-01-27', 'naina.gupta@digidir.com', 1),
(23, 1, '', '2', '4', '', 'SaviKumar', '', '+91', '9150198501', '+91', '', '', '', 'Select State', '', '', '5', 'Dead', '', 'Meta Ads', -1, '2026-01-23', '12:52:22', '2026-01-27', 'naina.gupta@digidir.com', 1),
(24, 1, 'happy Organs', '40', '7,4,3', '', 'Dhruv', 'marketing1@happyorgans.in', '+91', '9311914860', '+91', '', 'happyorgans.in', '', 'Select State', '', '', '4', 'Proposal Sent', '', 'Direct Call', -1, '2026-01-22', '20:19:34', '2026-01-23', 'saurabh@digidir.com', 1),
(25, 1, 'Lift N Go Logistics', '5', '7,6,4,3', '', 'Jigar Kalodia', '', '+91', '8588808581', '+91', '', 'goliftngo.com', '', 'Select State', '', '', '4', 'Proposal Sent', '', 'Direct Call', -1, '2026-01-24', '14:21:31', '2026-01-24', 'saurabh@digidir.com', 1),
(26, 1, 'Divy Power Pvt Ltd', '33', '15,7,6,4', '', 'Akshay Pandey', 'akshaypandey0024@gmail.com', '+91', '8826781662', '+91', '', 'www.divypower.in', '', 'Select State', '', '', '4', 'No Action Taken', '', 'Direct WhatsApp', -1, '2026-01-24', '17:53:44', '2026-01-24', 'saurabh@digidir.com', 1),
(27, 1, 'imxplorer', '1', '1', '', 'Samar Singh', 'samar@imxplorer.com', '+91', '9211736232', '+91', '', 'www.imxplorer.com', 'India', 'Uttar Pradesh', 'Greater Noida', 'Greater Noida West', '4', 'No Action Taken', '', 'SEO', -1, '2026-02-24', '18:29:25', '2026-01-24', 'saurabh@digidir.com', 1),
(28, 1, '', '25', '1', '', 'Surya Thakur', '', '+91', '7906861071', '+91', '', '', 'India', 'Select State', '', '', '5', 'In Progress', '', 'SEO', -1, '2026-01-27', '12:15:33', '2026-01-27', 'naina.gupta@digidir.com', 1),
(29, 1, '', '25', '4', '', 'Amit', '', '+44', '741745817', '+91', '', '', '', 'Select State', '', '', '5', 'In Progress', '', 'Direct WhatsApp', -1, '2026-01-27', '12:25:46', '2026-01-27', 'naina.gupta@digidir.com', 1),
(30, 1, 'Mansoori Art Glass', '18', '4', '', 'Sameer', '', '+91', '7827474446', '+91', '', '', '', 'Select State', '', '', '5', 'In Progress', '', 'Direct Call', -1, '2026-01-27', '13:08:23', '2026-01-27', 'naina.gupta@digidir.com', 1),
(31, 1, 'Regale Home Decor', '44', '6,7', '', 'Namrata', 'namratakochhar@hotmail.com', '91', '9810274229', '', '', 'https://www.regalehome.com/', '', '', 'Delhi', '', '6', 'Not Interested', '', 'Meta Ads', -1, '2026-07-16', '08:21:33', '2026-01-27', 'ujala@digidir.com', 1),
(32, 1, 'Pridané', '2', '4,6,7', '', 'Danish Raina', 'danishraina@gmail.com', '91', '880073688', '', '', 'http://www.pridane.com/', '', '', 'Delhi', '', '6', 'Not Interested', '', 'Meta Ads', -1, '2026-07-16', '08:21:33', '2026-01-27', 'ujala@digidir.com', 1),
(33, 1, 'Kara Bags', '55', '4,6,7', '', 'Anup Kulkarni', 'anup@karabags.com', '91', '8805032003', '', '', 'https://karabags.com/', '', '', 'Delhi', '', '6', 'Pending Decision', '', 'Meta Ads', -1, '2026-07-18', '08:21:33', '2026-01-27', 'ujala@digidir.com', 1),
(34, 1, 'R Cube Enterprises', '18', '3,4', '', 'Rajat', 'info@polygoncorporation.com', '91', '8178676113', '', '', 'https://polygoncorporation.com/', '', '', 'Greater Noida west', '', '6', 'Not interested', '', 'Meta Ads', -1, '2026-07-19', '08:21:33', '2026-01-27', 'ujala@digidir.com', 1),
(35, 1, 'Adorable stuff', '37', '6,7', '', 'Aastha Arora', 'aasthaarora006@gmail.com', '91', '98735951296', '', '', '', '', '', 'New Delhi', '', '6', 'Pending Decision', '', 'Meta Ads', -1, '2026-07-22', '08:21:33', '2026-01-27', 'ujala@digidir.com', 1),
(36, 1, 'kozon india solutions pvt ltd', '8', '2,3', '', 'ARVIND KASHYAP', 'arvind.kozon@gmail.com', '91', '9910550727', '', '', 'https://www.kozon.co.in/', '', '', '', '', '6', 'Pending Decision', '', 'SEO', -1, '2026-07-25', '08:21:33', '2026-01-27', 'ujala@digidir.com', 1),
(37, 1, 'Eat Right Basket', '10', '6,7', '', 'Krishna', 'krishna@satatsampada.com', '91', '9315137415', '', '', 'https://www.eatrightbasket.com/', '', '', 'Noida', '', '6', 'Converted', '', 'SEO', -1, '2026-07-22', '08:21:33', '2026-01-27', 'ujala@digidir.com', 1),
(38, 1, 'Pure Indian Herbs', '43', '1', '', 'Alok', 'alokagarwal84@gmail.com', '91', '9990169137', '', '', 'https://www.pureindianherbs.com/', '', '', 'Jhasi', '', '6', 'Pending Decision', '', 'SEO', -1, '2026-07-23', '08:21:33', '2026-01-27', 'ujala@digidir.com', 1),
(39, 1, 'Pop street', '9', '1', '', 'Karan Kalyani', '', '91', '9899785523', '', '', 'https://popstreetkids.com/', '', '', 'Noida', '', '6', 'Lost - Budget Issue', '', 'SEO', -1, '2026-07-29', '08:21:33', '2026-01-27', 'ujala@digidir.com', 1),
(40, 1, 'STILTON CAFE', '27', '4,7', '', 'Sushant Malani', 'sushantmalani@gmail.com', '91', '9266739993', '', '', 'https://share.google/DHYGYnBYLu50BqBRN', '', '', 'Delhi', '', '6', 'Not Interested', '', 'Meta Ads', -1, '2026-07-29', '08:21:33', '2026-01-27', 'ujala@digidir.com', 1),
(41, 1, 'Happietail', '52', '3,4', '', 'Shreya Omar', 'shreyaamazon0304@gmail.com', '91', '8787212546', '', '', 'https://happietail.in/', '', '', 'Kanpur', '', '6', 'Lost - Competitor', '', 'Meta Ads', -1, '2026-07-24', '08:21:33', '2026-01-27', 'ujala@digidir.com', 1),
(42, 1, 'Mysig', '44', '2', '', 'Shivanshi', '', '', '', '', '', 'https://mysig.in/', '', '', 'Canada', '', '6', 'Pending Decision', '', 'Instagram', -1, '2026-07-24', '08:21:33', '2026-01-27', 'ujala@digidir.com', 1),
(43, 1, 'Afterbricks Consulting Pvt. Ltd.', '13', '7', '', 'Vikas Bhagat', 'vbhagat.delhi@gmail.com', '91', '9811255973', '', '', '', '', '', 'Noida', '', '6', 'Follow-up', '', 'Meta Ads', -1, '2026-07-31', '08:21:33', '2026-01-27', 'ujala@digidir.com', 1),
(44, 1, 'Ocean Holidayz', '1', '7', '', 'Vineet Kumar', 'vntkumar31@gmail.com', '91', '8800171007', '', '', 'https://www.oceanholidayz.com/', '', '', 'Ghaziabad', '', '6', 'Lost - Budget Issue', '', 'Meta Ads', -1, '2026-07-31', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(45, 1, 'Suvidha Coolings', '8', '7', '', 'Praveen', 'praveen@suvidhacooling.com', '91', '9811015664', '', '', 'https://www.suvidhacoolings.com/', '', '', 'Noida Extension', '', '6', 'Pending Decision', '', 'SEO', -1, '2026-07-31', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(46, 1, 'Kavita Saree Emporium', '9', '7', '', 'Mohit Gupta', 'mohitgupta27@gmail.com', '91', '9560335556', '', '', 'https://www.instagram.com/accounts/login/?next=%2Fkavitasareeemporium%2F&source=omni_redirect', '', '', 'Lajpat Nagar', '', '6', 'Lost - Budget Issue', '', 'Meta Ads', -1, '2026-08-04', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(47, 1, 'Saranity Solutions Private Limited/Moveroo', '50', '4', '', '???????? ?????', 'managingdirector@saranitysolutions.com', '91', '8622998866', '', '', 'https://www.moveroo.in/', '', '', 'Chandhigarh', '', '6', 'Converted', '', 'Meta Ads', -1, '2026-07-27', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(48, 1, 'Varsha Kriti', '9', '2,4', '', 'Sharanya Gupta', 'sharanyagupta99@yahoo.in', '91', '9650134666', '', '', 'https://www.instagram.com/varshakriti/?hl=en', '', '', 'Delhi', '', '6', 'Pending Decision', '', 'Meta Ads', -1, '2026-08-02', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(49, 1, 'Hitesh Kundagavini', '24', '6,7', '', 'Hitesh Kundagavini', 'hiteshgoud8092@gmail.com', '91', '7330690244', '', '', 'www.flamingoaura.com', '', '', 'Hyderabad', '', '6', 'Lost - Budget Issue', '', 'Meta Ads', -1, '2026-08-04', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(50, 1, 'Jazbaat', '9', '6,7', '', 'Aashi Kapoor', 'kapooraashi97@gmail.com', '91', '9610658488', '', '', 'https://www.instagram.com/jazbaat_by_haraashika/?hl=en', '', '', 'Varanasi', '', '6', 'Lost - Budget Issue', '', 'Meta Ads', -1, '2026-08-04', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(51, 1, 'The Bull School', '31', '7', '', 'Aniket Jaiswal', 'aniketjaiswal7666@gmail.com', '91', '7666889825', '', '', 'https://www.instagram.com/bschool_bulls/?hl=en', '', '', '', '', '6', 'Not Interested', '', 'Meta Ads', -1, '2026-08-04', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(52, 1, 'Flydining', '25', '6,7', '', 'samir', 'dhingrasamir@gmail.com', '91', '9815303553', '', '', 'https://www.flydining.com/', '', '', '', '', '6', 'Lost - Budget Issue', '', 'Meta Ads', -1, '2026-08-06', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(53, 1, 'Dripmyfit', '9', '6,7', '', 'Arshdeep Singh', 'dhingrasamir@gmail.com', '91', '9650118030', '', '', 'https://www.flydining.com/', '', '', '', '', '6', 'Not Interested', '', 'Meta Ads', -1, '2026-07-31', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(54, 1, 'Thenga', '44', '1', '', 'Aditya Thakur', 'adityachhonker@gmail.com', '91', '7818839566', '', '', 'Thenga.coco.com', '', '', '', '', '6', 'Follow-up', '', 'Direct Whatsapp', -1, '2026-08-07', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(55, 1, 'Trezi/Primelead', '18', '3', '', 'Rishab', 'rishabh.j@trezi.com', '91', '9711378382', '', '', 'Trezi.com', '', '', '', '', '6', 'Follow-up', '', 'Reference', -1, '2026-08-07', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(56, 1, 'Orion', '32', '1', '', 'Kavya', '', '91', '7483250321', '', '', 'theorioninternational.com', '', '', '', '', '6', 'Follow-up', '', 'Reference', -1, '', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(57, 1, 'Thryvv health and fitness pvt ltd', '38', '6,7', '', 'Prathik Korwar', 'Prathikkorwar29@gmail.com', '91', '7975867302', '', '', '', '', '', '', '', '6', 'Dead', '', 'Meta Ads', -1, '2026-08-12', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(58, 1, 'Cosmo Coworks Balewadi', '51', '6,7', '', 'Cosmo Coworks Balewadi', 'dhaigude.Sumit@gmail.com', '91', '9225577022', '', '', 'https://cosmocoworks.com/#', '', '', '', '', '6', 'Lost - Budget Issue', '', 'Meta Ads', -1, '2026-08-03', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(59, 1, 'Fydo - Making Loyalty Rewarding', '25', '6,7', '', 'Satyajeet Patnayak', 'satyajeet@fydo.in', '91', '9031716589', '', '', 'https://fydo.in/', '', '', '', '', '6', 'Converted', '', 'Meta Ads', -1, '2026-08-12', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(60, 1, 'Emblem', '55', '3,4', '', 'vivek Agarwal', 'emblemluggage@gmail.com', '91', '9350209294', '', '', 'https://emblemluggage.com/', '', '', '', '', '6', 'On Hold', '', 'Meta Ads', -1, '2026-08-06', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(61, 1, 'Capvest', '3', '6,7', '', 'Nalinee', 'nalinee@capvest.me', '971', '562017799', '', '', 'https://www.capvest.com/', '', '', '', '', '6', 'Not Interested', '', 'LinkedIn', -1, '2026-08-22', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(62, 1, 'CARJAX - Masters of Grooming & Detailing', '14', '6,7', '', 'Jyoti Sinha', 'info@carjaxautocare.com', '91', '8095502341', '', '', 'https://carjaxautocare.com/', '', '', '', '', '6', 'Pending Decision', '', 'Meta Ads', -1, '2026-08-16', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(63, 1, 'Srank Bazzar', '58', '9', '', 'Shashi', '', '91', '8102109100', '', '', 'www.srankbazzar.com', '', '', 'Noida', '', '6', 'Follow-up', '', 'Reference', -1, '2026-08-13', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(64, 1, 'Spin Go', '14', '3,4', '', 'Shaqib', '', '91', '9927544058', '', '', 'www.thespingo.com', '', '', 'Patna', '', '6', 'Not Interested', '', 'Reference', -1, '2026-08-13', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(65, 1, 'Kasganj Hotel', '28', '2,3', '', '-', '', '91', '7417480603', '', '', '', '', '', '', '', '6', 'Pending Decision', '', 'SEO', -1, '2026-08-16', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(66, 1, 'Volkswagen', '14', '2', '', 'Rudraneel', '', '91', '8368324150', '', '', '', '', '', 'Noida', '', '6', 'Not Interested', '', 'SEO', -1, '2026-08-17', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(67, 1, 'Fallal by misha', '9', '4', '', 'Misha', '', '91', '9311473763', '', '', '', '', '', '', '', '6', 'Not Interested', '', 'SEO', -1, '', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(68, 1, 'Intechnative/Primelead', '32', '6,7', '', '-', '', '91', '9999076111', '', '', '', '', '', '', '', '6', 'Pending Decision', '', 'SEO', -1, '', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(69, 1, 'Clt Acadmay', '31', '4', '', 'sysh', '', '971', '562177244', '', '', '', '', '', '', '', '6', 'Dead', '', 'SEO', -1, '', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(70, 1, 'Tarot by Sakshi', '30', '2,3', '', 'sakshi rajput', '', '91', '93108 63163', '', '', '', '', '', '', '', '6', 'Not Interested', '', 'SEO', -1, '', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(71, 1, 'Naturtrust', '57', '', '', 'Neeraj', 'neeraj.com@naturtust.com', '91', '7428912605', '', '', '', '', '', '', '', '6', 'Not Interested', '', 'SEO', -1, '2026-12-17', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(72, 1, 'Kissaq', '24', '', '', 'Swarna', 'swarna@dignologysolution.com', '91', '9121373846', '', '', '', '', '', '', '', '6', 'Pending Decision', '', 'SEO', -1, '2026-08-21', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(73, 1, 'Delsey paris', '55', '1', '', 'Ritesh', 'Ritesh_thakur@delseyindia.com', '91', '9818354337', '', '', '', '', '', '', '', '6', 'Pending Decision', '', 'SEO', -1, '2026-08-20', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(74, 1, 'VIRK', '59', '3', '', 'Shivam virk', 'info@virkdigitalmedia.com', '91', '8427739419', '', '', '', '', '', '', '', '6', 'Pending Decision', '', 'SEO', -1, '2026-12-17', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(75, 1, 'SR industry', '59', '3,6,7', '', 'Mahima maytra', 'mahimasrind.net', '91', '8780671346', '', '', 'www.srind.net', '', '', '', '', '6', 'Follow-up', '', 'Reference', -1, '2026-08-21', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(76, 1, 'Packaging India', '59', '1', '', 'Shreya', '', '91', '7065323838', '', '', '', '', '', '', '', '6', 'Dead', '', 'SEO', -1, '2026-08-25', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(77, 1, 'Pilgrim', '17', '1', '', 'Sanjanna', 'rohankhem@gmail.com', '230', '59148574', '', '', '', '', '', '', '', '6', 'Lost - Budget Issue', '', 'SEO', -1, '2026-08-22', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(78, 1, 'Elevate Zone', '9', '1', '', 'Neeniya', 'neeniya@elevate-zone.com', '971', '525236192', '', '', 'elevatezone.com', '', '', '', '', '6', 'Pending Decision', '', 'SEO', -1, '2026-08-21', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(79, 1, 'Folklore', '9', '1', '', 'Sachin', 'it@folklorecollections.com', '91', '9818731232', '', '', 'folklorecollections.com', '', '', '', '', '6', 'Dead', '', 'SEO', -1, '', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(80, 1, 'Researchrome', '33', '1', '', 'Sayan Das', 'Sayandas@reserachroma.com', '91', '9287099671', '', '', 'www.reasearchroma.com', '', '', '', '', '6', 'Dead', '', 'LinkedIn', -1, '', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(81, 1, 'wealthsmileand pvt. ltd', '13', '1', '', 'Mr.Ashwerya', 'propulenz@gmail.com', '91', '8468919292', '', '', '', '', '', '', '', '6', 'Follow-up', '', 'Reference', -1, '', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(82, 1, 'Shanti Pandian', '9', '3,4', '', 'Shanti', 'shantipandian93@gamil.com', '91', '659 4884209', '', '', '', '', '', '', '', '6', 'Follow-up', '', 'SEO', -1, '2026-12-27', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(83, 1, 'Walksea industry', '10', '1', '', 'Yash Raj', 'yashraj@walkseaindustries.com', '91', '9810684997', '', '', 'https://walkseaindustries.com/', '', '', '', '', '6', 'Converted', '', 'Reference', -1, '2026-08-17', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(84, 1, 'Cosmic Reality', '13', '1', '', 'Ankur Nagia', 'cosmicrealitydubai@gamil.com', '91', '9810175925', '', '', 'www.cosmic-reality.com', '', '', '', '', '6', 'Pending Decision', '', 'SEO', -1, '2026-01-02', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(85, 1, 'The Shore Hotel', '28', '2,4,10,5', '', 'Pragya', 'pragyateotia27@gmail.com', '91', '85870 03898', '', '', 'https://bluewaves.in/best-hotel-in-rishikesh.php', '', '', 'Rishikesh', '', '6', 'Pending Decision', '', 'SEO', -1, '2026-09-02', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(86, 1, 'Polar India', '2', '16,17', '', 'Kiran', 'founder@polarindia.co', '91', '9657011117', '', '', '', '', '', 'Aurangabad', '', '6', 'Not Interested', '', 'Meta Ads', -1, '2026-09-02', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(87, 1, 'BAGAI Steel Syndicate', '57', '7,6,3', '', 'Sameer Bagai', 'Sameer@bagai.in', '91', '9810157379', '', '', 'https://www.bagaisteel.com/', '', '', 'Ghaziabad', '', '6', 'Pending Decision', '', 'Meta Ads', -1, '2026-09-04', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(88, 1, 'Esencia salon', '6', '7', '', 'Manoj', 'manojchetan16@gmail.com', '91', '7019759452', '', '', 'https://www.instagram.com/esenciasalonandskincare/?hl=en', '', '', 'Bengaluru', '', '6', 'Pending Decision', '', 'Meta Ads', -1, '2026-09-03', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(89, 1, 'Princess Kitchen', '8', '4', '', 'PRINCESS KITCHEN', 'princesskitchen09@gmail.com', '91', '9169442121', '', '', 'https://www.princesskitchen.co.in/', '', '', 'Mohammad Wadi', '', '6', 'Pending Decision', '', 'Meta Ads', -1, '2026-09-05', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(90, 1, 'ANG IMPEX/LDYC london', '56', '4,6,7', '', 'Navveen N Arora', 'navveennarora@gmail.com', '91', '9999991166', '', '', 'https://lydclondon.in/', '', '', 'Noida', '', '6', 'Follow-up', '', 'Meta Ads', -1, '2026-09-08', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(91, 1, 'Sernexuss Immigration', '22', '10', '', 'Nitesh', 'nitesh@sernexuss.in', '91', '8920346836', '', '', 'https://sernexuss.com/', '', '', 'Delhi', '', '6', 'Pending Decision', '', 'SEO', -1, '2026-09-09', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(92, 1, 'Modern giraffe', '9', '3,4', '', 'Omkesh Chaturvedi', 'omkeshchaturvedi1@gmail.com', '91', '9899828146', '', '', 'https://www.instagram.com/modern.giraffe/', '', '', 'Faridabad', '', '6', 'Converted', '', 'Meta Ads', -1, '2026-09-09', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(93, 1, 'River of Herbs', '17', '4', '', 'Pedda Raju Rohit Kumar', 'rohit89kumar22@gmail.com', '91', '9160798100', '', '', 'https://riverofherbs.com/', '', '', 'Bengaluru', '', '6', 'Dead', '', 'Meta Ads', -1, '2026-09-11', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(94, 1, 'The Brass Company', '57', '4,3', '', 'Kshitiz Saxena', 'kshitizsaxena1234@gmail.com', '91', '9368125857', '', '', 'https://thebrasscompany.com/', '', '', 'Muradabad', '', '6', 'Not Interested', '', 'Meta Ads', -1, '2026-09-05', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(95, 1, 'MG south Indian Resturant', '27', '1', '', 'Sathish Babu', 'sathish052@gmail.com', '91', '9940290085', '', '', 'https://share.google/fdwhhcYPtkcHBd2fX', '', '', 'Mumbai', '', '6', 'Not Interested', '', 'Meta Ads', -1, '2026-09-11', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(96, 1, 'Aone Electricals', '33', '2', '', 'Mohammad Huzaif', 'mohammadhuzaif6904@gmail.com', '91', '7022516735', '', '', '', '', '', 'Bengaluru', '', '6', 'Lost - Budget Issue', '', 'Meta Ads', -1, '2026-09-13', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(97, 1, 'Cocoa', '9', '16,17', '', 'Ravinder Mathur', '', '91', '98100 11389', '', '', 'https://cocoastore.in/', '', '', 'Delhi', '', '6', 'Lost - Budget Issue', '', 'SEO', -1, '2026-09-12', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(98, 1, 'Dhwani Astro', '30', '6,7', '', 'Atul', 'atulsh1956@gmail.com', '91', '7303554412', '', '', 'https://shop.dhwaniastro.com/', '', '', 'Delhi', '', '6', 'Junk', '', 'Meta Ads', -1, '2026-09-08', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(99, 1, 'Aradhna', '46', '1', '', 'Aradhna', 'smith.aradhana@gmail.com', '91', '9211962955', '', '', '', '', '', 'Ghaziabad', '', '6', 'Junk', '', 'Direct Whatsapp', -1, '2026-09-05', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(100, 1, 'Allegianttech', '45', '6,7', '', 'Vaibhav', 'Vaibhav@allegianttech.net', '91', '9821949196', '', '', 'https://allegianttech.us/', '', '', 'Delhi', '', '6', 'Pending Decision', '', 'Direct Whatsapp', -1, '2026-09-17', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(101, 1, 'Varadmedical', '40', '16,17', '', 'Nilesh Raut', 'varadmedical49@gmail.com', '91', '9404950448', '', '', '', '', '', 'Aurangabad', '', '6', 'Dead', '', 'Meta Ads', -1, '2026-09-11', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(102, 1, 'Manish travel', '1', '2', '', 'Manish', '', '91', '8532869789', '', '', '', '', '', 'Noida', '', '6', 'Follow-up', '', 'Direct Whatsapp', -1, '2026-09-19', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(103, 1, 'Money Centric', '31', '', '', 'Prashant Mudgal', 'pmkumar2707@gmail.com', '91', '9599070504', '', '', '', '', '', 'Faridabad', '', '6', 'Pending Decision', '', 'Meta Ads', -1, '2026-09-11', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(104, 1, 'Cruise Professionals LLP', '1', '3', '', 'Nishith Saxena', 'nishith@cruiseprofessionals.in', '91', '9810180598', '', '', 'https://cruiseprofessionals.in/', '', '', 'Ghaziabad', '', '6', 'Pending Decision', '', 'Meta Ads', -1, '2026-09-19', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(105, 1, 'Out Set Lights', '57', '', '', 'sarthak chhabra', 'sarthak13chhabra@gmail.com', '91', '9917266677', '', '', 'https://outsetlights.com/', '', '', 'Muradabad', '', '6', 'Follow-up', '', 'SEO', -1, '2026-09-24', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(106, 1, 'Bharti Opulence', '30', '', '', 'Suniil Moar', 'moar_07@yahoo.com', '91', '9873683038', '', '', '', '', '', 'Faridabad', '', '6', 'Follow-up', '', 'Meta Ads', -1, '2026-09-24', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(107, 1, 'Zee Learn ZICA', '19', '6', '', 'Sagar Kumar', 'sagar.kumar@zeelearn.com/ chirag@didm.in', '91', '8800804432', '', '', '', '', '', 'Pitampura', '', '6', 'Converted', '', 'Meta Ads', -1, '2026-09-24', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(108, 1, 'Radico Kaitan', '25', '9', '', 'Vikesh Jain', 'radicokhaitan.8pm@outlook.com', '91', '7303243646', '', '', 'https://radicokhaitan.com/', '', '', 'Delhi', '', '6', 'Pending Decision', '', 'Direct Whatsapp', -1, '2026-09-30', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(109, 1, 'Superkings Home Appliences', '57', '3,4,6,7', '', 'Lakshay', 'Celloelectrical@gmail.com', '91', '7683039289', '', '', '', '', '', 'Ghaziabad', '', '6', 'Pending Decision', '', 'Meta Ads', -1, '2026-09-04', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(110, 1, 'Vedant Interior Design', '18', '', '', 'Vedant', '', '91', '8543079837', '', '', '', '', '', 'Kanpur', '', '6', 'Lost - Budget Issue', '', 'Meta Ads', -1, '2026-10-01', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(111, 1, 'Tijohri', '34', '', '', 'Om Prakash', '', '91', '93122 27900', '', '', '', '', '', 'Delhi', '', '6', 'Not Interested', '', 'Reference', -1, '2026-09-28', '08:21:51', '2026-01-27', 'ujala@digidir.com', 1),
(112, 1, 'Sirivana Naturals', '10', '', '', 'Basavaraj', '', '91', '9986433414', '', '', 'https://www.sirivananaturals.com/', '', '', 'Banglore', '', '6', 'Pending Decision', '', 'Reference', -1, '2026-09-29', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(113, 1, 'Herbalife Wellness Coach', '38', '4,7,6', '', 'Suraj', '', '91', '7506825558', '', '', '', '', '', '', '', '6', 'Not Interested', '', 'SEO', -1, '2026-09-23', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(114, 1, 'Boost Legends', '31', '6', '', 'Om Sharma', '', '91', '7820039641', '', '', '', '', '', '', '', '6', 'Follow-up', '', 'SEO', -1, '2026-09-30', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(115, 1, 'Estele', '', '1', '', 'Sujay Bhardwaj', 'marketing@estele.co', '91', '9836073638', '', '', 'https://estele.co/', '', '', '', '', '6', 'Follow-up', '', 'SEO', -1, '2026-09-29', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(116, 1, 'Anurama', '18', '1', '', 'Abhishek', '', '91', '-', '', '', 'https://anuramafurnico.com/', '', '', 'Noida', '', '6', 'Pending Decision', '', 'SEO', -1, '2026-10-01', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(117, 1, 'GoCharting', '31', '1', '', 'Chiranjeev', '', '91', '9714670223', '', '', 'https://gocharting.com/', '', '', 'Ahemdabad', '', '6', 'Not Interested', '', 'Meta Ads', -1, '2026-10-01', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(118, 1, 'GymWear', '9', '2', '', 'Afreeen Qureshi', '', '91', '9336588684', '', '', '', '', '', 'UAE', '', '6', 'Not Interested', '', 'SEO', -1, '2026-10-01', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(119, 1, 'Vivek Churariya', '31', '2', '', 'Vivek Churariya', '', '91', '9136076424', '', '', '', '', '', 'Noida', '', '6', 'Follow-up', '', 'SEO', -1, '2026-09-24', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(120, 1, 'Tenfold Marketing', '58', '25', '', 'Shivjeet Majithia', 'shivjitmajithia@gmail.com', '91', '8360652616', '', '', 'https://tenfoldmarketing.ca/', '', '', 'Canada', '', '6', 'Pending Decision', '', 'Meta Ads', -1, '2026-10-03', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(121, 1, 'Buzz & Bond', '37', '1', '', 'Meghna', 'singhmeghnavngr@gmail.com', '91', '9131062189', '', '', '', '', '', 'Ranchi', '', '6', 'Converted', '', 'Refrence', -1, '2026-09-17', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(122, 1, 'BOSCH', '14', '', '', 'sarthak', 'sarthakn1007@outlook.com', '91', '84485 80117', '', '', '', '', '', 'Noida', '', '6', 'Follow-up', '', 'Telephonic', -1, '2026-05-28', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(123, 1, 'NE Green Orchid Pvt Ltd', '32', '9', '', 'Gitmoni', 'gitumoni@negreenorchid.com', '91', '8822683602', '', '', '', '', '', '', '', '6', 'Follow-up', '', 'Direct Whatsapp', -1, '2026-07-01', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(124, 1, 'Motion', '54', '6,7', '', 'Jai/ Subham', '', '91', '99296 03300', '', '', 'https://motion.ac.in/', '', '', 'Kota', '', '6', 'Not Interested', '', 'Direct Whatsapp', -1, '2026-07-03', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(125, 1, 'Havenova Care', '5', '3,7,6', '', 'Mohit', 'mohit@havenovacare.com', '91', '631 3179695', '', '', 'https://havenovacare.com/', '', '', 'New York', '', '6', 'Junk', '', 'Direct Whatsapp', -1, '2026-07-01', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(126, 1, 'DIY Custom Blinds', '18', '', '', 'Avi', '', '91', '61 425868639', '', '', 'https://www.instagram.com/diycustomblinds/reels/#', '', '', 'US', '', '6', 'Pending Decision', '', 'Direct Whatsapp', -1, '2026-07-06', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(127, 1, 'UNCOVER TAROT', '30', '7,6', '', 'Sarthak', '', '91', '9953315625', '', '', 'https://www.uncovertarot.com/', '', '', '', '', '6', 'Pending Decision', '', 'Direct Whatsapp', -1, '2026-07-06', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(128, 1, 'Derma Conscience', '6', '', '', 'Arnvi', '', '91', '8826100464', '', '', 'https://dermaconsciencebyarnavi.com/index.php', '', '', 'Noida', '', '6', 'Pending Decision', '', 'Website', -1, '2026-07-07', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(129, 1, 'Craft e state', '44', '3,7', '', 'Vivek kr', 'craftestate.store@gmail.com', '91', '9045890336', '', '', 'https://www.craftestate.in/', '', '', 'Muzaffarnagar', '', '6', 'Follow-up', '', 'DIrect Whatsapp', -1, '2026-07-10', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(130, 1, 'Merraki Home Decore', '44', '2', '', 'Tushar', '', '91', '9958029802', '', '', '', '', '', '', '', '6', 'Follow-up', '', 'DIrect Whatsapp', -1, '2026-07-10', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(131, 1, 'Vednta Foundation', '47', '1', '', 'S Khan', '', '91', '9096116758', '', '', '', '', '', 'Mumbai', '', '6', 'Follow-up', '', 'Reference', -1, '2026-07-09', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(132, 1, 'Propwall realtors', '13', '5,7,6', '', 'Virendra Verma', '', '91', '9211752520', '', '', '', '', '', 'Greater Noida', '', '6', 'Not Interested', '', 'Direct Whatsapp', -1, '2026-07-09', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(133, 1, 'ABMS Capital', '3', '4', '', '-', '', '91', '9259101577', '', '', '', '', '', 'Sikandrabad', '', '6', 'Follow-up', '', 'Direct Whatsapp', -1, '2026-07-11', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(134, 1, 'GenAiPlus', '24', '3', '', 'Hritik', '', '91', '9220883789', '', '', '', '', '', '', '', '6', 'Follow-up', '', 'Website', -1, '2026-07-14', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(135, 1, 'RNS Globel', '2', '2,3,5', '', 'Rahat', '', '91', '8171241353', '', '', '', '', '', '', '', '6', 'Converted', '', 'Direct Whatsapp', -1, '2026-07-14', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(136, 1, 'Punjabi Jutti House', '2', '21,22', '', '-', '', '91', '9797394810', '', '', '', '', '', '', '', '6', 'Lost - Budget Issue', '', 'Instagram', -1, '2026-07-15', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(137, 1, 'MH Group', '13', '7,6', '', 'Anjilina', '', '91', '8448785376', '', '', '', '', '', '', '', '6', 'Follow-up', '', 'Reference', -1, '2026-07-16', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(138, 1, 'Nailed it Salon', '4', '4', '', 'Ashish', '', '91', '9711985405', '', '', '', '', '', '', '', '6', 'Not Interested', '', 'Instagram', -1, '2026-07-16', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(139, 1, 'Akrivis Nutra', '10', '4', '', 'Bharat Bhushan', '', '91', '9999656616', '', '', '', '', '', '', '', '6', 'Follow-up', '', 'Instagram', -1, '2026-07-16', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(140, 1, 'Sawami Shankar Naryana', '14', '4', '', 'Sawami', '', '234', '904 991 7923', '', '', 'https://www.i2solutions.co.in\nwww.lntgrp.com', '', '', 'Kenya', '', '6', 'Follow-up', '', 'Reference', -1, '', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(141, 1, 'Nimai', '15', '2', '', 'Tanya', '', '91', '71503089015', '', '', '', '', '', '', '', '6', 'Converted', '', 'Website', -1, '2026-07-23', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(142, 1, 'Kaur Fashion', '2', '2,4', '', 'Gracy', '', '91', '9643120002', '', '', '', '', '', '', '', '6', 'Lost - Budget Issue', '', 'Telephonic', -1, '2026-07-23', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(143, 1, 'kuldeep Gupta GCC', '13', '7,6,3', '', 'Kuldeep', '', '91', '7303168438', '', '', '', '', '', '', '', '6', 'Not Interested', '', 'Reference', -1, '2026-07-23', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(144, 1, 'Luxury Leather', '2', '2', '', 'Kapil', '', '91', '8076039282', '', '', '', '', '', '', '', '6', 'Pending Decision', '', 'Website', -1, '2026-07-21', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(145, 1, 'S&S', '13', '4', '', 'Umeer shawl', 'ummer@ssproperty.ae\ninfo@ssproperty.ae', '971', '507507559', '', '', 'https://www.instagram.com/ss__property?igsh=MTJyMWQ3bHQ4bjlj', '', '', 'Dubai', '', '6', 'Pending Decision', '', 'Direct Whatsapp', -1, '2026-10-15', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(146, 1, 'Dewcious', '17', '', '', 'Utkarsha', 'asmit@aniviumtech.com', '971', '7838075818', '971', '1496410', 'https://dewcious.com/', '', '', 'Delhi', '', '6', 'Follow-up', '', 'Telephonic', -1, '2026-10-17', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(147, 1, 'Ice and Fruits', '10', '4,7', '', 'Chirag', 'chiragjasuja131@gmail.com', '91', '8287536555', '', '', 'https://share.google/beh9WPJ5Q74q1XdAH', '', '', 'Gurgaon', '', '6', 'Pending Decision', '', 'Meta Ads', -1, '2026-10-23', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(148, 1, 'SnapGo', '14', '7,6', '', 'SURYA PRAKASH', 'info.suryapurohit@gmail.com', '91', '7455860459', '', '', 'https://snapgo.co.in/', '', '', 'Noida', '', '6', 'Pending Decision', '', 'Meta Ads', -1, '2026-10-23', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(149, 1, 'Simplilo', '9', '7,6', '', 'Gaurav Punjabi', 'gaurav_punjabi100@yahoo.com', '91', '9799966682', '', '', 'https://simplilo.in/', '', '', 'Sehore', '', '6', 'Not Interested', '', 'Meta Ads', -1, '2026-09-19', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(150, 1, 'Wrap Label', '9', '7,6,4', '', 'Iqqie Osmany', 'iqbalosm72@hotmail.com', '91', '9821525676', '', '', 'https://www.instagram.com/wrap.label/', '', '', 'Mumbai', '', '6', 'Not Interested', '', 'Meta Ads', -1, '2026-10-23', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(151, 1, 'Vivet', '10', '1', '', 'Maneesh Maheshwari', 'vivetfoodtech@gmail.com', '91', '7393955555', '', '', '', '', '', 'Lucknow', '', '6', 'Not Interested', '', 'Telephonic', -1, '2026-10-24', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(152, 1, 'Millium', '10', '1', '', 'Sandeep', 'snpsuperfoods@gmail.com', '91', '9810064412', '', '', 'https://www.millium.in/', '', '', 'Faridabad', '', '6', 'Dead', '', 'Meta Ads', -1, '2026-10-23', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(153, 1, 'Let\'s Foodify', '10', '1', '', 'Ashish Chandra', 'Ashish.chandra@gmail.com', '91', '88269 05674', '', '', 'https://letsfoodify.com/', '', '', 'Noida', '', '6', 'Lost - Budget Issue', '', 'Telephonic', -1, '2026-10-29', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(154, 1, 'Coffee Plus', '8', '1', '', 'Kabir rajput', 'kabirbyu@gmail.com', '91', '9654369335', '', '', 'https://coffeeplus.in/', '', '', 'Chattarpur New Delhi', '', '6', 'Not Interested', '', 'Meta Ads', -1, '2026-10-24', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(155, 1, 'Botaniva Wellness', '43', '1', '', 'Harshita and Rishabh', 'botanivawellness@gmail.com', '91', '93115 81509', '', '', '', '', '', 'Canada', '', '6', 'Not Interested', '', 'Direct Whatsapp', -1, '2026-10-29', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(156, 1, 'lion sprayers', '29', '4', '', '-', 'cholaseeds@rediffmail.com', '', '', '', '', '', '', '', 'Aligarh', '', '6', 'Converted', '', 'Direct Whatsapp', -1, '', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(157, 1, 'Reena Tripathi', '44', '1', '', 'Reena Tripathi', 'rt.ranaexim@gmail.com', '91', '6393831850', '', '', '', '', '', 'Rajisthan', '', '6', 'Follow-up', '', 'SEO', -1, '2026-11-06', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(158, 1, 'Arpit', '40', '1', '', 'Arpit', 'serveallnutriscience@gmail.com', '91', '9560461046', '', '', '', '', '', 'Delhi', '', '6', 'Dead', '', 'SEO', -1, '2026-11-06', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(159, 1, 'Tradewithinfinity', '31', '7', '', 'Harsh', '', '', '', '', '', '', '', '', '', '', '6', 'Not Interested', '', 'Meta Ads', -1, '2026-11-28', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(160, 1, 'Bewellnaturals', '38', '3', '', 'Virat', '', '91', '72949 36011', '', '', '', '', '', '', '', '6', 'Follow-up', '', 'Direct Whatsapp', -1, '2025-11-21', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(161, 1, 'Koal Cosmetics', '17', '', '', 'Om Soni', '', '91', '76681 40622', '', '', '', '', '', 'Noida', '', '6', 'Lost - Budget Issue', '', 'SEO', -1, '2025-11-24', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(162, 1, 'Chinmaya Mission Event', '47', '7', '', 'Sandeep Singh Babbr', '', '91', '98992 21180', '', '', '', '', '', 'Noida', '', '6', 'Follow-up', '', 'Meta Ads', -1, '2026-11-18', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(163, 1, 'Kansal Food', '10', '', '', 'Ayush', '', '91', '8979059119', '', '', '', '', '', 'Meerut', '', '6', 'Dead', '', 'SEO', -1, '2026-11-13', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(164, 1, 'Svarna Jewels', '34', '', '', 'Svarna Jewels', '', '91', '99024 76665', '', '', '', '', '', 'Banglore', '', '6', 'Converted', '', 'SEO', -1, '2026-12-03', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(165, 1, 'Tiwari Travels', '1', '3', '', 'Surya Tiwari', '', '91', '7634 960 383', '', '', '', '', '', '', '', '6', 'Not Interested', '', 'SEO', -1, '2026-11-13', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(166, 1, 'Omega Stones', '57', '5', '', 'Arpit, Hardik', '', '91', '7701 895 727', '91', '99299 73691', '', '', '', 'Rajisthan', '', '6', 'Pending Decision', '', 'SEO', -1, '2026-12-03', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(167, 1, 'Jackson Solar', '57', '', '', 'Rajiv Bakshi', 'rajivbak@gmail.com', '91', '9910444856', '', '', '', '', '', 'delhi', '', '6', 'Dead', '', 'Meta Ads', -1, '2026-12-02', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(168, 1, '12 Minutes to CLAT', '20', '7,4', '', 'Keshav Malpani', 'lkeshav.km@gmail.com', '91', '7742440904', '', '', '', '', '', 'New Delhi', '', '6', 'Dead', '', 'Meta Ads', -1, '2026-12-04', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(169, 1, 'Cashito', '8', '1', '', 'Arijit Senn', 'senarijit70@gmail.com', '91', '9073139232', '', '', '', '', '', 'Bangalore', '', '6', 'Not Interested', '', 'Meta Ads', -1, '2026-11-26', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(170, 1, 'Khanduapata', '9', '16,17', '', 'Himanshu', 'kunduicai2@gmail.com', '91', '98401 52763', '', '', '', '', '', '', '', '6', 'Lost - Budget Issue', '', 'SEO', -1, '2026-12-03', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(171, 1, 'Caishen United', '8', '4,10,3', '', 'Dinesh', 'caishenunited@gmail.com', '91', '99116 36888', '', '', '', '', '', '', '', '6', 'Pending Decision', '', 'Telephonic', -1, '2026-11-25', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(172, 1, 'N/A', '1', '2', '', 'Manish', '', '91', '8532869789', '', '', '', '', '', '', '', '6', 'Not Interested', '', 'Direct Whatsapp', -1, '2026-09-19', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(173, 1, 'Bala\'s Pickle', '10', '4,10,3', '', 'Vijay, Vinod and nareesh', 'vijay.sharma.hr@gmail.com', '91', '93102 91743', '', '', '', '', '', '', '', '6', 'Follow-up', '', 'Direct Whatsapp', -1, '2026-12-06', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(174, 1, 'Buy Blossom', '44', '7', '', 'Abhinav Chandra', 'saltyapronindia@gmail.com', '91', '99273 51547', '', '', '', '', '', '', '', '6', 'Not Interested', '', 'Meta Ads', -1, '2026-12-10', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(175, 1, 'Buddy Academy/flexigo', '20', '3,7,4', '', 'Aalok', 'alok.pandeyril@gmail.com', '91', '9208731155', '91', '97210 77700', 'https://www.buddyacademy.in/,\nwww.flexigoindia.com', '', '', 'Hyderabad, Ghaziabad', '', '6', 'Follow-up', '', 'Meta Ads', -1, '2026-12-09', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(176, 1, 'Ventara', '', '4,7', '', 'Humza', '', '91', '95576 04010', '', '', '', '', '', 'Saharanpur', '', '6', 'Lost - Budget Issue', '', 'Meta Ads', -1, '2026-12-19', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(177, 1, 'Hamilton Sinkler', '57', '4', '', 'Hammaad', '', '91', '95608 78207', '', '', 'https://hamiltonsinkler.com/', '', '', 'Noida', '', '6', 'Pending Decision', '', 'SEO', -1, '2026-12-20', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(178, 1, 'First Draft', '37', '1', '', 'Aakash', '', '91', '90490 48367', '', '', 'https://www.firstdraftmag.co.in/', '', '', 'Noida Extension', '', '6', 'Follow-up', '', 'SEO', -1, '2026-12-17', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(179, 1, 'Nex Gen Fabrics', '57', '1', '', 'Shreya', '', '91', '95829 05012', '', '', 'https://www.nexgenfabrics.com/', '', '', 'Ghaziabad', '', '6', 'Dead', '', 'SEO', -1, '2026-12-18', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(180, 1, 'Web Plant', '24', '2', '', 'Chetan', '', '91', '755 877 0600', '', '', 'www.webplat.in', '', '', 'Pune', '', '6', 'Not Interested', '', 'LinkedIn', -1, '2026-10-27', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(181, 1, 'Stock Market Workshops', '54', '7', '', 'Niveesh', '', '91', '70046 96291', '', '', '', '', '', '', '', '6', 'Not Interested', '', 'Direct Whatsapp', -1, '2026-11-03', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(182, 1, 'Kalpana Traders', '31', '1', '', 'Prakash Pandey', 'kalpanatraders39@gmail.com', '91', '93193 14459', '', '', '', '', '', '', '', '6', 'Not Interested', '', 'SEO', -1, '2026-10-25', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(183, 1, 'Aayina Therapy', '6', '4,7,6', '', 'Ananya Bansal', '', '91', '88005 95952', '', '', 'https://aayinatherapy.com/', '', '', 'Noida', '', '6', 'Pending Decision', '', 'SEO', -1, '2026-10-24', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(184, 1, 'Trade Earth', '', '', '', 'Pawan Matade', '', '91', '8369354566', '', '', '', '', '', '', '', '6', 'Pending Decision', '', 'SEO', -1, '2026-09-20', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(185, 1, 'Growth Eagle', '', '3', '', 'Anjali', '', '91', '70110 66911', '', '', '', '', '', '', '', '6', 'Pending Decision', '', 'SEO', -1, '2026-09-02', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(186, 1, 'Kissik', '24', '', '', 'Swarna Rani', '', '91', '', '', '', '', '', '', '', '', '6', 'Pending Decision', '', 'SEO', -1, '2026-08-04', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(187, 1, 'Rising Star', '', '1', '', 'Deepika', '', '91', '7678585504', '', '', '', '', '', '', '', '6', 'Lost - Budget Issue', '', 'Instagram', -1, '2026-10-29', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(188, 1, 'Wisdom School', '', '1', '', 'Prashant', '', '91', '9927872765', '', '', '', '', '', '', '', '6', 'Not Interested', '', 'Reference', -1, '2026-10-29', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(189, 1, '', '24', '16,17', '', 'Santoshkumar Chepuri', '', '91', '9885614416', '', '', '', '', '', '', '', '6', 'Pending Decision', '', 'LinkedIn', -1, '2026-10-24', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(190, 1, '', '', '9', '', 'Om Prakash Yadav', '', '91', '9699145654', '', '', '', '', '', '', '', '6', 'Not Interested', '', 'Reference', -1, '', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(191, 1, '', '', '', '', 'Harshita Goel', '', '91', '88605 17896', '', '', '', '', '', '', '', '6', 'Pending Decision', '', 'LinkedIn', -1, '2026-10-28', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(192, 1, 'Ranaexim', '44', '2', '', 'Reena Tripathi', 'rt.ranaexim@gmail.com', '91', '6393831850', '', '', '', '', '', '', '', '6', 'Pending Decision', '', 'SEO', -1, '2026-11-06', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(193, 1, 'Aayushkar', '43', '10', '', 'Prachi', '', '91', '8076306005', '', '', '', '', '', '', '', '6', 'Follow-up', '', 'Direct Whatsapp', -1, '2026-10-29', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(194, 1, 'Serve All Nutri Science', '40', '1', '', 'Arpit', 'serveallnutriscience@gmail.com', '91', '9560461046', '', '', '', '', '', '', '', '6', 'Not Interested', '', 'SEO', -1, '2026-11-07', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(195, 1, 'Aryuveda Cosmetic', '43', '4', '', 'Upender', '', '91', '8802001095', '', '', '', '', '', '', '', '6', 'Not Interested', '', 'Telephonic', -1, '2026-11-05', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(196, 1, 'Refer & rewards', '25', '3', '', 'Bhawna', '', '91', '84481 62111', '', '', 'Bhawna@refernrewards.in', '', '', 'Faridabad', '', '6', 'Not Interested', '', 'Telephonic', -1, '2026-11-06', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(197, 1, '-', '16', '7,6', '', 'Ayushman', '', '91', '88824 99897', '', '', '', '', '', '', '', '6', 'Not Interested', '', 'Telephonic', -1, '2026-11-06', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(198, 1, 'N K Realtors', '13', '7,6', '', 'Sanjay Adhikary', '', '91', '9830803805', '', '', 'http://www.nkrealtors.com', '', '', '', '', '6', 'Not Interested', '', 'SEO', -1, '2026-11-11', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(199, 1, 'BSL Academy Pvt. Ltd', '32', '2,7,6', '', 'Ayushi Yadav', '', '91', '78385 67738', '', '', '', '', '', '', '', '6', 'Not Interested', '', 'Telephonic', -1, '2026-11-18', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(200, 1, 'Koal Cosmetic', '17', '7,6', '', 'Om Soni', 'om.soni01@koalcosmetics.com', '91', '917042428342', '', '', '', '', '', '', '', '6', 'Lost - Budget Issue', '', 'SEO', -1, '2026-11-24', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(201, 1, 'Kimistara International', '10', '7,6', '', 'Kimistara International', '', '91', '9425690006', '', '', '', '', '', '', '', '6', 'Not Interested', '', 'Telephonic', -1, '2026-11-24', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(202, 1, '', '9', '4', '', 'Rajat', '', '91', '9873173155', '', '', '', '', '', '', '', '6', 'Not Interested', '', 'Telephonic', -1, '2026-11-25', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1);
INSERT INTO `all_lead` (`ID`, `BranchID`, `CompanyName`, `TypeofBusiness`, `Services`, `ServiceCost`, `ContactPersonName`, `ContactPersonEmail`, `PrimaryDialCode`, `ContactPersonPhoneNumber`, `SecondaryDialCode`, `ContactPersonAlternativeNo`, `Website`, `Country`, `State`, `City`, `Address`, `AssignedTo`, `Status`, `Remark`, `LeadSource`, `TelecallerLeadID`, `LeadDate`, `CreatedTime`, `CreatedDate`, `CreatedBy`, `IsActive`) VALUES
(203, 1, '', '1', '', '', 'Riya', '', '91', '9351515203', '', '', '', '', '', '', '', '6', 'Pending Decision', '', 'Telephonic', -1, '2026-11-26', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(204, 1, 'BBnm', '59', '16', '', 'Harsh', 'harshsanwariya047@gmail.com', '91', '9267993247', '', '', '', '', '', '', '', '6', 'Lost - Budget Issue', '', 'SEO', -1, '2026-11-27', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(205, 1, '', '9', '1', '', 'Rahul', '', '91', '7217864979', '', '', '', '', '', '', '', '6', 'Pending Decision', '', 'Telephonic', -1, '2026-11-27', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(206, 1, 'Apoorva', '25', '4', '', 'Apoorva', '', '91', '8154858703', '', '', '', '', '', '', '', '6', 'Follow-up', '', 'Telephonic', -1, '2026-11-27', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(207, 1, 'Espalier Ai', '45', '1', '', 'Pawan', 'accounts@espalier.ai', '91', '99106 50744', '', '', '', '', '', '', '', '6', 'Pending Decision', '', 'SEO', -1, '2026-12-02', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(208, 1, '', '39', '6,7', '', 'Yadnik', '', '91', '8668964805', '', '', '', '', '', '', '', '6', 'Not Interested', '', 'SEO', -1, '2026-11-28', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(209, 1, 'Kunduicai', '9', '19', '', 'Himanshu', 'kunduicai2@gmail.com', '91', '98401 52763', '', '', '', '', '', '', '', '6', 'Lost - Budget Issue', '', 'Direct Whatsapp', -1, '2026-12-03', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(210, 1, '', '9', '7,6', '', 'Sushant', '', '91', '98990 27757', '', '', '', '', '', '', '', '6', 'Follow-up', '', 'SEO', -1, '2026-12-04', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(211, 1, 'NK TRAVEL (INDIA) PVT LTD', '1', '4', '', 'Nishant', '', '91', '78271 93354', '', '', '', '', '', '', '', '6', 'Lost - Budget Issue', '', 'Telephonic', -1, '2026-12-05', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(212, 1, 'Mr. Gardenr', '25', '7,6', '', 'Sumit', 'sumitsaini185@gmail.com', '91', '96249 77055', '', '', '', '', '', '', '', '6', 'Dead', '', 'Telephonic', -1, '2026-11-17', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(213, 1, 'Greenu', '25', '4', '', 'Sandeep kaushik', 'sandkaushik31ntpc@gmail.com', '91', '7522 002 842', '', '', 'Greenu.in', '', '', '', '', '6', 'Lost - Budget Issue', '', 'Direct Whatsapp', -1, '2026-12-09', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(214, 1, 'Bata Group', '56', '1', '', 'Rajshwii Bhattacharjee', 'rajshwii.ext@bata.com', '91', '70429 66412', '', '', '', '', '', '', '', '6', 'Follow-up', '', 'Direct Whatsapp', -1, '2026-12-08', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(215, 1, 'Milk Co', '10', '1', '', 'Himanshu Garg', '', '91', '79069 64807', '', '', '', '', '', '', '', '6', 'Not Interested', '', 'Direct Whatsapp', -1, '2026-12-08', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(216, 1, 'Buddy Academy', '19', '1', '', 'Alok', 'alok.pandeyril@gmail.com', '91', '97210 77700', '', '', '', '', '', '', '', '6', 'Follow-up', '', 'Direct Whatsapp', -1, '2026-12-10', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(217, 1, 'Ufs Protects', '25', '', '', 'Ankita', 'Salesint@ufsprotects.com', '91', '92668 22887', '', '', '', '', '', '', '', '6', 'Follow-up', '', 'Direct Whatsapp', -1, '2026-12-11', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(218, 1, '', '', '17', '', 'Nandita', '', '91', '63834 06536', '', '', '', '', '', '', '', '6', 'Pending Decision', '', 'Telephonic', -1, '2026-12-15', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(219, 1, '', '', '17', '', 'Swati', '', '91', '90800 89940', '', '', '', '', '', '', '', '6', 'Pending Decision', '', 'Telephonic', -1, '2026-12-15', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(220, 1, 'Vedanta', '', '1', '', 'Humza', 'hamzasidd43@gmail.com', '91', '95576 04010', '', '', '', '', '', '', '', '6', 'Lost - Budget Issue', '', 'Meta Ads', -1, '2026-12-13', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(221, 1, 'VSD Global Med Solution', '45', '12', '', 'Vikash', 'vsdglobalmedsolutions@gmail.com', '91', '7488 263 271', '', '', '', '', '', '', '', '6', 'Not Interested', '', 'Direct Whatsapp', -1, '2026-12-08', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(222, 1, 'Indo Navi', '1', '3', '', 'Akemi/Raje Ram', '', '91', '85276 87888/\n8851160653', '', '', 'www.indo-navi.com', '', '', '', '', '6', 'Dead', '', 'Direct Whatsapp', -1, '2026-12-15', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(223, 1, 'Bovi Tea', '10', '4', '', 'Pawan', 'bovi.online@masterblendindustries.com', '91', '8527740985', '', '', '', '', '', 'Noida', '', '6', 'Pending Decision', '', 'Telephonic', -1, '2026-12-22', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(224, 1, '', '10', '16,17', '', 'Neesheeth Maheshwari', 'neesheethmaheshwari@gmail.com', '91', '9379811199', '', '', '', '', '', 'Lucknow', '', '6', 'Lost - Budget Issue', '', 'Telephonic', -1, '2026-12-24', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(225, 1, 'William Ashford', '9', '16,17', '', 'William Ashford', '', '91', '85000 93233', '', '', '', '', '', 'Telangana', '', '6', 'Dead', '', 'Direct Whatsapp', -1, '2026-12-16', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(226, 1, 'First Draft Mag co', '37', '3', '', 'Aakash', '', '91', '90490 48367', '', '', 'www.firstdraftmag.co.in', '', '', 'Noida', '', '6', 'Follow-up', '', 'Direct Whatsapp', -1, '2026-12-17', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(227, 1, 'Beauty e commerce', '17', '16,17', '', 'Ridhima', 'ridhimagarg2221@gmail.com', '91', '884 745 6052', '', '', '', '', '', 'Chandhigarh', '', '6', 'Pending Decision', '', 'SEO', -1, '2026-12-23', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(228, 1, '', '', '4', '', 'Chahat Rai', '', '91', '8707706503', '', '', '', '', '', '', '', '6', 'Lost - Budget Issue', '', 'SEO', -1, '2026-12-29', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(229, 1, 'Funista Travel', '1', '7', '', 'Sushain', '', '91', '72064 55845', '', '', '', '', '', '', '', '6', 'Pending Decision', '', 'SEO', -1, '2026-12-29', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(230, 1, 'Mind Fount', '59', '3', '', 'Ajay', '', '91', '836 891 6948', '', '', '', '', '', 'Noida', '', '6', 'Follow-up', '', 'Direct Whatsapp', -1, '2026-12-24', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(231, 1, 'Astol', '', '', '', 'Sagar Choudhary', '', '91', '91492 02412', '', '', 'https://www.astol.in,  https://www.puliziafm.com', '', '', 'Noida', '', '6', 'Pending Decision', '', 'SEO', -1, '2026-01-05', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(232, 1, 'Codemy', '21', '1', '', 'Kuldeep', '', '91', '63610 98667', '', '', '', '', '', 'Jaipur', '', '6', 'Follow-up', '', 'Direct Whatsapp', -1, '2026-12-07', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(233, 1, 'Funk', '9', '19', '', 'Sughra', '', '91', '98207 16659', '', '', 'www.plussizefunk.com', '', '', 'Bombay', '', '6', 'Pending Decision', '', 'Telephonic', -1, '2026-01-08', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(234, 1, 'Mod Foot', '56', '1', '', 'Mr. Bose', 'contact@modfoot.in', '91', '95998 42916', '', '', '', '', '', 'Noida', '', '6', 'Follow-up', '', 'Direct Whatsapp', -1, '2026-01-08', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(235, 1, 'BOP Real Estate', '', '7,6', '', 'Madhav Vij', '', '91', '7838663778', '', '', '', '', '', 'Noida', '', '6', 'Follow-up', '', '', -1, '2026-01-12', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(236, 1, 'Pet Bottles', '10', '2', '', 'Janvi Tyagi', '', '91', '85957 69229', '', '', '', '', '', 'Mawana', '', '6', 'Follow-up', '', 'Telephonic', -1, '2026-01-12', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(237, 1, 'Destinasia', '1', '1', '', 'Animesh', '', '91', '8906175017', '', '', 'Destinasia.org', '', '', '', '', '6', 'Pending Decision', '', '', -1, '2026-01-13', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(238, 1, 'In sole ace', '56', '4,10', '', 'Pavni Badil', '', '91', '97205 40757', '', '', 'Insoleace.in', '', '', 'Meerut', '', '6', 'Follow-up', '', 'Direct Whatsapp', -1, '2026-01-13', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(239, 1, 'Pro Kalar India', '37', '4', '', 'Ananjay Chawla', '', '91', '70426 48689', '', '', '', '', '', 'Delhi', '', '6', 'Pending Decision', '', 'Telephonic', -1, '2026-01-12', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(240, 1, 'Crux Creative Solutions', '59', '16,17', '', 'Shelly Bhasin Bawa', 'shelly@cruxcreativesolutions.com', '91', '98106 71230', '', '', '', '', '', 'Gurugram', '', '6', 'Follow-up', '', 'Direct Whatsapp', -1, '2026-01-15', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(241, 1, 'Corbet the grand', '28', '4', '', 'Satyam Garg', '', '91', '919536026690', '', '', '', '', '', '', '', '6', 'Follow-up', '', 'SEO', -1, '', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(242, 1, 'New Vision Digital', '', '3', '', 'Monika Jha', '', '91', '919540551248', '', '', '', '', '', '', '', '6', 'Junk', '', 'SEO', -1, '', '08:24:04', '2026-01-27', 'ujala@digidir.com', 1),
(243, 1, '', '25', '4', '', 'Kartik', '', '+91', '701774861', '+91', '', '', '', 'Select State', '', '', '5', 'In Progress', '', 'Direct Call', -1, '2026-01-27', '15:10:51', '2026-01-27', 'naina.gupta@digidir.com', 1),
(244, 1, '', '25', '4', '', 'Asma', '', '+91', '8125700533', '+91', '', '', '', 'Select State', '', '', '5', 'In Progress', '', 'Instagram', -1, '2026-01-27', '15:20:14', '2026-01-27', 'naina.gupta@digidir.com', 1),
(245, 1, '', '25', '4', '', 'Asma', '', '+91', '8125700533', '+91', '', '', '', 'Select State', '', '', '5', 'In Progress', '', 'Instagram', -1, '2026-01-27', '15:21:36', '2026-01-27', 'naina.gupta@digidir.com', 1),
(246, 1, 'Myxveda', '4', '1', '', 'TEJENDER', 'cmladwa@gmail.com', '+91', '9215277052', '+91', '', 'https://myxveda.com', 'India', 'Haryana', 'kurukshetra', '', '6', 'Follow-up', '', 'SEO', -1, '2026-01-27', '16:24:12', '2026-01-27', 'ujala@digidir.com', 1),
(247, 1, 'Pragya batteries', '8', '4', '', 'Adi Mishra', 'adienterprises.exide@gmail.com', '+91', '7415741556', '+91', '', '', '', 'Madhya Pradesh', 'Singrauli', '', '6', 'Follow-up', '', 'Reference', -1, '2026-01-27', '12:48:58', '2026-01-28', 'ujala@digidir.com', 1),
(248, 1, '', '24', '6', '', 'Sumit Saini', 'web.sumitsaini@gmail.com', '+91', '8527218854', '+91', '', '', '', 'Select State', '', '', '6', 'Follow-up', '', 'Reference', -1, '2026-01-27', '18:27:06', '2026-01-27', 'ujala@digidir.com', 1),
(249, 1, 'Find Receptionist', '17', '1', '', 'Rajat', '', '+91', '9130391685', '+91', '', 'https://www.findreceptionist.com/', '', 'Select State', '', '', '5', 'In Progress', '', 'SEO', -1, '2026-01-28', '13:03:20', '2026-01-28', 'naina.gupta@digidir.com', 1),
(250, 1, 'Scehon Skincare', '17', '1', '', 'Kashish', 'guptakishi@gmail.com', '+91', '9993136248', '+91', '', '', '', 'Select State', '', '', '5', 'Meeting Scheduled', '', 'SEO', -1, '2026-01-28', '15:30:32', '2026-01-28', 'naina.gupta@digidir.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `ID` int(11) NOT NULL,
  `BookName` varchar(256) NOT NULL DEFAULT '',
  `Price` varchar(256) NOT NULL DEFAULT '',
  `BookPDF` varchar(256) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`ID`, `BookName`, `Price`, `BookPDF`, `CreatedBy`, `CreatedDate`, `CreatedTime`, `IsActive`) VALUES
(1, 'Ancient and Medieval Indian History', '0', '', 'yogendra@gmail.com', '2024-06-10', '16:01:23', 1),
(2, 'Indian Polity & Constitution', '0', '', 'yogendra@gmail.com', '2024-06-10', '16:02:01', 1),
(3, 'Indian Geography ', '0', '', 'yogendra@gmail.com', '2024-06-10', '16:02:32', 1),
(4, 'World Geography', '0', '', 'yogendra@gmail.com', '2024-06-10', '16:02:57', 1),
(5, 'Indian Economy', '0', '', 'yogendra@gmail.com', '2024-06-10', '16:03:25', 1),
(6, 'Modern Indian History', '0', '', 'yogendra@gmail.com', '2024-06-10', '16:03:54', 1),
(7, 'Indian Society', '0', '', 'yogendra@gmail.com', '2024-06-10', '16:04:22', 1),
(8, 'Environment & Ecology', '0', '', 'yogendra@gmail.com', '2024-06-10', '16:04:51', 1),
(9, 'Science & Technology', '0', '', 'yogendra@gmail.com', '2024-06-10', '16:05:23', 1),
(10, 'HISTORY (MAINS )                                     ', '700', '', 'milan@praajasv.com', '2024-06-12', '15:01:11', 1),
(11, 'GEOGRAPHY (MAINS)', '700', '', 'milan@praajasv.com', '2024-06-12', '15:01:55', 1),
(12, 'POLITY (MAINS)', '700', '', 'milan@praajasv.com', '2024-06-12', '15:02:23', 1),
(13, 'CULTURE (MAINS)', '700', '', 'milan@praajasv.com', '2024-06-12', '15:06:35', 1),
(14, 'ENGLISH (MAINS)', '340', '', 'milan@praajasv.com', '2024-06-12', '15:06:57', 1),
(15, 'GUJARATI (MAINS)', '290', '', 'milan@praajasv.com', '2024-06-12', '15:07:47', 1),
(16, 'GUJARAT GEOGRAPHY (PRELIMS)', '400', '', 'milan@praajasv.com', '2024-06-12', '15:08:28', 1),
(17, 'GUJARAT CULTURE (PRELIMS)', '520', '', 'milan@praajasv.com', '2024-06-12', '15:08:59', 1),
(18, 'INDIAN ECONOMY (PRELIMS)', '700', '', 'milan@praajasv.com', '2024-06-12', '15:09:30', 1),
(19, 'INDIA & WORLD GEOGRAPHY (PRELIMS)', '350', '', 'milan@praajasv.com', '2024-06-12', '15:10:09', 1),
(20, 'INDIAN CULTURE (PRELIMS)', '310', '', 'milan@praajasv.com', '2024-06-12', '15:10:47', 1),
(21, 'INDIAN HISTORY (PRELIMS)', '500', '', 'milan@praajasv.com', '2024-06-12', '15:11:14', 1),
(22, 'MATHS & REASONING (PRELIMS)', '500', '', 'milan@praajasv.com', '2024-06-12', '15:12:35', 1),
(23, 'SCIENCE & TECHNOLOGY (PRELIMS)', '460', '', 'milan@praajasv.com', '2024-06-12', '15:13:28', 1),
(24, 'POLITY (PRELIMS)', '600', '', 'milan@praajasv.com', '2024-06-12', '15:14:11', 1),
(25, 'MONTHLY MAESTRO (ANNUAL SUBSCRIPTION)', '720', '', 'milan@praajasv.com', '2024-06-12', '15:29:07', 1),
(26, 'INTERVIEW TIPS & TECHNIQUES', '149', '', 'milan@praajasv.com', '2024-06-12', '15:30:42', 1),
(27, 'MONTHLY MAESTRO JUNE MONTH', '100', '', 'milan@praajasv.com', '2024-06-12', '15:32:55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `ID` int(11) NOT NULL,
  `BranchName` varchar(256) NOT NULL,
  `Manager` varchar(256) NOT NULL DEFAULT '-1',
  `CreatedDate` varchar(50) NOT NULL,
  `CreatedTime` varchar(50) NOT NULL,
  `CreatedBy` varchar(50) NOT NULL,
  `IsActive` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`ID`, `BranchName`, `Manager`, `CreatedDate`, `CreatedTime`, `CreatedBy`, `IsActive`) VALUES
(1, 'Noida', '2', '2025-09-18', '17:05:28', 'admin@digidir.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company_details`
--

CREATE TABLE `company_details` (
  `ID` int(11) NOT NULL,
  `CompanyName` varchar(256) NOT NULL DEFAULT '',
  `CompanyLogo` varchar(256) NOT NULL DEFAULT '',
  `Email` varchar(256) NOT NULL DEFAULT '',
  `PhoneNumber` varchar(256) NOT NULL DEFAULT '',
  `AlternativeNumber` varchar(256) NOT NULL DEFAULT '',
  `Address` varchar(500) NOT NULL DEFAULT '',
  `GSTNumber` varchar(256) NOT NULL DEFAULT '',
  `CGST` varchar(256) NOT NULL DEFAULT '',
  `SGST` varchar(256) NOT NULL DEFAULT '',
  `IGST` varchar(256) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `company_details`
--

INSERT INTO `company_details` (`ID`, `CompanyName`, `CompanyLogo`, `Email`, `PhoneNumber`, `AlternativeNumber`, `Address`, `GSTNumber`, `CGST`, `SGST`, `IGST`, `CreatedBy`, `CreatedDate`, `CreatedTime`, `IsActive`) VALUES
(1, 'Praajasv IAS', '', 'info@praajasvias.com', '8888888888', '8888888888', '2nd & 3rd Floor, Atria, B Block, Saragasan Cross Road Gandhinagar, Gujarat, India – 382421', 'TEST2727828282', '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Course` varchar(50) NOT NULL,
  `Message` text NOT NULL,
  `CreatedDateTime` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses_fee`
--

CREATE TABLE `courses_fee` (
  `ID` int(11) NOT NULL,
  `CourseID` varchar(256) NOT NULL,
  `Mode` varchar(50) NOT NULL DEFAULT '',
  `Fees` varchar(50) NOT NULL DEFAULT '',
  `FirstYear` varchar(256) NOT NULL DEFAULT '',
  `SecondYear` varchar(256) NOT NULL DEFAULT '',
  `ThirdYear` varchar(256) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT 1,
  `CreatedDate` varchar(256) NOT NULL DEFAULT '',
  `CreatedTime` varchar(256) NOT NULL DEFAULT '',
  `CreatedBy` varchar(256) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses_fee`
--

INSERT INTO `courses_fee` (`ID`, `CourseID`, `Mode`, `Fees`, `FirstYear`, `SecondYear`, `ThirdYear`, `IsActive`, `CreatedDate`, `CreatedTime`, `CreatedBy`) VALUES
(1, '1', 'Online', '90000', '90000', '', '', 1, '2024-06-07', '14:42:17', 'admin@praajasv.com'),
(2, '1', 'Offline', '160000', '160000', '', '', 1, '2024-06-07', '14:42:36', 'admin@praajasv.com'),
(4, '2', 'Offline', '40000', '40000', '', '', 1, '2024-06-07', '15:30:40', 'milan@praajasv.com'),
(5, '2', 'Online', '7999', '7999', '', '', 1, '2024-06-07', '15:31:14', 'milan@praajasv.com'),
(7, '3', 'Offline', '70000', '35000', '35000', '', 1, '2024-06-07', '17:58:03', 'milan@praajasv.com'),
(8, '4', 'Offline', '60000', '30000', '30000', '', 1, '2024-06-07', '18:00:17', 'milan@praajasv.com'),
(9, '5', 'Offline', '45000', '25000', '20000', '', 1, '2024-06-07', '18:01:12', 'milan@praajasv.com'),
(10, '6', 'Offline', '25000', '15000', '10000', '', 1, '2024-06-07', '18:02:16', 'milan@praajasv.com'),
(11, '7', 'Online', '6999', '6999', '', '', 1, '2024-06-07', '18:03:57', 'milan@praajasv.com'),
(12, '10', 'Online', '8999', '8999', '', '', 1, '2024-06-07', '18:09:20', 'milan@praajasv.com'),
(13, '11', 'Online', '5999', '5999', '', '', 1, '2024-06-07', '18:10:24', 'milan@praajasv.com'),
(14, '12', 'Online', '4999', '4999', '', '', 1, '2024-06-07', '18:11:18', 'milan@praajasv.com'),
(15, '13', 'Offline', '30000', '15000', '15000', '', 1, '2024-06-07', '18:12:18', 'milan@praajasv.com'),
(16, '14', 'Online', '15000', '15000', '', '', 1, '2024-06-07', '18:13:28', 'milan@praajasv.com'),
(17, '15', 'Online', '13000', '13000', '', '', 1, '2024-06-07', '18:14:17', 'milan@praajasv.com'),
(18, '16', 'Offline', '45000', '25000', '20000', '', 1, '2024-06-07', '18:16:20', 'milan@praajasv.com'),
(19, '17', 'Offline', '70000', '35000', '35000', '', 1, '2024-06-07', '18:18:45', 'milan@praajasv.com'),
(20, '18', 'Offline', '85000', '30000', '13750', '13750', 1, '2024-06-07', '18:26:19', 'milan@praajasv.com'),
(21, '26', 'Offline', '38000', '38000', '', '', 1, '2024-06-10', '14:02:40', 'malhar@praajasv.com'),
(22, '26', 'Offline', '43000', '22000', '21000', '', 1, '2024-06-10', '14:03:23', 'malhar@praajasv.com'),
(23, '19', 'Offline', '65000', '65000', '', '', 1, '2024-06-10', '15:30:53', 'malhar@praajasv.com'),
(24, '30', 'Offline', '200000', '100000', '', '', 1, '2024-06-10', '15:56:00', 'yogendra@gmail.com'),
(25, '30', 'Online', '160000', '80000', '', '', 1, '2024-06-10', '15:56:41', 'yogendra@gmail.com'),
(26, '31', 'Offline', '240000', '150000', '', '', 1, '2024-06-10', '15:57:38', 'yogendra@gmail.com'),
(27, '31', 'Online', '200000', '100000', '', '', 1, '2024-06-10', '15:58:10', 'yogendra@gmail.com'),
(28, '28', 'Offline', '25000', '25000', '', '', 1, '2024-06-10', '17:22:19', 'malhar@praajasv.com'),
(29, '20', 'Offline', '55000', '55000', '', '', 1, '2024-06-11', '18:42:00', 'MALHAR@PRAAJASV.COM'),
(30, '29', 'Offline', '30000', '30000', '', '', 1, '2024-06-11', '18:45:25', 'MALHAR@PRAAJASV.COM'),
(31, '27', 'Offline', '20000', '20000', '', '', 1, '2024-06-14', '11:17:24', 'malhar@praajasv.com'),
(33, '26', 'Offline', '35000', '35000', '', '', 1, '2024-06-16', '12:37:51', 'malhar@praajasv.com'),
(34, '26', 'Offline', '40000', '20000', '20000', '', 1, '2024-06-16', '12:38:12', 'malhar@praajasv.com'),
(35, '33', 'Offline', '50000', '50000', '', '', 1, '2024-06-26', '14:34:31', 'admin@praajasv.com'),
(36, '33', 'Online', '50000', '50000', '', '', 1, '2024-06-26', '14:34:42', 'admin@praajasv.com'),
(37, '32', 'Offline', '15000', '15000', '', '', 1, '2024-06-27', '14:01:21', 'admin@praajasv.com'),
(38, '32', 'Online', '10000', '10000', '', '', 1, '2024-06-27', '14:01:37', 'admin@praajasv.com'),
(39, '29', 'Offline', '35000', '35000', '', '', 1, '2024-06-29', '17:20:33', 'malhar@praajasv.com');

-- --------------------------------------------------------

--
-- Table structure for table `courses_for_display`
--

CREATE TABLE `courses_for_display` (
  `ID` int(11) NOT NULL,
  `CenterID` int(11) NOT NULL DEFAULT -1,
  `CourseName` varchar(256) NOT NULL,
  `CourseType` varchar(256) NOT NULL,
  `IsActive` int(11) NOT NULL DEFAULT 1,
  `CreatedDate` varchar(256) NOT NULL,
  `CreatedBy` varchar(256) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `courses_for_display`
--

INSERT INTO `courses_for_display` (`ID`, `CenterID`, `CourseName`, `CourseType`, `IsActive`, `CreatedDate`, `CreatedBy`) VALUES
(1, 1, 'UPSC GS Foundation Batch 1 year', 'Main', 1, '2024-06-07', 'admin@praajasv.com'),
(4, 3, 'GPSC OFFLINE ONE TIME BATCH ', 'Main', 1, '2024-06-07', 'milan@praajasv.com'),
(5, 3, 'GPSC PRELIMS BATCH ', 'Main', 1, '2024-06-07', 'milan@praajasv.com'),
(6, 3, 'CONSTABLE OFFLINE ', 'Main', 1, '2024-06-07', 'milan@praajasv.com'),
(7, 3, 'PSI ONLINE WITH MATERIAL', 'Main', 1, '2024-06-07', 'milan@praajasv.com'),
(10, 3, 'PSI ONLINE WITH MATERIAL BATCH ', 'Main', 1, '2024-06-07', 'milan@praajasv.com'),
(11, 3, 'CONSTABLE ONLINE WITH MATERIAL ', 'Main', 1, '2024-06-07', 'milan@praajasv.com'),
(12, 3, 'CONSTABLE ONLINE WITHOUT MATERIAL ', 'Main', 1, '2024-06-07', 'milan@praajasv.com'),
(13, 3, 'CCE OFFLINE MAINS BATCH ', 'Main', 1, '2024-06-07', 'milan@praajasv.com'),
(14, 3, 'CCE MAINS ONLINE  WITH MATERIAL BATCH ', 'Main', 1, '2024-06-07', 'milan@praajasv.com'),
(15, 3, 'CCE MAINS ONLINE WITHOUT MATERIAL ', 'Main', 1, '2024-06-07', 'milan@praajasv.com'),
(16, 3, 'PSI OFFLINE BATCH ', 'Main', 1, '2024-06-07', 'milan@praajasv.com'),
(17, 3, 'GPSC LONG TERM FOUNDATION BATCH ', 'Main', 1, '2024-06-07', 'milan@praajasv.com'),
(18, 3, 'UPSC 1 YEAR BATCH ', 'Main', 1, '2024-06-07', 'milan@praajasv.com'),
(19, 2, 'GPSC Foundation Batch', 'Main', 1, '2024-06-10', 'malhar@praajasv.com'),
(20, 2, 'GPSC 1 year batch', 'Main', 1, '2024-06-10', 'malhar@praajasv.com'),
(21, 2, 'UPSC 1 YEAR', 'Main', 1, '2024-06-10', 'malhar@praajasv.com'),
(22, 2, 'UPSC 2 YEAR', 'Main', 1, '2024-06-10', 'malhar@praajasv.com'),
(23, 2, 'UPSC 3 YEAR', 'Main', 1, '2024-06-10', 'malhar@praajasv.com'),
(24, 2, 'UPSC master ', 'Main', 1, '2024-06-10', 'malhar@praajasv.com'),
(25, 2, 'UPSC Unlimited', 'Main', 1, '2024-06-10', 'malhar@praajasv.com'),
(26, 2, 'PSI BATCH 2024', 'Main', 1, '2024-06-10', 'malhar@praajasv.com'),
(27, 2, 'Constable Batch 2024', 'Main', 1, '2024-06-10', 'malhar@praajasv.com'),
(28, 2, 'CCE Mains', 'Main', 1, '2024-06-10', 'malhar@praajasv.com'),
(29, 2, 'GPSC Mains batch', 'Main', 1, '2024-06-10', 'malhar@praajasv.com'),
(30, 1, 'UPSC GS Foundation Batch 2 year', 'Main', 1, '2024-06-10', 'yogendra@gmail.com'),
(31, 1, 'UPSC GS Foundation Batch 3 year', 'Main', 1, '2024-06-10', 'yogendra@gmail.com'),
(32, 3, 'AGRICULTURE BATCH', 'Main', 1, '2024-06-26', 'milan@praajasv.com'),
(33, 1, 'Mentorship', 'Main', 1, '2024-06-26', 'admin@praajasv.com'),
(34, 3, 'GPSC MAINS BATCH ', 'Main', 1, '2024-06-27', 'milan@praajasv.com'),
(35, 3, 'UPSC 2 YEAR BATCH ', 'Main', 1, '2024-06-27', 'milan@praajasv.com'),
(36, 3, 'UPSC 3 YEAR BATCH ', 'Main', 1, '2024-06-27', 'milan@praajasv.com'),
(37, 3, 'UPSC UNLIMITED BATCH ', 'Main', 1, '2024-06-27', 'milan@praajasv.com'),
(38, 3, 'MASTER COURSE ', 'Main', 1, '2024-06-27', 'milan@praajasv.com');

-- --------------------------------------------------------

--
-- Table structure for table `course_batch`
--

CREATE TABLE `course_batch` (
  `ID` int(11) NOT NULL,
  `CourseID` int(11) NOT NULL DEFAULT -1,
  `BatchName` varchar(256) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `course_batch`
--

INSERT INTO `course_batch` (`ID`, `CourseID`, `BatchName`, `CreatedDate`, `CreatedTime`, `CreatedBy`, `IsActive`) VALUES
(2, 1, 'AOC 1', '2024-06-07', '14:40:09', 'admin@praajasv.com', 1),
(3, 2, 'PSI 6', '2024-06-07', '15:29:23', 'milan@praajasv.com', 1),
(4, 16, 'PSI - 6 ', '2024-06-07', '18:17:08', 'milan@praajasv.com', 1),
(5, 17, 'GN -10', '2024-06-07', '18:19:12', 'milan@praajasv.com', 1),
(7, 19, 'AN 4', '2024-06-10', '15:30:28', 'malhar@praajasv.com', 1),
(8, 30, 'AOC 1', '2024-06-10', '15:50:43', 'yogendra@gmail.com', 1),
(9, 31, 'AOC 1', '2024-06-10', '15:51:56', 'yogendra@gmail.com', 1),
(10, 28, 'CCE MAINS 2024', '2024-06-10', '17:21:10', 'malhar@praajasv.com', 1),
(11, 20, 'AN-4', '2024-06-11', '18:42:27', 'MALHAR@PRAAJASV.COM', 1),
(12, 29, 'GPSC MAIN 2024 AHMEDABAD', '2024-06-11', '18:46:18', 'MALHAR@PRAAJASV.COM', 1),
(13, 27, 'CONSTABLE JUNE 2024', '2024-06-14', '11:23:15', 'malhar@praajasv.com', 1),
(14, 26, 'PSI JUNE 2024', '2024-06-14', '11:24:00', 'malhar@praajasv.com', 1),
(15, 33, 'AOC 1', '2024-06-26', '17:22:36', 'admin@praajasv.com', 1),
(17, 32, 'Kheti Madadadnish/Agriculture Assistant', '2024-06-27', '14:00:24', 'admin@praajasv.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_book`
--

CREATE TABLE `course_book` (
  `ID` int(11) NOT NULL,
  `Course` varchar(256) NOT NULL,
  `CourseBook` varchar(256) NOT NULL,
  `CreatedDate` varchar(50) NOT NULL,
  `CreatedTime` varchar(50) NOT NULL,
  `CreatedBy` varchar(50) NOT NULL,
  `IsActive` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `course_book`
--

INSERT INTO `course_book` (`ID`, `Course`, `CourseBook`, `CreatedDate`, `CreatedTime`, `CreatedBy`, `IsActive`) VALUES
(1, '1', '9', '2024-06-10', '16:05:59', 'yogendra@gmail.com', 1),
(2, '1', '8', '2024-06-10', '16:06:11', 'yogendra@gmail.com', 1),
(3, '1', '7', '2024-06-10', '16:06:22', 'yogendra@gmail.com', 1),
(4, '1', '6', '2024-06-10', '16:06:33', 'yogendra@gmail.com', 1),
(5, '1', '5', '2024-06-10', '16:06:44', 'yogendra@gmail.com', 1),
(6, '1', '4', '2024-06-10', '16:06:59', 'yogendra@gmail.com', 1),
(7, '1', '3', '2024-06-10', '16:07:12', 'yogendra@gmail.com', 1),
(8, '1', '2', '2024-06-10', '16:07:24', 'yogendra@gmail.com', 1),
(9, '1', '1', '2024-06-10', '16:07:33', 'yogendra@gmail.com', 1),
(10, '30', '9', '2024-06-10', '16:52:09', 'yogendra@gmail.com', 1),
(11, '30', '8', '2024-06-10', '16:52:17', 'yogendra@gmail.com', 1),
(12, '30', '7', '2024-06-10', '16:52:28', 'yogendra@gmail.com', 1),
(13, '30', '6', '2024-06-10', '16:52:38', 'yogendra@gmail.com', 1),
(14, '30', '5', '2024-06-10', '16:52:49', 'yogendra@gmail.com', 1),
(15, '30', '4', '2024-06-10', '16:53:04', 'yogendra@gmail.com', 1),
(16, '30', '3', '2024-06-10', '16:53:15', 'yogendra@gmail.com', 1),
(17, '30', '2', '2024-06-10', '16:53:25', 'yogendra@gmail.com', 1),
(18, '30', '1', '2024-06-10', '16:53:34', 'yogendra@gmail.com', 1),
(19, '31', '9', '2024-06-10', '16:53:57', 'yogendra@gmail.com', 1),
(20, '31', '8', '2024-06-10', '16:54:09', 'yogendra@gmail.com', 1),
(21, '31', '7', '2024-06-10', '16:54:18', 'yogendra@gmail.com', 1),
(22, '31', '6', '2024-06-10', '16:54:59', 'yogendra@gmail.com', 1),
(23, '31', '5', '2024-06-10', '16:55:11', 'yogendra@gmail.com', 1),
(24, '31', '4', '2024-06-10', '16:55:25', 'yogendra@gmail.com', 1),
(25, '31', '3', '2024-06-10', '16:55:40', 'yogendra@gmail.com', 1),
(26, '31', '2', '2024-06-10', '16:56:02', 'yogendra@gmail.com', 1),
(27, '31', '1', '2024-06-10', '16:56:11', 'yogendra@gmail.com', 1),
(28, '28', '9', '2024-06-10', '17:21:39', 'malhar@praajasv.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_cordinator`
--

CREATE TABLE `course_cordinator` (
  `ID` int(11) NOT NULL,
  `CourseID` int(11) NOT NULL DEFAULT -1,
  `Name` varchar(256) NOT NULL DEFAULT '',
  `PhoneNumber` varchar(256) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_counsellor`
--

CREATE TABLE `course_counsellor` (
  `ID` int(11) NOT NULL,
  `CounsellorID` int(11) NOT NULL DEFAULT -1,
  `CourseID` varchar(256) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(256) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `course_counsellor`
--

INSERT INTO `course_counsellor` (`ID`, `CounsellorID`, `CourseID`, `CreatedDate`, `CreatedTime`, `CreatedBy`, `IsActive`) VALUES
(1, 15, '17,16,15,14,13,12,10,7,6,4', '2024-06-07', '15:35:58', 'admin@praajasv.com', 1),
(2, 11, '17,16,13,6', '2024-06-07', '16:10:19', 'milan@praajasv.com', 1),
(3, 16, '17,4', '2024-06-07', '18:22:44', 'milan@praajasv.com', 1),
(4, 18, '29,28,27,26,25,24,23,22,21,20,19', '2024-06-10', '14:05:04', 'malhar@praajasv.com', 1),
(5, 6, '31,30,1', '2024-06-10', '16:58:54', 'yogendra@gmail.com', 1),
(6, 7, '31,30,1', '2024-06-10', '16:59:14', 'yogendra@gmail.com', 1),
(7, 8, '31,30,1', '2024-06-10', '16:59:30', 'yogendra@gmail.com', 1),
(8, 20, '18,17,5,4', '2024-06-11', '18:52:17', 'MILAN@PRAAJASV.COM', 1),
(9, 21, '18,17,16,6,4', '2024-06-13', '17:05:42', 'milan@praajasv.com', 1),
(10, 22, '17,16,15,14,13,12,11,6,4', '2024-06-13', '17:11:05', 'milan@praajasv.com', 1),
(11, 25, '33,31,30,1', '2024-06-26', '14:39:11', 'admin@praajasv.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `current_affairs`
--

CREATE TABLE `current_affairs` (
  `ID` int(11) NOT NULL,
  `CurrentDate` varchar(256) NOT NULL DEFAULT '',
  `PdfName` varchar(256) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `educator`
--

CREATE TABLE `educator` (
  `ID` int(11) NOT NULL,
  `CenterID` int(11) NOT NULL DEFAULT -1,
  `EducatorName` varchar(256) NOT NULL DEFAULT '',
  `PhoneNumber` varchar(256) NOT NULL DEFAULT '',
  `AlternativeNumber` varchar(256) NOT NULL DEFAULT '',
  `Email` varchar(256) NOT NULL DEFAULT '',
  `Designation` varchar(256) NOT NULL DEFAULT '',
  `EducatorDetails` varchar(1000) NOT NULL DEFAULT '',
  `EducatorProfile` varchar(256) NOT NULL DEFAULT '',
  `StrategySession` int(11) NOT NULL DEFAULT 0,
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `educator_essay`
--

CREATE TABLE `educator_essay` (
  `ID` int(11) NOT NULL,
  `Educator` varchar(256) NOT NULL DEFAULT '',
  `Question` varchar(256) NOT NULL DEFAULT '',
  `QuestionDate` varchar(256) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_no`
--

CREATE TABLE `invoice_no` (
  `ID` int(11) NOT NULL,
  `InvoiceNo` int(11) NOT NULL,
  `Mode` varchar(50) NOT NULL,
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `invoice_no`
--

INSERT INTO `invoice_no` (`ID`, `InvoiceNo`, `Mode`, `CreatedDate`, `CreatedTime`, `CreatedBy`, `IsActive`) VALUES
(1, 67, 'Online', '2023-10-09', '14:52:43', 'admin@praajasv.com', 1),
(2, 130, 'Offline', '2023-10-09', '14:53:58', 'admin@praajasv.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lead_assignment`
--

CREATE TABLE `lead_assignment` (
  `ID` int(11) NOT NULL,
  `LeadID` int(11) NOT NULL DEFAULT -1,
  `AssignedTo` int(11) NOT NULL DEFAULT -1,
  `Status` varchar(50) NOT NULL DEFAULT '',
  `Remark` varchar(256) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lead_assignment`
--

INSERT INTO `lead_assignment` (`ID`, `LeadID`, `AssignedTo`, `Status`, `Remark`, `CreatedDate`, `CreatedTime`, `CreatedBy`) VALUES
(1, 1, 4, 'Proposal Sent', 'Lead Created', '2026-01-19', '13:34:13', 'saurabh@digidir.com'),
(2, 2, 4, 'Not Action Taken', 'Lead Created', '2026-01-19', '13:34:13', 'saurabh@digidir.com'),
(3, 3, 4, 'Follow-up', 'Lead Created', '2026-01-19', '13:34:13', 'saurabh@digidir.com'),
(4, 4, 4, 'Follow-up', 'Lead Created', '2026-01-19', '13:34:13', 'saurabh@digidir.com'),
(5, 5, 4, 'Follow-up', 'Lead Created', '2026-01-19', '13:34:13', 'saurabh@digidir.com'),
(6, 6, 4, 'Follow-up', 'Lead Created', '2026-01-19', '13:34:13', 'saurabh@digidir.com'),
(7, 7, 4, 'In Progress', 'Lead Created', '2026-01-19', '13:34:13', 'saurabh@digidir.com'),
(8, 8, 5, 'Proposal Sent', 'Many followup calls and message done', '2026-01-22', '13:43:14', 'naina.gupta@digidir.com'),
(9, 9, 5, 'Proposal Sent', 'Will have a meeting after reviewing the proposal\r\n', '2026-01-22', '10:30:27', 'naina.gupta@digidir.com'),
(10, 10, 5, 'Proposal Sent', 'meeting done and proposal sent\r\n', '2026-01-22', '13:42:39', 'naina.gupta@digidir.com'),
(11, 11, 5, 'Meeting Scheduled', 'Lead Created', '2026-01-21', '18:11:51', 'naina.gupta@digidir.com'),
(12, 12, 4, 'In Progress', 'Lead Created', '2026-01-21', '18:14:56', 'saurabh@digidir.com'),
(13, 13, 4, 'Proposal Sent', 'Lead Created', '2026-01-21', '18:21:32', 'saurabh@digidir.com'),
(14, 14, 6, 'Proposal Sent', 'Lead Created', '2026-01-21', '18:25:20', 'saurabh@digidir.com'),
(15, 15, 5, 'Proposal Sent', 'Followup taken .. will discuss with the team and will tell by thursday', '2026-01-27', '12:30:51', 'naina.gupta@digidir.com'),
(16, 16, 5, 'In Progress', 'Called but not picked\r\n', '2026-01-27', '12:32:00', 'naina.gupta@digidir.com'),
(17, 17, 6, 'In Progress', 'Lead Created', '2026-01-22', '00:00:19', 'saurabh@digidir.com'),
(18, 18, 4, 'In Progress', 'Lead Created', '2026-01-22', '00:04:40', 'saurabh@digidir.com'),
(19, 19, 5, 'Not Interested', 'followup taken on friday \r\nhave budget issues \r\n\r\ncalled today .. not picked\r\n', '2026-01-27', '12:34:59', 'naina.gupta@digidir.com'),
(20, 20, 5, 'In Progress', 'Will connect next week\r\n', '2026-01-23', '13:33:53', 'naina.gupta@digidir.com'),
(21, 21, 5, 'In Progress', 'call not picked\r\n', '2026-01-23', '11:29:05', 'naina.gupta@digidir.com'),
(22, 22, 5, 'In Progress', 'Lead Created', '2026-01-23', '13:36:51', 'naina.gupta@digidir.com'),
(23, 23, 5, 'In Progress', 'Was busy and asked to call later', '2026-01-23', '13:38:18', 'naina.gupta@digidir.com'),
(24, 24, 4, 'Proposal Sent', 'Lead Created', '2026-01-23', '20:19:34', 'saurabh@digidir.com'),
(25, 25, 4, 'Proposal Sent', 'Lead Created', '2026-01-24', '12:23:18', 'saurabh@digidir.com'),
(26, 26, 4, 'No Action Taken', 'Lead Created', '2026-01-24', '17:53:44', 'saurabh@digidir.com'),
(27, 27, 4, 'No Action Taken', 'Lead Created', '2026-01-24', '18:26:51', 'saurabh@digidir.com'),
(28, 28, 5, 'In Progress', 'switched off\r\n', '2026-01-27', '12:16:03', 'naina.gupta@digidir.com'),
(29, 29, 5, 'In Progress', 'Lead Created', '2026-01-27', '12:25:46', 'naina.gupta@digidir.com'),
(30, 30, 5, 'In Progress', 'had a discussion.. wants smo.. will connect tomorrow for the meeting', '2026-01-27', '13:09:02', 'naina.gupta@digidir.com'),
(31, 31, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:21:33', 'ujala@digidir.com'),
(32, 32, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:21:33', 'ujala@digidir.com'),
(33, 33, 6, 'Pending Descisions', 'Lead Created', '2026-01-27', '08:21:33', 'ujala@digidir.com'),
(34, 34, 6, 'Not interested', 'Lead Created', '2026-01-27', '08:21:33', 'ujala@digidir.com'),
(35, 35, 6, 'Pending Descisions', 'Lead Created', '2026-01-27', '08:21:33', 'ujala@digidir.com'),
(36, 36, 6, 'Pending Descisions', 'Lead Created', '2026-01-27', '08:21:33', 'ujala@digidir.com'),
(37, 37, 6, 'Converted', 'Lead Created', '2026-01-27', '08:21:33', 'ujala@digidir.com'),
(38, 38, 6, 'Pending Descisions', 'Lead Created', '2026-01-27', '08:21:33', 'ujala@digidir.com'),
(39, 39, 6, 'Lost - Budget Issue', 'Lead Created', '2026-01-27', '08:21:33', 'ujala@digidir.com'),
(40, 40, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:21:33', 'ujala@digidir.com'),
(41, 41, 6, 'Lost - Competitor', 'Lead Created', '2026-01-27', '08:21:33', 'ujala@digidir.com'),
(42, 42, 6, 'Pending Descisions', 'Lead Created', '2026-01-27', '08:21:33', 'ujala@digidir.com'),
(43, 44, 6, 'Lost - Budget Issue', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(44, 45, 6, 'Pending Descisions', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(45, 46, 6, 'Lost - Budget Issue', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(46, 47, 6, 'Converted', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(47, 48, 6, 'Pending Descisions', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(48, 49, 6, 'Lost - Budget Issue', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(49, 50, 6, 'Lost - Budget Issue', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(50, 51, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(51, 52, 6, 'Lost - Budget Issue', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(52, 53, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(53, 54, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(54, 55, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(55, 56, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(56, 57, 6, 'Dead', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(57, 58, 6, 'Lost - Budget Issue', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(58, 59, 6, 'Converted', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(59, 60, 6, 'On Hold', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(60, 61, 6, 'Not Intreseted', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(61, 62, 6, 'Pending Descisions', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(62, 63, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(63, 64, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(64, 65, 6, 'Pending Descisions', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(65, 66, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(66, 67, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(67, 68, 6, 'Pending Descisions', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(68, 69, 6, 'Dead', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(69, 70, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(70, 71, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(71, 72, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(72, 73, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(73, 74, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(74, 75, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(75, 76, 6, 'Dead', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(76, 77, 6, 'Lost – Budget Issue', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(77, 78, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(78, 79, 6, 'Dead', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(79, 80, 6, 'Dead', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(80, 81, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(81, 82, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(82, 83, 6, 'Converted', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(83, 84, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(84, 85, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(85, 86, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(86, 87, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(87, 88, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(88, 89, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(89, 90, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(90, 91, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(91, 92, 6, 'Converted', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(92, 93, 6, 'Dead', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(93, 94, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(94, 95, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(95, 96, 6, 'Lost- Budget Issue', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(96, 97, 6, 'Lost- Budget Issue', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(97, 98, 6, 'Junk', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(98, 99, 6, 'Junk', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(99, 100, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(100, 101, 6, 'Dead', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(101, 102, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(102, 103, 6, 'Pending Decisions', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(103, 104, 6, 'Pending Decisions', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(104, 105, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(105, 106, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(106, 107, 6, 'Converted', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(107, 108, 6, 'Pending Decisions', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(108, 109, 6, 'Pending Decisions', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(109, 110, 6, 'Lost- Budget Issue', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(110, 112, 6, 'Pending Decisions', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(111, 113, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(112, 114, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(113, 115, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(114, 116, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(115, 117, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(116, 118, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(117, 119, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(118, 120, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(119, 121, 6, 'Converted', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(120, 122, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(121, 123, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(122, 124, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(123, 125, 6, 'Junk', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(124, 126, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(125, 127, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(126, 128, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(127, 129, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(128, 130, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(129, 131, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(130, 132, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(131, 133, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(132, 134, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(133, 135, 6, 'Converted', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(134, 136, 6, 'Lost- Budget Issue', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(135, 137, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(136, 138, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(137, 139, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(138, 140, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(139, 141, 6, 'Converted', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(140, 142, 6, 'Lost - Budget Issue', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(141, 143, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(142, 144, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(143, 145, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(144, 146, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(145, 147, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(146, 148, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(147, 149, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(148, 150, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(149, 151, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(150, 152, 6, 'Dead', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(151, 153, 6, 'Lost - Budget Issue', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(152, 154, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(153, 155, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(154, 156, 6, 'Converted', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(155, 157, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(156, 158, 6, 'Dead', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(157, 159, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(158, 160, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(159, 161, 6, 'Lost- Budget Issue', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(160, 162, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(161, 163, 6, 'Dead', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(162, 164, 6, 'Converted', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(163, 165, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(164, 166, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(165, 167, 6, 'Dead', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(166, 168, 6, 'Dead', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(167, 169, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(168, 170, 6, 'Lost- Budget Issue', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(169, 171, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(170, 172, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(171, 173, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(172, 174, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(173, 175, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(174, 176, 6, 'Lost- Budget Issue', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(175, 177, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(176, 178, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(177, 179, 6, 'Dead', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(178, 180, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(179, 181, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(180, 182, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(181, 183, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(182, 184, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(183, 185, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(184, 186, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(185, 187, 6, 'Lost- Budget Issue', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(186, 188, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(187, 189, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(188, 190, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(189, 191, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(190, 192, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(191, 193, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(192, 194, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(193, 195, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(194, 196, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(195, 197, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(196, 198, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(197, 199, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(198, 200, 6, 'Lost- Budget Issue', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(199, 201, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(200, 202, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(201, 203, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(202, 204, 6, 'Lost- Budget Issue', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(203, 205, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(204, 206, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(205, 207, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(206, 208, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(207, 209, 6, 'Lost- Budget Issue', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(208, 210, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(209, 211, 6, 'Lost- Budget Issue', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(210, 212, 6, 'Dead', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(211, 213, 6, 'Lost- Budget Issue', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(212, 214, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(213, 215, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(214, 216, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(215, 217, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(216, 218, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(217, 219, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(218, 220, 6, 'Lost- Budget Issue', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(219, 221, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(220, 222, 6, 'Dead', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(221, 223, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(222, 224, 6, 'Lost- Budget Issue', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(223, 225, 6, 'Dead', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(224, 226, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(225, 227, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(226, 228, 6, 'Lost- Budget Issue', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(227, 229, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(228, 230, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(229, 231, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(230, 232, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(231, 233, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(232, 234, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(233, 235, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(234, 236, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(235, 237, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(236, 238, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(237, 239, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(238, 240, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(239, 241, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(240, 242, 6, 'Junk', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(241, 243, 5, 'In Progress', 'Asked to share the details then will connect over the meeting', '2026-01-27', '15:12:25', 'naina.gupta@digidir.com'),
(242, 244, 5, 'In Progress', 'Lead Created', '2026-01-27', '15:20:14', 'naina.gupta@digidir.com'),
(243, 245, 5, 'In Progress', 'Lead Created', '2026-01-27', '15:21:36', 'naina.gupta@digidir.com'),
(244, 246, 6, 'Follow-up', '1st Virtual meeting Done\r\n2nd meeting proposal planned for 28th Jan \r\n', '2026-01-28', '12:46:59', 'ujala@digidir.com'),
(245, 247, 6, 'Follow-up', 'Discussion started for SMO requirement\r\nAsked for virtual meeting, he has shared his Instagram account link', '2026-01-28', '12:50:03', 'ujala@digidir.com'),
(246, 248, 6, 'Follow-up', 'Discussion started\r\nRequirement is bing ads\r\nasked for portfolio shared only profile with him, need to arrange a meet', '2026-01-28', '12:51:27', 'ujala@digidir.com'),
(247, 249, 5, 'In Progress', 'Call not picked .. whatsapp msg done\r\n', '2026-01-28', '13:03:52', 'naina.gupta@digidir.com'),
(248, 250, 5, 'Meeting Scheduled', 'Call done.. meeting booked for 29th jan ', '2026-01-28', '15:31:05', 'naina.gupta@digidir.com');

-- --------------------------------------------------------

--
-- Table structure for table `lead_assignment_history`
--

CREATE TABLE `lead_assignment_history` (
  `ID` int(11) NOT NULL,
  `LeadID` int(11) NOT NULL DEFAULT -1,
  `AssignedTo` int(11) NOT NULL DEFAULT -1,
  `Status` varchar(50) NOT NULL DEFAULT '',
  `Remark` varchar(256) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lead_assignment_history`
--

INSERT INTO `lead_assignment_history` (`ID`, `LeadID`, `AssignedTo`, `Status`, `Remark`, `CreatedDate`, `CreatedTime`, `CreatedBy`) VALUES
(1, 1, 4, 'Proposal Sent', 'Lead Created', '2026-01-19', '13:34:13', 'saurabh@digidir.com'),
(2, 2, 4, 'Not Action Taken', 'Lead Created', '2026-01-19', '13:34:13', 'saurabh@digidir.com'),
(3, 3, 4, 'Follow-up', 'Lead Created', '2026-01-19', '13:34:13', 'saurabh@digidir.com'),
(4, 4, 4, 'Follow-up', 'Lead Created', '2026-01-19', '13:34:13', 'saurabh@digidir.com'),
(5, 5, 4, 'Follow-up', 'Lead Created', '2026-01-19', '13:34:13', 'saurabh@digidir.com'),
(6, 6, 4, 'Follow-up', 'Lead Created', '2026-01-19', '13:34:13', 'saurabh@digidir.com'),
(7, 7, 4, 'In Progress', 'Lead Created', '2026-01-19', '13:34:13', 'saurabh@digidir.com'),
(8, 8, 5, 'Proposal Sent', 'Lead Created', '2026-01-21', '13:20:01', 'naina.gupta@digidir.com'),
(9, 8, 5, 'Proposal Sent', 'meeting done and bank details shared ', '2026-01-21', '13:22:14', 'naina.gupta@digidir.com'),
(10, 9, 5, 'Proposal Sent', 'Lead Created', '2026-01-21', '18:05:21', 'naina.gupta@digidir.com'),
(11, 10, 5, 'In Progress', 'Lead Created', '2026-01-21', '18:09:04', 'naina.gupta@digidir.com'),
(12, 11, 5, 'Meeting Scheduled', 'Lead Created', '2026-01-21', '18:11:51', 'naina.gupta@digidir.com'),
(13, 12, 4, 'In Progress', 'Lead Created', '2026-01-21', '18:14:56', 'saurabh@digidir.com'),
(14, 12, 4, 'In Progress', 'meeting done on 6th Jan 2026', '2026-01-21', '18:15:39', 'saurabh@digidir.com'),
(15, 12, 4, 'In Progress', 'relevant references sent on 7th Jan 2026', '2026-01-21', '18:15:56', 'saurabh@digidir.com'),
(16, 12, 4, 'In Progress', 'client is exploring budget friendly options. still in discussion. Decision pending. ', '2026-01-21', '18:16:22', 'saurabh@digidir.com'),
(17, 13, 4, 'Proposal Sent', 'Lead Created', '2026-01-21', '18:21:32', 'saurabh@digidir.com'),
(18, 14, 6, 'Proposal Sent', 'Lead Created', '2026-01-21', '18:25:20', 'saurabh@digidir.com'),
(19, 15, 5, 'Proposal Sent', 'Lead Created', '2026-01-21', '18:25:31', 'naina.gupta@digidir.com'),
(20, 1, 4, 'Proposal Sent', 'owner abhishek wants to review one more proposal within this week, then he will update us. Overall, they are positive about our proposal. ', '2026-01-21', '18:26:49', 'saurabh@digidir.com'),
(21, 16, 5, 'In Progress', 'Lead Created', '2026-01-21', '18:28:50', 'naina.gupta@digidir.com'),
(22, 17, 6, 'In Progress', 'Lead Created', '2026-01-22', '00:00:19', 'saurabh@digidir.com'),
(23, 18, 4, 'In Progress', 'Lead Created', '2026-01-22', '00:04:40', 'saurabh@digidir.com'),
(24, 18, 4, 'In Progress', 'first call was done on 21st Jan. ', '2026-01-22', '00:05:28', 'saurabh@digidir.com'),
(25, 18, 4, 'In Progress', 'client mentioned about 1 Lakh total budget for meta and google ads. He wants to discuss proposal on 22nd Jan 2026', '2026-01-22', '00:06:06', 'saurabh@digidir.com'),
(26, 19, 5, 'Not Action Taken', 'Lead Created', '2026-01-22', '08:52:40', 'saurabh@digidir.com'),
(27, 8, 5, 'Proposal Sent', 'Call done .. not responding ', '2026-01-22', '10:22:50', 'naina.gupta@digidir.com'),
(28, 9, 5, 'Proposal Sent', 'first call done, packages shared as well', '2026-01-22', '10:29:34', 'naina.gupta@digidir.com'),
(29, 9, 5, 'Proposal Sent', 'Will have a meeting after reviewing the proposal\r\n', '2026-01-22', '10:30:27', 'naina.gupta@digidir.com'),
(30, 10, 5, 'Meeting Scheduled', 'Meeting booked for 12pm\r\n', '2026-01-22', '10:43:02', 'naina.gupta@digidir.com'),
(31, 11, 5, 'Meeting Scheduled', 'Meeting booked for 3pm', '2026-01-22', '10:43:49', 'naina.gupta@digidir.com'),
(32, 15, 5, 'Proposal Sent', 'Meeting done and proposal shared \r\n', '2026-01-22', '11:06:02', 'naina.gupta@digidir.com'),
(33, 16, 5, 'In Progress', 'Had a discussion.. will tell the timings to connect for meeting', '2026-01-22', '11:07:00', 'naina.gupta@digidir.com'),
(34, 19, 5, 'Not Action Taken', 'Meeting booked for 12:30', '2026-01-22', '11:36:14', 'naina.gupta@digidir.com'),
(35, 19, 5, 'Meeting Scheduled', 'Meeting scheduled', '2026-01-22', '11:37:00', 'naina.gupta@digidir.com'),
(36, 15, 5, 'Proposal Sent', 'Lead Updated', '2026-01-22', '12:22:33', 'saurabh@digidir.com'),
(37, 19, 5, 'Proposal Sent', 'Meeting done.. proposal sent\r\n', '2026-01-22', '13:41:11', 'naina.gupta@digidir.com'),
(38, 15, 5, 'Proposal Sent', 'followup message done', '2026-01-22', '13:42:19', 'naina.gupta@digidir.com'),
(39, 10, 5, 'Proposal Sent', 'meeting done and proposal sent\r\n', '2026-01-22', '13:42:39', 'naina.gupta@digidir.com'),
(40, 8, 5, 'Proposal Sent', 'Many followup calls and message done', '2026-01-22', '13:43:14', 'naina.gupta@digidir.com'),
(41, 20, 5, 'In Progress', 'Lead Created', '2026-01-22', '13:46:17', 'naina.gupta@digidir.com'),
(42, 21, 5, 'In Progress', 'Lead Created', '2026-01-23', '10:51:45', 'naina.gupta@digidir.com'),
(43, 21, 5, 'In Progress', 'call not picked\r\n', '2026-01-23', '11:29:05', 'naina.gupta@digidir.com'),
(44, 20, 5, 'In Progress', 'Will connect next week\r\n', '2026-01-23', '13:33:53', 'naina.gupta@digidir.com'),
(45, 22, 5, 'In Progress', 'Lead Created', '2026-01-23', '13:36:51', 'naina.gupta@digidir.com'),
(46, 23, 5, 'In Progress', 'Lead Created', '2026-01-23', '13:37:50', 'naina.gupta@digidir.com'),
(47, 23, 5, 'In Progress', 'Was busy and asked to call later', '2026-01-23', '13:38:18', 'naina.gupta@digidir.com'),
(48, 24, 4, 'Proposal Sent', 'Lead Created', '2026-01-23', '20:19:34', 'saurabh@digidir.com'),
(49, 25, 4, 'Proposal Sent', 'Lead Created', '2026-01-24', '12:23:18', 'saurabh@digidir.com'),
(50, 25, 4, 'Proposal Sent', 'need to send proposal on Whatsapp for SMO, SEO, Google Ads, Meta Ads. client will decide if this needs to be customized or not. ', '2026-01-24', '12:24:45', 'saurabh@digidir.com'),
(51, 25, 4, 'Follow-up', 'Lead Updated', '2026-01-24', '12:25:18', 'saurabh@digidir.com'),
(52, 8, 5, 'Proposal Sent', 'I also tried connecting with her via Whatsapp, there was no response on 23rd jan ', '2026-01-24', '14:07:59', 'saurabh@digidir.com'),
(53, 8, 5, 'Proposal Sent', 'tried connecting again via WhatsApp. No response yet', '2026-01-24', '14:08:16', 'saurabh@digidir.com'),
(54, 25, 4, 'Proposal Sent', 'Lead Updated', '2026-01-24', '14:21:31', 'saurabh@digidir.com'),
(55, 25, 4, 'Proposal Sent', 'proposal sent on whatsapp ', '2026-01-24', '14:21:51', 'saurabh@digidir.com'),
(56, 18, 4, 'In Progress', 'follow up done via whatsapp but no response yet', '2026-01-24', '14:22:45', 'saurabh@digidir.com'),
(57, 17, 6, 'In Progress', 'I had a call with Kannav. He is allocating funds for the services. He will get back as soon as he is ready', '2026-01-24', '14:25:12', 'saurabh@digidir.com'),
(58, 17, 6, 'Pending Decision', 'Lead Updated', '2026-01-24', '14:26:59', 'saurabh@digidir.com'),
(59, 14, 6, 'Proposal Sent', 'multiple followups done via whatsapp and call but no response', '2026-01-24', '14:29:47', 'saurabh@digidir.com'),
(60, 14, 6, 'Proposal Sent', 'After linkedin chat with Dr Charu (Owner), I got to know about commercials issues. ', '2026-01-24', '14:30:09', 'saurabh@digidir.com'),
(61, 14, 6, 'Proposal Sent', 'I offered discount to Sonam now on whatsapp msg and requested to get on call', '2026-01-24', '14:31:58', 'saurabh@digidir.com'),
(62, 26, 4, 'No Action Taken', 'Lead Created', '2026-01-24', '17:53:44', 'saurabh@digidir.com'),
(63, 27, 4, 'No Action Taken', 'Lead Created', '2026-01-24', '18:26:51', 'saurabh@digidir.com'),
(64, 26, 4, 'No Action Taken', 'need to send proposal as per the details provided by client', '2026-01-24', '18:27:29', 'saurabh@digidir.com'),
(65, 27, 4, 'No Action Taken', 'virtual meet is planned for 25th Jan 1pm', '2026-01-24', '18:28:03', 'saurabh@digidir.com'),
(66, 27, 4, 'No Action Taken', 'Lead Updated', '2026-01-24', '18:29:25', 'saurabh@digidir.com'),
(67, 28, 5, 'In Progress', 'Lead Created', '2026-01-27', '12:15:33', 'naina.gupta@digidir.com'),
(68, 28, 5, 'In Progress', 'switched off\r\n', '2026-01-27', '12:16:03', 'naina.gupta@digidir.com'),
(69, 29, 5, 'In Progress', 'Lead Created', '2026-01-27', '12:25:46', 'naina.gupta@digidir.com'),
(70, 23, 5, 'In Progress', 'Lead Updated', '2026-01-27', '12:26:56', 'naina.gupta@digidir.com'),
(71, 15, 5, 'Proposal Sent', 'Followup taken .. will discuss with the team and will tell by thursday', '2026-01-27', '12:30:51', 'naina.gupta@digidir.com'),
(72, 16, 5, 'In Progress', 'Called but not picked\r\n', '2026-01-27', '12:32:00', 'naina.gupta@digidir.com'),
(73, 19, 5, 'Not Interested', 'followup taken on friday \r\nhave budget issues \r\n\r\ncalled today .. not picked\r\n', '2026-01-27', '12:34:59', 'naina.gupta@digidir.com'),
(74, 20, 5, 'In Progress', 'called was busy.. asked to call on thursday .. details and everything shared', '2026-01-27', '12:40:58', 'naina.gupta@digidir.com'),
(75, 21, 5, 'In Progress', 'call not picked .. whatsapp msg done', '2026-01-27', '12:44:24', 'naina.gupta@digidir.com'),
(76, 22, 5, 'In Progress', 'Lead Updated', '2026-01-27', '12:45:55', 'naina.gupta@digidir.com'),
(77, 22, 5, 'In Progress', 'called but disconnected ', '2026-01-27', '12:48:30', 'naina.gupta@digidir.com'),
(78, 23, 5, 'In Progress', 'disconnected the call.. not interested', '2026-01-27', '12:52:03', 'naina.gupta@digidir.com'),
(79, 23, 5, 'Dead', 'Lead Updated', '2026-01-27', '12:52:22', 'naina.gupta@digidir.com'),
(80, 10, 5, 'Proposal Sent', 'call done but not picked.. whatsapp followup done', '2026-01-27', '12:56:50', 'naina.gupta@digidir.com'),
(81, 30, 5, 'In Progress', 'Lead Created', '2026-01-27', '13:08:23', 'naina.gupta@digidir.com'),
(82, 30, 5, 'In Progress', 'had a discussion.. wants smo.. will connect tomorrow for the meeting', '2026-01-27', '13:09:02', 'naina.gupta@digidir.com'),
(83, 31, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:21:33', 'ujala@digidir.com'),
(84, 32, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:21:33', 'ujala@digidir.com'),
(85, 33, 6, 'Pending Descisions', 'Lead Created', '2026-01-27', '08:21:33', 'ujala@digidir.com'),
(86, 34, 6, 'Not interested', 'Lead Created', '2026-01-27', '08:21:33', 'ujala@digidir.com'),
(87, 35, 6, 'Pending Descisions', 'Lead Created', '2026-01-27', '08:21:33', 'ujala@digidir.com'),
(88, 36, 6, 'Pending Descisions', 'Lead Created', '2026-01-27', '08:21:33', 'ujala@digidir.com'),
(89, 37, 6, 'Converted', 'Lead Created', '2026-01-27', '08:21:33', 'ujala@digidir.com'),
(90, 38, 6, 'Pending Descisions', 'Lead Created', '2026-01-27', '08:21:33', 'ujala@digidir.com'),
(91, 39, 6, 'Lost - Budget Issue', 'Lead Created', '2026-01-27', '08:21:33', 'ujala@digidir.com'),
(92, 40, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:21:33', 'ujala@digidir.com'),
(93, 41, 6, 'Lost - Competitor', 'Lead Created', '2026-01-27', '08:21:33', 'ujala@digidir.com'),
(94, 42, 6, 'Pending Descisions', 'Lead Created', '2026-01-27', '08:21:33', 'ujala@digidir.com'),
(95, 44, 6, 'Lost - Budget Issue', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(96, 45, 6, 'Pending Descisions', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(97, 46, 6, 'Lost - Budget Issue', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(98, 47, 6, 'Converted', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(99, 48, 6, 'Pending Descisions', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(100, 49, 6, 'Lost - Budget Issue', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(101, 50, 6, 'Lost - Budget Issue', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(102, 51, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(103, 52, 6, 'Lost - Budget Issue', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(104, 53, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(105, 54, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(106, 55, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(107, 56, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(108, 57, 6, 'Dead', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(109, 58, 6, 'Lost - Budget Issue', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(110, 59, 6, 'Converted', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(111, 60, 6, 'On Hold', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(112, 61, 6, 'Not Intreseted', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(113, 62, 6, 'Pending Descisions', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(114, 63, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(115, 64, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(116, 65, 6, 'Pending Descisions', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(117, 66, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(118, 67, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(119, 68, 6, 'Pending Descisions', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(120, 69, 6, 'Dead', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(121, 70, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(122, 71, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(123, 72, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(124, 73, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(125, 74, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(126, 75, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(127, 76, 6, 'Dead', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(128, 77, 6, 'Lost – Budget Issue', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(129, 78, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(130, 79, 6, 'Dead', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(131, 80, 6, 'Dead', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(132, 81, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(133, 82, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(134, 83, 6, 'Converted', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(135, 84, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(136, 85, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(137, 86, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(138, 87, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(139, 88, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(140, 89, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(141, 90, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(142, 91, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(143, 92, 6, 'Converted', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(144, 93, 6, 'Dead', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(145, 94, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(146, 95, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(147, 96, 6, 'Lost- Budget Issue', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(148, 97, 6, 'Lost- Budget Issue', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(149, 98, 6, 'Junk', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(150, 99, 6, 'Junk', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(151, 100, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(152, 101, 6, 'Dead', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(153, 102, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(154, 103, 6, 'Pending Decisions', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(155, 104, 6, 'Pending Decisions', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(156, 105, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(157, 106, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(158, 107, 6, 'Converted', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(159, 108, 6, 'Pending Decisions', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(160, 109, 6, 'Pending Decisions', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(161, 110, 6, 'Lost- Budget Issue', 'Lead Created', '2026-01-27', '08:21:51', 'ujala@digidir.com'),
(162, 112, 6, 'Pending Decisions', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(163, 113, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(164, 114, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(165, 115, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(166, 116, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(167, 117, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(168, 118, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(169, 119, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(170, 120, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(171, 121, 6, 'Converted', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(172, 122, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(173, 123, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(174, 124, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(175, 125, 6, 'Junk', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(176, 126, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(177, 127, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(178, 128, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(179, 129, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(180, 130, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(181, 131, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(182, 132, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(183, 133, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(184, 134, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(185, 135, 6, 'Converted', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(186, 136, 6, 'Lost- Budget Issue', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(187, 137, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(188, 138, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(189, 139, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(190, 140, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(191, 141, 6, 'Converted', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(192, 142, 6, 'Lost - Budget Issue', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(193, 143, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(194, 144, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(195, 145, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(196, 146, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(197, 147, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(198, 148, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(199, 149, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(200, 150, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(201, 151, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(202, 152, 6, 'Dead', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(203, 153, 6, 'Lost - Budget Issue', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(204, 154, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(205, 155, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(206, 156, 6, 'Converted', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(207, 157, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(208, 158, 6, 'Dead', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(209, 159, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(210, 160, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(211, 161, 6, 'Lost- Budget Issue', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(212, 162, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(213, 163, 6, 'Dead', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(214, 164, 6, 'Converted', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(215, 165, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(216, 166, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(217, 167, 6, 'Dead', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(218, 168, 6, 'Dead', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(219, 169, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(220, 170, 6, 'Lost- Budget Issue', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(221, 171, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(222, 172, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(223, 173, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(224, 174, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(225, 175, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(226, 176, 6, 'Lost- Budget Issue', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(227, 177, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(228, 178, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(229, 179, 6, 'Dead', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(230, 180, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(231, 181, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(232, 182, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(233, 183, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(234, 184, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(235, 185, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(236, 186, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(237, 187, 6, 'Lost- Budget Issue', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(238, 188, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(239, 189, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(240, 190, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(241, 191, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(242, 192, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(243, 193, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(244, 194, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(245, 195, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(246, 196, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(247, 197, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(248, 198, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(249, 199, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(250, 200, 6, 'Lost- Budget Issue', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(251, 201, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(252, 202, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(253, 203, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(254, 204, 6, 'Lost- Budget Issue', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(255, 205, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(256, 206, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(257, 207, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(258, 208, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(259, 209, 6, 'Lost- Budget Issue', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(260, 210, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(261, 211, 6, 'Lost- Budget Issue', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(262, 212, 6, 'Dead', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(263, 213, 6, 'Lost- Budget Issue', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(264, 214, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(265, 215, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(266, 216, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(267, 217, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(268, 218, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(269, 219, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(270, 220, 6, 'Lost- Budget Issue', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(271, 221, 6, 'Not Interested', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(272, 222, 6, 'Dead', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(273, 223, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(274, 224, 6, 'Lost- Budget Issue', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(275, 225, 6, 'Dead', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(276, 226, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(277, 227, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(278, 228, 6, 'Lost- Budget Issue', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(279, 229, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(280, 230, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(281, 231, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(282, 232, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(283, 233, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(284, 234, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(285, 235, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(286, 236, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(287, 237, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(288, 238, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(289, 239, 6, 'Pending Decision', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(290, 240, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(291, 241, 6, 'Follow-up', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(292, 242, 6, 'Junk', 'Lead Created', '2026-01-27', '08:24:04', 'ujala@digidir.com'),
(293, 243, 5, 'In Progress', 'Lead Created', '2026-01-27', '15:10:51', 'naina.gupta@digidir.com'),
(294, 243, 5, 'In Progress', 'Asked to share the details then will connect over the meeting', '2026-01-27', '15:12:25', 'naina.gupta@digidir.com'),
(295, 244, 5, 'In Progress', 'Lead Created', '2026-01-27', '15:20:14', 'naina.gupta@digidir.com'),
(296, 245, 5, 'In Progress', 'Lead Created', '2026-01-27', '15:21:36', 'naina.gupta@digidir.com'),
(297, 245, 5, 'In Progress', 'called but she said she is busy and will call back once free', '2026-01-27', '15:23:35', 'naina.gupta@digidir.com'),
(298, 246, 6, 'Follow-up', 'Lead Created', '2026-01-27', '16:20:29', 'ujala@digidir.com'),
(299, 246, 6, 'Follow-up', 'Lead Updated', '2026-01-27', '16:24:12', 'ujala@digidir.com'),
(300, 247, 6, 'In Progress', 'Lead Created', '2026-01-27', '18:11:57', 'ujala@digidir.com'),
(301, 248, 6, 'In Progress', 'Lead Created', '2026-01-27', '18:27:06', 'ujala@digidir.com'),
(302, 246, 6, 'Follow-up', '1st Virtual meeting Done\r\n2nd meeting proposal planned for 28th Jan \r\n', '2026-01-28', '12:46:59', 'ujala@digidir.com'),
(303, 247, 6, 'In Progress', 'Lead Updated', '2026-01-28', '12:48:58', 'ujala@digidir.com'),
(304, 247, 6, 'Follow-up', 'Discussion started for SMO requirement\r\nAsked for virtual meeting, he has shared his Instagram account link', '2026-01-28', '12:50:03', 'ujala@digidir.com'),
(305, 248, 6, 'Follow-up', 'Discussion started\r\nRequirement is bing ads\r\nasked for portfolio shared only profile with him, need to arrange a meet', '2026-01-28', '12:51:27', 'ujala@digidir.com'),
(306, 249, 5, 'In Progress', 'Lead Created', '2026-01-28', '13:03:20', 'naina.gupta@digidir.com'),
(307, 249, 5, 'In Progress', 'Call not picked .. whatsapp msg done\r\n', '2026-01-28', '13:03:52', 'naina.gupta@digidir.com'),
(308, 250, 5, 'Meeting Scheduled', 'Lead Created', '2026-01-28', '15:30:32', 'naina.gupta@digidir.com'),
(309, 250, 5, 'Meeting Scheduled', 'Call done.. meeting booked for 29th jan ', '2026-01-28', '15:31:05', 'naina.gupta@digidir.com');

-- --------------------------------------------------------

--
-- Table structure for table `lead_remarks`
--

CREATE TABLE `lead_remarks` (
  `ID` int(11) NOT NULL,
  `LeadID` int(11) NOT NULL DEFAULT -1,
  `Remark` varchar(256) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lead_remarks`
--

INSERT INTO `lead_remarks` (`ID`, `LeadID`, `Remark`, `CreatedDate`, `CreatedTime`, `CreatedBy`, `IsActive`) VALUES
(1, 1, 'proposal sent. Meeting scheduled for Monday around 2pm. Client will confirm', '2026-01-19', '13:34:13', 'saurabh@digidir.com', 1),
(2, 2, 'Will Inform within 2 days, Will come tomorrow for demo. he is working in ISRO so call before 2 PM', '2026-01-19', '13:34:13', 'saurabh@digidir.com', 1),
(3, 3, 'taking demo will confirm with in two days', '2026-01-19', '13:34:13', 'saurabh@digidir.com', 1),
(4, 4, 'lead received on 24 Dec 2025, proposal sent on 26th Dec 2025, next follow up done on 27th Dec vis Whatsapp but no response, Next Follow up done on 29th Dec via WhatsApp but no response, Follow up done via whatsapp on 10th Jan but no response yet', '2026-01-19', '13:34:13', 'saurabh@digidir.com', 1),
(5, 5, 'RAGISTRATION RECEIVED, REMAINING AMOUNT WILL PAY WITHIN 2 DAYS', '2026-01-19', '13:34:13', 'saurabh@digidir.com', 1),
(6, 6, '', '2026-01-19', '13:34:13', 'saurabh@digidir.com', 1),
(7, 7, 'Client will discuss after 22nd Jan', '2026-01-19', '13:34:13', 'saurabh@digidir.com', 1),
(8, 8, 'meeting done and bank details shared ', '2026-01-21', '13:22:14', 'naina.gupta@digidir.com', 1),
(9, 12, 'meeting done on 6th Jan 2026', '2026-01-21', '18:15:39', 'saurabh@digidir.com', 1),
(10, 12, 'relevant references sent on 7th Jan 2026', '2026-01-21', '18:15:56', 'saurabh@digidir.com', 1),
(11, 12, 'client is exploring budget friendly options. still in discussion. Decision pending. ', '2026-01-21', '18:16:22', 'saurabh@digidir.com', 1),
(12, 1, 'owner abhishek wants to review one more proposal within this week, then he will update us. Overall, they are positive about our proposal. ', '2026-01-21', '18:26:49', 'saurabh@digidir.com', 1),
(13, 18, 'first call was done on 21st Jan. ', '2026-01-22', '00:05:28', 'saurabh@digidir.com', 1),
(14, 18, 'client mentioned about 1 Lakh total budget for meta and google ads. He wants to discuss proposal on 22nd Jan 2026', '2026-01-22', '00:06:06', 'saurabh@digidir.com', 1),
(15, 8, 'Call done .. not responding ', '2026-01-22', '10:22:50', 'naina.gupta@digidir.com', 1),
(16, 9, 'first call done, packages shared as well', '2026-01-22', '10:29:34', 'naina.gupta@digidir.com', 1),
(17, 9, 'Will have a meeting after reviewing the proposal\r\n', '2026-01-22', '10:30:27', 'naina.gupta@digidir.com', 1),
(18, 10, 'Meeting booked for 12pm\r\n', '2026-01-22', '10:43:02', 'naina.gupta@digidir.com', 1),
(19, 11, 'Meeting booked for 3pm', '2026-01-22', '10:43:49', 'naina.gupta@digidir.com', 1),
(20, 15, 'Meeting done and proposal shared \r\n', '2026-01-22', '11:06:02', 'naina.gupta@digidir.com', 1),
(21, 16, 'Had a discussion.. will tell the timings to connect for meeting', '2026-01-22', '11:07:00', 'naina.gupta@digidir.com', 1),
(22, 19, 'Meeting booked for 12:30', '2026-01-22', '11:36:14', 'naina.gupta@digidir.com', 1),
(23, 19, 'Meeting scheduled', '2026-01-22', '11:37:00', 'naina.gupta@digidir.com', 1),
(24, 19, 'Meeting done.. proposal sent\r\n', '2026-01-22', '13:41:11', 'naina.gupta@digidir.com', 1),
(25, 15, 'followup message done', '2026-01-22', '13:42:19', 'naina.gupta@digidir.com', 1),
(26, 10, 'meeting done and proposal sent\r\n', '2026-01-22', '13:42:39', 'naina.gupta@digidir.com', 1),
(27, 8, 'Many followup calls and message done', '2026-01-22', '13:43:14', 'naina.gupta@digidir.com', 1),
(28, 21, 'call not picked\r\n', '2026-01-23', '11:29:05', 'naina.gupta@digidir.com', 1),
(29, 20, 'Will connect next week\r\n', '2026-01-23', '13:33:53', 'naina.gupta@digidir.com', 1),
(30, 23, 'Was busy and asked to call later', '2026-01-23', '13:38:18', 'naina.gupta@digidir.com', 1),
(31, 25, 'need to send proposal on Whatsapp for SMO, SEO, Google Ads, Meta Ads. client will decide if this needs to be customized or not. ', '2026-01-24', '12:24:45', 'saurabh@digidir.com', 1),
(32, 8, 'I also tried connecting with her via Whatsapp, there was no response on 23rd jan ', '2026-01-24', '14:07:59', 'saurabh@digidir.com', 1),
(33, 8, 'tried connecting again via WhatsApp. No response yet', '2026-01-24', '14:08:16', 'saurabh@digidir.com', 1),
(34, 25, 'proposal sent on whatsapp ', '2026-01-24', '14:21:51', 'saurabh@digidir.com', 1),
(35, 18, 'follow up done via whatsapp but no response yet', '2026-01-24', '14:22:45', 'saurabh@digidir.com', 1),
(36, 17, 'I had a call with Kannav. He is allocating funds for the services. He will get back as soon as he is ready', '2026-01-24', '14:25:12', 'saurabh@digidir.com', 1),
(37, 14, 'multiple followups done via whatsapp and call but no response', '2026-01-24', '14:29:47', 'saurabh@digidir.com', 1),
(38, 14, 'After linkedin chat with Dr Charu (Owner), I got to know about commercials issues. ', '2026-01-24', '14:30:09', 'saurabh@digidir.com', 1),
(39, 14, 'I offered discount to Sonam now on whatsapp msg and requested to get on call', '2026-01-24', '14:31:58', 'saurabh@digidir.com', 1),
(40, 26, 'need to send proposal as per the details provided by client', '2026-01-24', '18:27:29', 'saurabh@digidir.com', 1),
(41, 27, 'virtual meet is planned for 25th Jan 1pm', '2026-01-24', '18:28:03', 'saurabh@digidir.com', 1),
(42, 28, 'switched off\r\n', '2026-01-27', '12:16:03', 'naina.gupta@digidir.com', 1),
(43, 15, 'Followup taken .. will discuss with the team and will tell by thursday', '2026-01-27', '12:30:51', 'naina.gupta@digidir.com', 1),
(44, 16, 'Called but not picked\r\n', '2026-01-27', '12:32:00', 'naina.gupta@digidir.com', 1),
(45, 19, 'followup taken on friday \r\nhave budget issues \r\n\r\ncalled today .. not picked\r\n', '2026-01-27', '12:34:59', 'naina.gupta@digidir.com', 1),
(46, 20, 'called was busy.. asked to call on thursday .. details and everything shared', '2026-01-27', '12:40:58', 'naina.gupta@digidir.com', 1),
(47, 21, 'call not picked .. whatsapp msg done', '2026-01-27', '12:44:24', 'naina.gupta@digidir.com', 1),
(48, 22, 'called but disconnected ', '2026-01-27', '12:48:30', 'naina.gupta@digidir.com', 1),
(49, 23, 'disconnected the call.. not interested', '2026-01-27', '12:52:03', 'naina.gupta@digidir.com', 1),
(50, 10, 'call done but not picked.. whatsapp followup done', '2026-01-27', '12:56:50', 'naina.gupta@digidir.com', 1),
(51, 30, 'had a discussion.. wants smo.. will connect tomorrow for the meeting', '2026-01-27', '13:09:02', 'naina.gupta@digidir.com', 1),
(52, 31, '18 July: Discussion Satrted/meeting done\n21 July: she said she recevied the mail and asked me to not follow up she will get back\n2 Aug: She said will reach out by herself if required\n16 Dec: She is happy with currect people who are working for her if neede', '2026-01-27', '08:21:33', 'ujala@digidir.com', 1),
(53, 32, 'He msg me proposal is under coonsideration\n16 Dec: Re Engagement msg/No response', '2026-01-27', '08:21:33', 'ujala@digidir.com', 1),
(54, 33, 'After proposal he asked for 2-3 days to confirm the deal probably till 27th july\n16 Dec: Re Engagement msg/No response', '2026-01-27', '08:21:33', 'ujala@digidir.com', 1),
(55, 34, 'Last replied he did that he has checked but afterwords he did not replied\n23rd July: He is exploring more option need time\n16 Dec: Re Engagement msg/No response', '2026-01-27', '08:21:33', 'ujala@digidir.com', 1),
(56, 35, 'She need to share the meta acc access but on 24th she is not responding the msg and call\n16 Dec: Re Engagement msg/No response', '2026-01-27', '08:21:33', 'ujala@digidir.com', 1),
(57, 36, 'He is looking for commercial website only for b2b, available for the meeting on saturday otherwise in next week, Meeting done 25th july, said quotation of 40k , suggested e comm website\nCall him on 18th aug to finalize he is looking other proposals also\n16', '2026-01-27', '08:21:33', 'ujala@digidir.com', 1),
(58, 37, 'Follow up going on', '2026-01-27', '08:21:33', 'ujala@digidir.com', 1),
(59, 38, 'Revised proposal shared\n16 Dec: Re Engagement msg/No response', '2026-01-27', '08:21:33', 'ujala@digidir.com', 1),
(60, 39, 'Want to know exact ROI on ad spend and expecting huge profit from less budget', '2026-01-27', '08:21:33', 'ujala@digidir.com', 1),
(61, 40, 'Shared proposal with him\n16 Dec: Re Engagement msg/No response', '2026-01-27', '08:21:33', 'ujala@digidir.com', 1),
(62, 41, 'Quiet convienced, taking follow up, 4th july- she has a budget issue\n16 Dec: Re Engagement msg/No response', '2026-01-27', '08:21:33', 'ujala@digidir.com', 1),
(63, 42, 'Shopify website from scratch', '2026-01-27', '08:21:33', 'ujala@digidir.com', 1),
(64, 44, 'Budget is very low', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(65, 45, 'Proposal sent, physical meeting done by shantanu sir\n18 Aug: he will inform as his boss will come today\n16 Dec: Re Engagement msg/No response', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(66, 46, 'SMO, virtual meetig done need to prepare media plan, physical visit on 6 aug', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(67, 47, 'Client closed for SMO', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(68, 48, 'Connect only in sep last week she has exhibitions where her lotys of investment gone\n16 Dec: Re Engagement msg/No response', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(69, 49, 'Budget is very low, only 15-20k per month for google ads', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(70, 50, 'Budget issue', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(71, 51, 'He has stopped the project atleast for this month, may contact in next month 15th sep\n16 Dec: Re Engagement msg/No response', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(72, 52, 'Want Case study for existing clinet', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(73, 53, 'Want complete projection and want to know ROAS there present ROAS is 6%', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(74, 54, '7th proposal sent\n16 Dec: Re Engagement msg/No response', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(75, 55, '7th proposal sent\n16 Dec: Re Engagement msg/No response', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(76, 56, 'In discussion \n16 Dec: Re Engagement msg/No response', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(77, 57, 'Want proposal\n16 Dec: Re Engagement msg/No response', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(78, 58, '15k is the budget for meta ads', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(79, 59, '16 Dec: Meeting setup\n18 Dec: Meeting done/proposal sent\n19 Dec: Onboarded', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(80, 60, 'Need to share proposal\n16 Dec: Re Engagement msg/No response', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(81, 61, 'Discussion going on, we have to present the media plan for her low budget project', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(82, 62, 'Shared franshise media plan didnot get the revert back from her\n16 Dec: She is busy in something will connect later', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(83, 63, '16 Dec: Re Engagement msg/No response', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(84, 64, 'Agreement shared/Not Responding\n16 Dec: Re Engagement msg/No response', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(85, 65, 'No response\n16 Dec: Re Engagement msg/No response', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(86, 66, 'No response', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(87, 67, '17 Aug: Start Conversastion\n21 Aug: meeting scheduled\n4 Sep: taking followup\n7 Sep: on trip\n16 Dec: Re Engagement msg/No response', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(88, 68, '27: no response\n16 Dec: Re Engagement msg/No response', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(89, 69, '23 Aug: Discussion Started\n27 Aug: Shared proposal\n3 Sep: Informed project on hold\n17 Dec: He informed the project is on hold', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(90, 70, 'She is on trip on and off reply\n17 Dec: Re Engagement msg/No response', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(91, 71, 'Main Focus: uk, Eu, Middle East\n17 Dec: Re Engagement msg/No response', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(92, 72, '21 Aug; Start Conversastion\n1 sept; meeting scheduled\n8 Sept; taking followup\n12 Sept; Budget issues\n17 Dec: Re Engagement msg/No response', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(93, 73, '20 Aug; Start Conversastion\n3 Sept; meeting scheduled\n8 Sept; taking followup\n10 Sept; told that directors come for the meeting\n27Oct: Need to take follow up, after festive physical meeting\n30th oct: proposal discussion meeting done, follow uo to take on 3', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(94, 74, '17 Dec: Re Engagement msg/No response', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(95, 75, '21 Aug: Start Conversastion\n8 Sep: meeting scheduled\n14 Sep: taking followup\n1oct: followup call\n17 Dec: Re Engagement msg/No response', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(96, 76, '25 Aug: Start Conversastion\n25 Aug: meeting scheduled\n25 Augt: proposal send\n28 Aug: POC informed the Boss has choosen some other agency\n2 Jan: Re Engagement msg/No response', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(97, 77, '22 Aug; Start Conversastion\n24 Aug; meeting scheduled\n8 Sept; taking followup\n10 Sept; Budget issues\n2 Jan: Re Engagement msg/No response', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(98, 78, '22 Aug; Start Conversastion\n24 Aug; meeting scheduled\n2 Jan: Re Engagement msg/No response', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(99, 79, '', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(100, 80, '', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(101, 81, 'Reference lead by afterbrick', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(102, 82, 'Singapore, business on instagram, mostly speak during night\n2 Jan: Re Engagement msg/No response', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(103, 83, '17 Aug; Start Conversastion\n24 Aug; meeting scheduled, physical\n8 Sept; converted', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(104, 84, '2 Jan: Re Engagement msg/No response\n27 not  active', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(105, 85, 'Not responding after the final discussion\n3 Jan: Re Engagement msg/No response', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(106, 86, 'He want more and more proofs I have shared enough', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(107, 87, 'Not responding\n3 Jan: Re Engagement msg/No response', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(108, 88, 'He is busy\n3 Jan: Re Engagement msg', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(109, 89, 'No response\n3 Jan: Re Engagement msg', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(110, 90, 'Converted by another agency on 24 sep\n22 Dec: No response/dropped msg\n3 Jan: Re Engagement msg\n5 Jan: He mentioned requirement for Myntra handling', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(111, 91, 'Not Responding clearly', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(112, 92, '', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(113, 93, 'He has on boared some agency from his local , I have expaliend our values and impotrance of experienced agency, he said we surely connect if need, we probably connect him in november for the follow up\n3 Jan: Re Engagement msg', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(114, 94, 'He will confirm in sometime\n3 Jan: Re Engagement msg', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(115, 95, 'Not Responding', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(116, 96, 'Budget concern', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(117, 97, 'He want to negotiate a lot', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(118, 98, 'Not Responding\nThe POC is actually a PM person just want to understand the tricks', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(119, 99, 'Proposal sent, not repsonding\nRequiremnet maxium registeration for singing competition', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(120, 100, 'Proposal sent, he will update\n6 oct: not responding\n7 oct: nr\n13 oct: not responding\n3 Jan: Re Engagement msg', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(121, 101, 'Not Responding\n6 oct: nr\n13 oct: not responding\n3 Jan: Re Engagement msg/ revert with close the loop', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(122, 102, 'Not Responding\n6 oct: nr\n3 Jan: other agecgy is doing work but if required something will update us', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(123, 103, 'He is busy\n6 oct: no. busy\n3 Jan: Re Engagement msg', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(124, 104, '7 Oct: He said he has not dicussed with internal team yet once he wll do then inform\n14 oct: he will update us by himself soon\n3 Nov: he said he will get in touch with us shortly in this month only\n25 Nov: he is doing changes in the website and will connec', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(125, 105, 'Not responding, in follow up\n13 oct: dropped msg\n12 Jan: he is somewhere call later', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(126, 106, 'will visit office in 2nd week of oct\n6 Nov: Not responding\n12 Jan: Will viist office on 16th Jan, need to confirm time on 15th Jan', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(127, 107, 'Proposal sent they are reviwing', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(128, 108, '30 Sep: Disucssion started\n6 Oct: Meeting to scheduled he did not attended\n7 Oct: Not attended\n13 Oct: Ghosted\n14 oct: No Response\n12 Jan: BTL marketing requirement', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(129, 109, 'He disconnect the call\n6 oct: not responding\n24 Nov: NR\n12 Jan: No response/ Re-  Enagegment msg', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(130, 110, 'Budget issue I have shared details\n6 oct: Nr', '2026-01-27', '08:21:51', 'ujala@digidir.com', 1),
(131, 112, '29th Sept - Start conversastion regarding requirments\n1st oct - meeting scheduled\n2 Nov: Virtual meeting done\n4 Nov: Proposal\n17 Nov: He is busy for 2 day will get back to us by 20 nov \n8 Dec: He msg \n17 Dec: Asked for meeting\n12 Jan: No response/dropped m', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(132, 113, '23rd Sept- Start discussion\n24th Sept - proposal send\n26th Sept - revert; Budget issues\n29th Sept - Negotion is on\n12 Jan: has not plan to start the brand, may be contact in next month', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(133, 114, '30th Sept - Start coversastion\n1st oct - make brief discussion', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(134, 115, '29th Sept - Conversastion Started\n3rd Oct - Virtual meeting\n4th Oct - Followup\n8th Oct- 2nd meeting Scheduled\n7 Nov: His directors are not in country, will take follow up on 15 Nov\n24 Nov: He said still having an internal discussion \n8 Dec: A follow up msg', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(135, 116, 'Not Respomding', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(136, 117, 'In disuccion\n12 Jan: Not required anything rn', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(137, 118, '1st Oct - Conversastion Started\n3rd Oct - Virtual meeting\n4th Oct - Followup\n12 Jan: Re- enagegment msg', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(138, 119, '24th Sept - Meeting\n25th Sept - proposal send\n29th Sept - followup\n3rd Oct - followup', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(139, 120, '12 Jan: Re- enagegment msg', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(140, 121, '17th Sept - Start Conversstion\n25th Sept - Agreement work\n26th Sept - on board', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(141, 122, 'Physical meet done on 10 June\nHis response on 12 June Seen but we will discuss and let you know\nTook follow up 16 june- Yes Nikita give us sometime and will get back too you on this', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(142, 123, '4 July Proposal sent\n8 July: followup call\n11 July: askd for a week', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(143, 124, '3 July: Brief Discussion \n6 July: Virtual meeting\n9 July: Virtual meeting (2nd) \n11 July: Shedule date for physical meeting\n14 July: Physical meet \n15 July: Proposal Send\n20 July:  Brief discussion about agreement\n16 Aug: conversastion again started\n28th S', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(144, 125, '2 July: Detailed discussion\n4 July: Virtual meeting\n8 July: Proposal Sent \n11 July: Budget Issues\n13 Jan: He required Gohighlevel Performance marketing. We cannot do', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(145, 126, '7 july : Detailed Discission\n8 July: Schedule meeting\n9 July: virtual meeting  | Select another agency\n13 Jan: Re engegment msg', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(146, 127, '6 July : Basic discussion\n13 Jan: Re enegegment msg', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(147, 128, '7 July: Start discussion\n8 July: Asked for the phusical meet\n15 July: Followup call \n13 Jan: Picked by manager, said if she will be interested will call back', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(148, 129, '10 july : start discussion\n11 July: start Negotiation\n12 July: Proposal send \n15 July: Followup call\n16 July: Not Interested\n13 Jan: Call him on 17th jan', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(149, 130, '10 july : start discussion\n11 July: No response \n13 Jan: Call him on 16th Jan, post 10 AM', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(150, 131, '09 july : start discussion\n12 July: Brief discussion\n14 July:  followup calls\n15 July: Meeting sheduled\n16 July: Work on stratigies   \n18 july: Send proposal\n24 July: 2nd stratigic meeting\n25 july: 3rd stratigic meeting\n22 Aug: 4rth startigic meeting\n28 No', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(151, 132, '9 July : strart discussion\n10 July: Schedule meeting\n11 July: Physical meet \n14 July: Followup call\n14 Jan: Hired agency is performing well, if need then contact', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(152, 133, '10 july : start discussion\n11 July: Send price sheet\n12 July:  No respones', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(153, 134, '11 july : start discussion\n12 July: Virtual meeting\n14 July:  trying to call', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(154, 135, '14 july : start discussion\n20 July: Virtual meeting \n21 July:  Send Proposal\n26 July; Meeting scheduled\n29 july; send revamp proposal', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(155, 136, '15 July : strart discussion\n16 July: Send proposal\n17 July:  Followup call\n28 Nov: Less budget', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(156, 137, '16 July : strart discussion\n21 July: Working on proposal\n22 July:  send proposal\n24 July: brief discussion on proposal\n25 July:  next upcoming call\n11 Aug: Make physical meeting 2 times', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(157, 138, '16 July : strart discussion\n17 July: Followup discussion\n19 July:  Physical meeting\n20 July: Virtual meeting\n24 July:  Send proposal\n28 Nov: Not required if required will connect', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(158, 139, '16 July : sheduled call for 19th July\n21 July: Brief Discussion \n24 July: discussion on call\n28 July: Virtual meeting \n1 Aug: Virtual meeting sheduled\n1 Dec: In Australia for a month and will be back in the last week of December so we may connect later\n13 ', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(159, 140, '19 July; short discussion \n21 july; shedule meeting\n28 Nov: Had call with the person they said as of now  ot required but sure;y consider in future\n11 Dec: follow up msg sent\n13 Jan: Re- enagegment msg', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(160, 141, '23 july; start discussion\n24 july; brief discussion, schedule meting\n25july; sheduled meeting at 2 PM\n29 july; agreement send', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(161, 142, '23 july; start discussion\n24 july; virtual meeting, proposal \n28 july; Budget issues\n28 Nov: Budegt issue. her brother is handling', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(162, 143, '23rd july; physical meeting\n24th july; brief discussion\n27 Oct: Not active\n7 Nov: DIscussion started, Google ads rn another agecy is handling', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(163, 144, '21july; start discussion\n22 july; virtual meeting\n23 july; send proposal\n24 july; followup calls\n28 july; Budget Issues\n28 Nov: Follow up msg sent', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(164, 145, '14 Oct: Meteing Done/proposal sent\n15 Oct: Not responding\n23 oct: Not responding\n11 Dec: Not answered\n18 Dec: Msged him on botim', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(165, 146, '17 Oct: Discussion Started/Meeting done\n23 oct: Not responding/dropped msg\n24 oct: she is out of town connect on monday\n27 Nov: NR\n11 Dec: they have hired internal team, but asked me to connect in late January', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(166, 147, '23 Oct: Disucssion Started/Meeting done\n24 Oct: Proposal Sent\n3 nov: he will check proposal and let us know by evening\n5 Nov: NR\n25 Nov: NR', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(167, 148, '24 Oct: Virtual Meeting\n25 Oct: proposal shared\n31 Oct: Offline meeting\n3 Nov: Not Responding', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(168, 149, '19 Sep: Discussion Started\n24 Oct: Brief Discussion\n25 Oct: Virtual Meeting\n27 Oct: Said he will update\n3 Nov: NR\n5 Nov: NR\n6 Nov: Said will call you post 15 Nov\n25 Nov: NR/dropped msg\n8 Dec: as of now not planning to work with agency.', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(169, 150, '23 Oct: Discussion Started\n24 Oct: Virtual Meeting\n25 Oct: NR\n27 Oct: NR\n29 Oct: NR\n5 Nov: NR/dropped msg\n25 Nov: NR\n8 Dec: Dropped follow up msg', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(170, 151, '24 Oct: Disucssion Started/Virtual meeting/proposal sent\n25 Oct: proposal disucssion\n3 Nov: Follow up discussion, meeting planned for 8 Nov in 2 half\n14 Nov: Team Meeting/formed Offical group\nHad contnuous follow ups and asnwered his queries \n2 Dec: Not an', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(171, 152, '25 Oct: Virtual Meeting/proposal shared\n28 Oct:Follow up not replied\n3 Nov: Not responding\n25 Nov: This DM work is not in his priority and always say that he will let us know if needed his daughter is busy to disucuss the requirements\n8 Dec: Dropped follow', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(172, 153, '30 Oct: Virtual Meeting\n3 Nov: Offline meeting, Wanted to do post payment', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(173, 154, '27 Oct: Virtual meeting/proposal shared\n30 Oct: Proposal discussion meeting, he informed to start the service from dec \nconnect him starting of dec month\n3 Dec: Not required/ going further with inhouse team', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(174, 155, '30 Oct: Virtual Meeting\n31 Oct: proposal sent/ proposal discussion\n3 Nov: Strategic email sent\n4 Oct: Msg from client he will update in 1-2 day\n21 Nov: After continuous follow up they replied that they have finalized another agency\n17 Jan: Re enagegment ms', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(175, 156, '', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(176, 157, '6 Nov: Discussion Started\n15 Nov: Meeting\n21 Nov: Proposal discussion meeting\n28 Nov: She informed there budget is tight\n3 Dec: Dropped follow up msg\n8 Dec: I have asked her to share Saurabh sir no. with prem so that they can have talk about collab\n15 Dec:', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(177, 158, '6 Nov:Discussion Started\n7 Nov: Meeting done\n19 Nov: Meeting\n21 Nov: Meeting\n24 Nov: did not shared any id proofs\nIn touch with Saurabh sir too\n29 Nov: We have not got back to him since', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(178, 159, '28 Nov: Disucssion Started/ meeting done/proposal shared\n2 Dec: Doesnot seems geniune/shared proposal\n8 Dec: Not Required, hired someone inhouse', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(179, 160, '21 Nov: Meeting done\n24 Nov: He is busy call him on 28th Nov\n6 Dec: Asked for phase wise activities plan', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(180, 161, '24 Nov: Meeting arranged for 25th Nov at 11 AM\n3 Dec: They have budget issue\n6 Dec: Follow up email sent', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(181, 162, '18 Nov: Not Responded\n19 Nov: Call him after 2 PM\n24 Nov: call did not connect/dropped msg\n25 Nov:Call did not connect\n6 Dec: He will Coordinate with his team and then inform if the requirement is still there or not\n9 Jan: No response/dropped msg', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(182, 163, '13 Nov: Disucssion Started\n14 Nov: Meeting Done/proposal sent\n24 nov: not responding\n6 Dec: Follow up call not answered/dropped msg', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(183, 164, 'Meeting Done\n3 Dec: Not responding.dropped msg\n6 Dec: Follow call not answered/dropped msg\n29 Dec: Client onboarded', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(184, 165, 'Meeting scheduled for 13 nov at 11 AM\n13 Nov: Vitual Meeting done\n17 Nov: Seems not so interested after sharing proposal and audit report said he will let us know\n6 Dec: He fixed the issues internally, and doesnot required service now', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(185, 166, 'Meeting already done\n3 Dec: Not responding\n6 Dec: Call Not Responded/Follow up  msg sent\n9 Jan: Arpit has left the job in Dec/sharing hardik no.', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(186, 167, '2 Dec: Jackson Solar, meeting today\n4 Dec: Seo audit share\n5 Dec: Abhijeet called and gave feedback on SEO audit and share few requirements\n6 Dec: Shared Updated Audit and schedule the meet for monday\n8 Dec: Dropped reminder for meeting time\n10 Dec:Call wi', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(187, 168, '4 Dec: Meeting schulded for 5 dec at 3 Pm\n5 Dec: Meeting Done/shared proposal\n6 Dec: Sent Follow msg for next meeting\n10 Dec: He will connect on 15 Dec\n15 Dec: NR/dropped msg\n17 Dec: re engagement msg\n9 Jan: Has no plan to onboard agency hired freelancer', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(188, 169, '26 Nov: meeting palnned for 27 nov in b/w 11-1 PM\n27 Nov: he will confirm\n6 Dec: Follow upp call not answered/dropped msg\n17 Dec: Hired someone in house for PM and SMO, he did not move further beacuse of trust and the person he hired in known', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(189, 170, '3 Dec: Meeting/proposal sent\n4 Dec: NR\n6 Dec: He said hold on myntra lsiting, wanted to know about the price for Ajio and Nykaa Onboading and process\n12 Dec: Shared Ajio details\n15 Dec: He said will update', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(190, 171, '25 Nov: Discussion Started\n26 Nov: Meeting done\n27 Nov: Follow up\n5 Dec: Again shared proposal\n10 Dec: Follow up msg sent\n7 Jan: Re enagement msg', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(191, 172, '19 Sep: Discussion started/ offline meeting\n20 Sep: said he will update\n23 Sep: No response\n26 Sep: No response \n6 Oct: No response \n13 Oct: No response\n3 Jan: work is done, but for other requirements he may connect in future', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(192, 173, '6 Dec: Discussion Started\n8 Dec: Meeting Done\n9 Dec: Follow msg sent\n17 Dec: Re engagement msg/no response\n1 Jan: New year wish\n14 Jan: Replied on email/again no response\n16 Jan: Meeting to schedule for 17th jan\n17 Jan: Meeting arranged', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(193, 174, '10 Dec: Discussion Started\n11 Dec: Meet done/shared proposal\n15 Dec: he will call by himself tomorrow\n20 Dec: He is busy will connect today itself if possible\n29 Dec: called\n9 Jan: Re engagement msg', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(194, 175, '9 Dec: Discussion Started\n12 Dec: Meeting done/Shared Proposal\n15 Dec: Follow up discussion on proposal\n16 Dec: Call discussion\n17 Dec: Call discussion\n20 Dec: Call discussion\n29 Dec: Meeting\n30 Dec: Call Discussion\n8 Jan: Call discussion\n9 Jan: dropped ms', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(195, 176, '19 Dec: dropped follow up msg\n20 Dec: He is busy will let us know by eve\n7 Jan: he want include shoot cost also in the same amount of Social Media management', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(196, 177, '20 Dec: Not Confirming about the SMO status, asking for help or sugegstion for Website home\n9 Jan: No response/re enagement msg', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(197, 178, '17 Dec: Discussion started\n19 Dec: No. not available/dropped msg\n20 Dec: He will do proposal disucssion meeting on monday\n29 Dec: need to arrange the meeting again\n2 Jan: He is waiting for the response from top management', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(198, 179, '18 Dec: Discussion Started\n19 Dec: Meeting done\n20 Dec: Physical Meeting arranged for Monday\n29 Dec: They hired another agency', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(199, 180, '27 Oct\'; Discussion started\n4 Nov: Meeting needs to conduct on 6 Nov, concern is they want us as b2b support first they want us to craete 3 posts they will pay for that\n6 Nov: Meeting scheduled for today\nFinalised another agecny', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(200, 181, '3 Nov: Discussion started\n4 Nov: He is stuck with previous agency, will confirm us on 10 nov for meeting and to move forword', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(201, 182, '25th Oct: Discussion Started\n28th Oct: again discussed\n31 oct: Meeting\n6 Nov: Said Finalized someone', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(202, 183, '24 Oct: Start Discussion\n27 Oct: Not Responding\n28 Oct: Not Responding\n15 Dec: No. busy/droppes msg', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(203, 184, '20 Sep: Not Responding\n22 Sep: Not Responding\n30 Sep: Call connected', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(204, 185, '2 Sep: Discussion Started\n3 Sep: Call discussion with Shantanu\n8 Sep: Not Responding', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(205, 186, '4 Aug: Not Responing/Drpped Whatsapp Msg\n5 Aug: Shantanu connected directly', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(206, 187, '29 Oct: Discussion Started/meeting planned for 30th did not happend, need to arrange virtual meet\nMeeting Done\n17 Nov: Not responding\n14 Jan: Budget issue', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(207, 188, '29 Oct: Discussion started/only looking forword to proposal do not have time for meeting', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(208, 189, '24 Oct: Had small talk, supposed to connect again did not responded\n31 Oct: Call Not answed Dropped  msg', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(209, 190, '', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(210, 191, '28 Oct: Infomed to connect tomorrow\n29 Oct; Did not answered call\n30 Oct: Not answered\n3 Nov: Told to connect 4 Nov\n4 Nov: Not answered', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(211, 192, '6 Nov: Discussion Started\n15 Nov: Meeting\n21 Nov: Proposal discussion meeting\n28 Nov: She informed there budget is tight\n3 Dec: Dropped follow up msg\n8 Dec: I have asked her to share Saurabh sir no. with prem so that they can have talk about collab\n15 Dec:', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(212, 193, '29 Oct: Discussion started\n25 Nov: She will confirm the CEO is not available\n8 Dec: Dropped follow up msg', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(213, 194, '7 Nov: Virtual meeting done/proposal shared\n24 nov: not responding', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(214, 195, '5 Nov: Discussion started', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(215, 196, '6 Nov: Sent email', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(216, 197, 'Fintech Loan company inquired for Paid ads', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(217, 198, 'Meeting 11 Nov at 3 PM, they are marketing agency', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(218, 199, '18 Nov: Not responded\n19 Nov: She is busy will call back', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(219, 200, '24 Nov: Meeting arranged for 25th Nov at 11 AM\n3 Dec: Budget Issue\n6 Dec: Follow Up email sent', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(220, 201, '24 Nov: Call disconnected after intro', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(221, 202, '', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(222, 203, '26 Nov: Travel agency, I asked her to share details\n6 Dec: Not responding/dropped msg with profile', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(223, 204, '27 Nov: NR/Dropped msg\n3 Dec: discussion started , Amazon account issue\n6 Dec: Follow up', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(224, 205, '27 Nov: Disuccion started/they are manf. of clothing suggested services like to visit the office rn he willl inform\n6 Dec: Not Responding/dropped msg\n7 Jan: No response', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(225, 206, '27 Nov: Discussion Started/ call her again on 28 at 10:30 AM\n6 Dec: She is out side, someone else picked  will call later\n7 Jan: She is not so sure, said will update if required', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(226, 207, '2 Dec: He is busy will connect by himself\n3 Dec: Asked for US market refernces\n6 Dec: Shared requiremet with Sir asking for relevent work done in USA\n7 Jan: We do not have refernces to share with them', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(227, 208, '28 Nov; Discussion Started\n29 Nov: Meeting done, Very unrealistic expection from the campiagn\n4 Dec: He has postponed the plan, if needed in future will conenct', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(228, 209, '3 Dec: Meeting/proposal sent\n4 Dec: NR\n6 Dec: He said hold on myntra lsiting, wanted to know about the price for Ajio and Nykaa Onboading and process', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(229, 210, '4 Dec: Postponed the plan/medical issue\n7 Jan: No response/Msged me that will call back', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(230, 211, '5 Dec: Budget issue', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(231, 212, '17 Nov: Discussion Started\n18 Nov: Meeting done/ proposal sent\n20 Nov: Follow up\n25 Nov: Shared agreement requiremets and formed group\n26 Nov: informed will proccess tomorrow\n2 Dec: Not well will take further step after getting well\n8 Dec: Dropped follow u', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(232, 213, '9 Dec: Discssuion Started', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(233, 214, '8 Dec: Discussion started\n9 Dec: Shared portfolio with him on email\n12 Dec: No Response\n7 Jan: Dropped msg', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(234, 215, '8 Dec: Discussion Started\n9 Dec: They have finalised agency', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(235, 216, '10 Dec: Discussion Started\n11 Dec: Not responding/ have not joined meet\n12 Dec: meeting arranged/proposal shared\n31 Dec: Meeting\n15 Dec: Detailed Discussion\n7 Jan: No response/dropped msg', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(236, 217, '11 Dec: Discussion Started/proposal sent\n12 Dec: She is asked for refernce work we did in LinkedIn\n15 Dec: She will update \n7 Jan; She said she will get the update from management and update me', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(237, 218, '15 Dec: Discussion Started/proposal sent\n16 Dec: Not responding/dropped msg\n7 Jan: Call does not connect', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(238, 219, '15 Dec: Discussion Started\nproposal sent for Flipkart and Amazon\n16 Dec: NR\n7 Jan: No response.dropped msg', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(239, 220, '13 Dec: Discussion Started/meeting scheduled for 16 dec at 6:30 PM\n19 Dec: Reminder\n30 Dec: No response\n7 Jan: Feels Price are higher asking for reveised proposal did not informed his budegt', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(240, 221, '8 Dec: Discussion Started, Invoice shared\n15 Dec: Not required', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(241, 222, '15 Dec: Discussion Started over whatsapp\n7 Jan: Converstaion on whatsapp/already fulfilled', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(242, 223, '22 Dec: Shared details \n23 Dec: Physcial meeting done\n5 Jan: shared MLA proposal\n13 Jan: said will let us know\n17 Jan: No response/dropped msg', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(243, 224, '24 Nov: Discussion Started\n25 Nov: Meeting Done/proposal sent\n28 Nov: Again shared\n2 Dec: Follow up \n15 Dec: No response/dropped msg\n7 Jan: I made him remeber about the discussion and asked him to check proposal and get back to me\n8 Jan: Want to work in pr', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(244, 225, '16 Dec: Disucssion Started\n7 Jan: No response/dropped msg\n8 Jan: Requirement closed', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(245, 226, '17 Dec: Discussion started\n19 Dec: No. not available/dropped msg\n20 Dec: He will do proposal disucssion meeting on monday\n29 Dec: need to arrange the meeting again\n2 Jan: He is waiting for the response from top management', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(246, 227, '23 Dec: Discussion Started/meeting to arrange in jan 5th\n7 Jan: No response/dropped msg', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(247, 228, '29 Dec: Want SMO marketing to became an influencer and has not budget want trail service', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(248, 229, '29 Dec: Discussion Started\n30 Dec: Dropped msg\n7 Jan: Dropped msg', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(249, 230, '24 Dec: Discussion started\n29 Dec:Shared proposal\n3 Jan: Meeting to arrange in coming week\n7 Jan: No response/dropped msg\n8 Jan: shared final price with him\n9 Jan: delayed from his client', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(250, 231, '5 Jan: Discussion started\n7 Dec:  he will update on 8th Jan for meeting\n8 Jan: asked him to share timings', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(251, 232, '7 Dec: Discussion started/meeteing to plan for 8th Jan\n8 Jan: No response/dropped msg\n12 Jan: No. switched off', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(252, 233, '8 Jan: Discussion Started/proposal shared\n12 Jan: No response/dropped msg', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(253, 234, '8 Jan: Discussion started\n9 Jan: plan it after 18th', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(254, 235, '12 Jan: Discussion started\n16 Jan: No respoonse, dropped details', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(255, 236, '12 Jan: Discussion started', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(256, 237, '13 Jan: Not answered, dropped msg\n14 Jan: Not responding, dropped msg\n16 Jan: Busy, will call back', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(257, 238, '13 Jan: Discussion started\n14 Jan: meeting Done \n16 Jan: Will get back to us on 17 Jan by 12 PM', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(258, 239, '12 Jan: Discussion started\n13 Jan: Meeting done/rpoposal discussed\n14 Jan: He will discuss with ma\'am and then update us\n16 Jan: No response/dropped msg', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(259, 240, '15 Jan: Intro on whatsapp\n16 Jan: Protfoilo shared', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(260, 241, '17 Jan: Discussion started/meeting to schedule from monday', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(261, 242, '16 Jan: No response\n17 Jan: No response/dropped msg', '2026-01-27', '08:24:04', 'ujala@digidir.com', 1),
(262, 243, 'Asked to share the details then will connect over the meeting', '2026-01-27', '15:12:25', 'naina.gupta@digidir.com', 1),
(263, 245, 'called but she said she is busy and will call back once free', '2026-01-27', '15:23:35', 'naina.gupta@digidir.com', 1),
(264, 246, '1st Virtual meeting Done\r\n2nd meeting proposal planned for 28th Jan \r\n', '2026-01-28', '12:46:59', 'ujala@digidir.com', 1),
(265, 247, 'Discussion started for SMO requirement\r\nAsked for virtual meeting, he has shared his Instagram account link', '2026-01-28', '12:50:03', 'ujala@digidir.com', 1),
(266, 248, 'Discussion started\r\nRequirement is bing ads\r\nasked for portfolio shared only profile with him, need to arrange a meet', '2026-01-28', '12:51:27', 'ujala@digidir.com', 1),
(267, 249, 'Call not picked .. whatsapp msg done\r\n', '2026-01-28', '13:03:52', 'naina.gupta@digidir.com', 1),
(268, 250, 'Call done.. meeting booked for 29th jan ', '2026-01-28', '15:31:05', 'naina.gupta@digidir.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lead_source`
--

CREATE TABLE `lead_source` (
  `ID` int(11) NOT NULL,
  `SourceName` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lead_source`
--

INSERT INTO `lead_source` (`ID`, `SourceName`, `IsActive`) VALUES
(1, 'Walk In', 1),
(2, 'Direct Call', 1),
(3, 'Website', 1),
(4, 'Instagram', 1),
(5, 'Youtube', 1),
(6, 'facebook', 1),
(7, 'Google Ads', 1),
(8, 'Reference', 1),
(9, 'Web', 1),
(10, 'Direct WhatsApp', 1),
(11, 'Existing Client/Old Client', 1),
(12, 'LinkedIn', 1),
(13, 'Meta Ads', 1),
(14, 'SEO', 1),
(15, 'Offline Events/ Exhibition', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lead_status`
--

CREATE TABLE `lead_status` (
  `ID` int(11) NOT NULL,
  `Status` varchar(50) NOT NULL DEFAULT '',
  `DefaultStatus` int(11) NOT NULL DEFAULT 0,
  `NotInterestedStatus` int(11) NOT NULL DEFAULT 0,
  `FinalStatus` int(11) NOT NULL DEFAULT 0,
  `LeadColor` varchar(50) NOT NULL DEFAULT '#d49e12',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lead_status`
--

INSERT INTO `lead_status` (`ID`, `Status`, `DefaultStatus`, `NotInterestedStatus`, `FinalStatus`, `LeadColor`, `CreatedDate`, `CreatedTime`, `CreatedBy`, `IsActive`) VALUES
(1, 'No Action Taken', 1, 0, 0, '#cc4141', '', '', '', 1),
(2, 'Follow-up', 0, 0, 0, '#cc9407', '', '', '', 1),
(3, 'In Progress', 0, 0, 0, '#856005', '', '', '', 1),
(4, 'Proposal Sent', 0, 0, 0, '#573f03', '', '', '', 1),
(5, 'Not Interested', 0, 1, 0, '#57e3b0', '', '', '', 1),
(6, 'Pending Decision', 0, 0, 0, '#0b8f5f', '', '', '', 1),
(7, 'Negotiation', 0, 0, 0, '#919191', '', '', '', 1),
(9, 'On Hold', 0, 0, 0, '#044726', '', '', '', 1),
(10, 'Contract Sent', 0, 0, 0, '#506bd6', '', '', '', 1),
(11, 'Meeting Scheduled', 0, 0, 0, '#0b8f5f', '', '', '', 1),
(13, 'Awaiting Payment', 0, 0, 0, '#1d44c4', '', '', '', 1),
(14, 'Converted', 0, 0, 1, '#00f725', '', '', '', 1),
(15, 'Lost - Budget Issue', 0, 0, 0, '#d91212', '', '', '', 1),
(16, 'Lost - Competitor', 0, 0, 0, '#eb1212', '', '', '', 1),
(17, 'Dead', 0, 0, 0, '#c21616', '', '', '', 1),
(18, 'Payment Received', 0, 0, 0, '#0e9941', '', '', '', 1),
(19, 'Junk', 0, 0, 0, '#ed1313c9', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login_history`
--

CREATE TABLE `login_history` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `LoginDate` varchar(50) NOT NULL,
  `LoginTime` varchar(50) NOT NULL,
  `IPAddress` varchar(100) NOT NULL,
  `CreatedDate` varchar(50) NOT NULL,
  `CreatedTime` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login_history`
--

INSERT INTO `login_history` (`ID`, `UserID`, `LoginDate`, `LoginTime`, `IPAddress`, `CreatedDate`, `CreatedTime`) VALUES
(1, 1, '2026-01-27', '18:52:51', '49.36.177.183', '2026-01-27', '18:52:51'),
(2, 4, '2026-01-27', '19:20:01', '122.161.52.184', '2026-01-27', '19:20:01'),
(3, 6, '2026-01-27', '19:21:59', '122.161.52.184', '2026-01-27', '19:21:59'),
(4, 6, '2026-01-28', '12:44:02', '122.161.51.166', '2026-01-28', '12:44:02');

-- --------------------------------------------------------

--
-- Table structure for table `magazine`
--

CREATE TABLE `magazine` (
  `ID` int(11) NOT NULL,
  `MagazineName` varchar(256) NOT NULL DEFAULT '',
  `MagazinePDF` varchar(256) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mentorship_session`
--

CREATE TABLE `mentorship_session` (
  `ID` int(11) NOT NULL,
  `CenterID` int(11) NOT NULL DEFAULT -1,
  `Name` varchar(200) NOT NULL DEFAULT '',
  `MobileNumber` varchar(50) NOT NULL DEFAULT '',
  `Email` varchar(50) NOT NULL DEFAULT '',
  `AttemptUPSC` varchar(256) NOT NULL DEFAULT '',
  `AttemptYear` varchar(256) NOT NULL DEFAULT '',
  `PreviousCoaching` varchar(256) NOT NULL DEFAULT '',
  `SessionCategory` varchar(50) NOT NULL DEFAULT '',
  `SubjectID` int(11) NOT NULL DEFAULT -1,
  `EducatorID` varchar(50) NOT NULL DEFAULT '',
  `SessionDate` varchar(50) NOT NULL DEFAULT '',
  `SessionTime` varchar(50) NOT NULL DEFAULT '',
  `MeetingLink` varchar(256) NOT NULL DEFAULT '',
  `ScheduelDate` varchar(200) NOT NULL DEFAULT '',
  `ScheduelTime` varchar(256) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT 1,
  `IsDelete` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mentorship_session`
--

INSERT INTO `mentorship_session` (`ID`, `CenterID`, `Name`, `MobileNumber`, `Email`, `AttemptUPSC`, `AttemptYear`, `PreviousCoaching`, `SessionCategory`, `SubjectID`, `EducatorID`, `SessionDate`, `SessionTime`, `MeetingLink`, `ScheduelDate`, `ScheduelTime`, `CreatedDate`, `CreatedTime`, `IsActive`, `IsDelete`) VALUES
(6, -1, 'Manish Sharma', '08433098391', 'manish@gmail.com', 'Yes', '2024', 'ttttt', 'Strategy Session', -1, '', '2024/06/29', '9am-10am', '', '', '', '2024-06-29', '16:36:56', 1, 1),
(7, -1, 'Manish Sharma', '08433098391', 'manish@gmail.com', 'No', '', 'ttttt', 'Strategy Session', -1, '', '2024/06/29', '10am-11am', '', '', '', '2024-06-29', '16:37:46', 1, 1),
(8, -1, 'Manish Sharma', '08433098391', 'manish@gmail.com', 'No', '', 'ttttt', 'Strategy Session', -1, '', '2024/07/01', '9am-10am', '', '', '', '2024-07-01', '12:35:32', 1, 1),
(9, -1, 'manish', '08433098391', 'manish@gmail.com', 'Yes', '2024', 'ttttt', 'Subject Session', -1, '', '2024/07/01', '12am-01pm', '', '', '', '2024-07-01', '12:41:32', 1, 1),
(10, -1, 'Manish Sharma', '08433098391', 'pgfiry@gmail.com', 'Yes', '2024', 'ttttt', 'Strategy Session', -1, '', '2024/07/26', '12am-01pm', '', '', '', '2024-07-01', '12:52:00', 1, 1),
(11, -1, 'Manish Sharma', '08433098391', 'its4sharmaji@gmail.com', 'Yes', '2024', 'Praajasv IAS', 'Strategy Session', -1, '', '2024/06/11', '01pm-02pm', '', '', '', '2024-07-01', '14:55:27', 1, 1),
(12, -1, 'Manish Sharma', '08433098391', 'its4sharmaji@gmail.com', 'Yes', '2024', 'ttttt', 'Subject Session', 1, '', '2024/06/29', '10am-11am', '', '', '', '2024-07-01', '15:00:09', 1, 1),
(13, -1, 'Manish Sharma', '08433098391', 'manish@garyglobalsolution.com', 'Yes', '2024', 'ttttt', 'Subject Session', 1, 'AvadhOjha', '2024/07/01', '9am-10am', '', '', '', '2024-07-01', '15:48:15', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mentorship_session_notes`
--

CREATE TABLE `mentorship_session_notes` (
  `ID` int(11) NOT NULL,
  `MentorshipID` int(11) NOT NULL DEFAULT -1,
  `Notes` text NOT NULL,
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mentorship_session_notes`
--

INSERT INTO `mentorship_session_notes` (`ID`, `MentorshipID`, `Notes`, `CreatedDate`, `CreatedTime`, `CreatedBy`, `IsActive`) VALUES
(1, 7, 'tt', '2024-06-29', '16:55:19', 'admin@breakthroughpoint.co.in', 1);

-- --------------------------------------------------------

--
-- Table structure for table `monthly_affairs`
--

CREATE TABLE `monthly_affairs` (
  `ID` int(11) NOT NULL,
  `MonthlyDate` varchar(256) NOT NULL DEFAULT '',
  `PdfName` varchar(256) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parsed_serial_number`
--

CREATE TABLE `parsed_serial_number` (
  `ID` int(11) NOT NULL,
  `SrNo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `ID` int(11) NOT NULL,
  `ServiceName` varchar(250) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`ID`, `ServiceName`, `IsActive`) VALUES
(1, 'Complete Digital Marketing', 1),
(2, 'Website Development', 1),
(3, 'SEO', 1),
(4, 'Social Media Optimization', 1),
(5, 'Local SEO', 1),
(6, 'Google Ads', 1),
(7, 'Meta Ads', 1),
(8, 'Linkedin Ads & Management ', 1),
(9, 'Others', 1),
(10, 'Influencer Management', 1),
(11, 'UGC Videos Creation', 1),
(12, 'Logo Design', 1),
(13, 'Packaging Design', 1),
(14, 'AI SEO', 1),
(15, 'Brochure/ Catalogue/ Menu Design', 1),
(16, 'Amazon Listing Management', 1),
(17, 'Flipkart Listing Management', 1),
(18, 'Meesho Listing Management', 1),
(19, 'Myntra Listing Management', 1),
(20, 'Ajio Listing Management', 1),
(21, 'Amazon Onboarding', 1),
(22, 'Flipkart Onboarding', 1),
(23, 'Myntra Onboarding', 1),
(24, 'Meesho Onboarding', 1),
(25, 'B2B Collaboration', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_admission`
--

CREATE TABLE `student_admission` (
  `ID` int(11) NOT NULL,
  `BranchID` int(11) NOT NULL DEFAULT -1,
  `RollNo` varchar(200) NOT NULL DEFAULT '',
  `Name` varchar(256) NOT NULL,
  `Email` varchar(256) NOT NULL,
  `PhoneNumber` varchar(200) NOT NULL,
  `AlternativeNumber` varchar(256) NOT NULL DEFAULT '',
  `Country` varchar(200) NOT NULL DEFAULT '',
  `State` varchar(200) NOT NULL DEFAULT '',
  `City` varchar(256) NOT NULL DEFAULT '',
  `Address` varchar(256) NOT NULL DEFAULT '',
  `PostalAddress` varchar(256) NOT NULL DEFAULT '',
  `Pin` varchar(50) NOT NULL DEFAULT '',
  `ProfilePicture` varchar(200) NOT NULL DEFAULT '',
  `IDProof` varchar(200) NOT NULL DEFAULT '',
  `DOB` varchar(50) NOT NULL DEFAULT '',
  `Gender` varchar(50) NOT NULL DEFAULT '',
  `FatherHusbandName` varchar(200) NOT NULL DEFAULT '',
  `ParentMobile` varchar(50) NOT NULL DEFAULT '',
  `CollegeSchool` varchar(256) NOT NULL DEFAULT '',
  `YearClass` varchar(256) NOT NULL DEFAULT '',
  `Degree` varchar(200) NOT NULL DEFAULT '',
  `Mode` varchar(256) NOT NULL DEFAULT '',
  `Courses` varchar(256) NOT NULL,
  `TotalStructuredFee` int(11) NOT NULL DEFAULT -1,
  `ScholarshipProvided` int(11) NOT NULL DEFAULT 0,
  `TotalPaybleFee` varchar(256) NOT NULL DEFAULT '',
  `FeestobePaid` int(11) NOT NULL DEFAULT -1,
  `Source` varchar(50) NOT NULL DEFAULT '',
  `PaymentMode` varchar(100) NOT NULL DEFAULT '',
  `TransactionID` varchar(256) NOT NULL DEFAULT '',
  `PaymentStatus` varchar(256) NOT NULL DEFAULT '',
  `AdmissionDate` varchar(50) NOT NULL DEFAULT '',
  `AdmissionStatus` varchar(50) NOT NULL DEFAULT 'Pending By Account',
  `PaymentDate` varchar(50) NOT NULL DEFAULT '',
  `temp_batch` varchar(50) NOT NULL DEFAULT '',
  `LeadOwner` int(11) NOT NULL DEFAULT -1,
  `CreatedBy` varchar(256) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `Refunded` int(11) NOT NULL DEFAULT 0,
  `Dropped` int(11) NOT NULL DEFAULT 0,
  `IsActive` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_admission`
--

INSERT INTO `student_admission` (`ID`, `BranchID`, `RollNo`, `Name`, `Email`, `PhoneNumber`, `AlternativeNumber`, `Country`, `State`, `City`, `Address`, `PostalAddress`, `Pin`, `ProfilePicture`, `IDProof`, `DOB`, `Gender`, `FatherHusbandName`, `ParentMobile`, `CollegeSchool`, `YearClass`, `Degree`, `Mode`, `Courses`, `TotalStructuredFee`, `ScholarshipProvided`, `TotalPaybleFee`, `FeestobePaid`, `Source`, `PaymentMode`, `TransactionID`, `PaymentStatus`, `AdmissionDate`, `AdmissionStatus`, `PaymentDate`, `temp_batch`, `LeadOwner`, `CreatedBy`, `CreatedDate`, `CreatedTime`, `Refunded`, `Dropped`, `IsActive`) VALUES
(1, 3, '', 'ghjk', 'kkkumar@gmail.com', '1236547890', '', '', '', 'asdfgf', '', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '2', 40000, 0, '40000', 15000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-07', 'Approved By Account', '', 'PSI 6', -1, 'rahul@praajasv.com', '2024-06-07', '15:50:50', 0, 0, 1),
(2, 3, '', 'utsav shah', 'utsavsvnus@gmail.com', '9409286519', '', '', '', 'ahmedabad', 'bodakdev', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '16', 45000, 5, '42750', 10000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-08', 'Approved By Account', '', 'PSI - 6 ', -1, 'bhaumik@praajasv.com', '2024-06-08', '13:23:22', 0, 0, 1),
(3, 2, '', 'komal', 'komal@gmail.com', '9080706051', '', '', 'Gujarat', 'ahmedbad', '', '', '', '', '', '', 'Female', 'fghdfth', '', '', '', '', 'Offline', '26', 43000, 5, '40850', 15000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-10', 'Approved By Account', '', 'PSI June', -1, 'bhavi@praajasv.com', '2024-06-10', '14:16:04', 0, 0, 1),
(4, 2, '', 'xyz', 'ZSdsrgdfhg@gmail.com', '1234567899', '', '', '', 'gandhinagar', '', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '19', 65000, 5, '61750', 40000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-10', 'Approved By Account', '', 'AN 4', -1, 'malhar@praajasv.com', '2024-06-10', '15:31:58', 0, 0, 1),
(5, 1, '', 'Ankit Kumar', 'ankitkumar7234965727@gmail.com', '7234965727', '', '', '', '', '', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '1', 160000, 37, '100800', 5000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-11', 'Approved By Account', '', 'AOC 1', -1, '', '2024-06-11', '13:04:23', 0, 0, 1),
(6, 1, '', 'Nirdosh Kumar', 'Nirdoshyadav984@gmail.com', '8392865320', '', '', '', '', '', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '1', 160000, 0, '160000', 10000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-11', 'Approved By Account', '', 'AOC 1', -1, 'shagun@gmail.com', '2024-06-11', '17:40:54', 0, 0, 1),
(7, 2, '', 'DHRUVISH GANDHI', 'gandhidhruvish62@gmail.com', '9737355545', '', '', '', 'ahmedabad', 'shyamal', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '20', 55000, 0, '55000', 10000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-11', 'Approved By Account', '', 'AN-4', -1, 'bhavi@praajasv.com', '2024-06-11', '18:44:21', 0, 0, 1),
(8, 2, '', 'GOPAL RATHOD', 'rathodgopal70.gr@gmail.com', '7990170345', '7016248977', '', 'Gujarat', 'ahmedbad', 'NEAR WATER TANK, KHANDHERI, JUNAGADH', 'LAKSHMINAGAR, OPP. JANTA NAGAR, ODHAV NIKOL ROAD, ODHAV, AHMEDABAD', '382415', '', '', '', 'Male', 'DEVSHI BHAI', '', '', '', '', 'Offline', '29', 30000, 50, '15000', 15000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-11', 'Approved By Account', '', 'GPSC MAIN 2024 AHMEDABAD', -1, 'bhavi@praajasv.com', '2024-06-11', '18:52:09', 0, 0, 1),
(9, 2, '', 'DHRUVI SONI', 'sdhruvi338@gmail.com', '8849660861', '8160587661', '', '', 'ahmedbad', '1ST FLOOR, REENA APPARTMENT, NEAR FLH3 BUILDING', '9, GOKUL NAGAR, DAIRY ROAD, NEAR ITI, PALANPUR, BANASKANTHA', '385001', 'DHRUVI SONIprofile_picture.50', 'DHRUVI SONIid_proof.22', '2024-06-13', 'Female', 'BHARAT BHAI', '', '', '', '', 'Offline', '19', 65000, 0, '65000', 1000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-12', 'Approved By Account', '', 'AN 4', -1, 'bhavi@praajasv.com', '2024-06-12', '12:03:30', 0, 0, 1),
(10, 2, '', 'SUMITSINH CHAUHAN', 'mahipatsinhchauhan07@gmail.com', '8780899582', '8866411454', '', 'Gujarat', 'AHMEDABAD', 'SADHI MAA NU MANDIR, NEAR SANATHAL TOLL PLAZA, SANATHAL, SANAND', '', '', '', '', '', 'Male', 'JITENDRASINH', '', '', '', '', 'Offline', '26', 43000, 11, '38270', 1000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-12', 'Pending By Account', '', 'PSI June', -1, 'KHUSHBU@GMAIL.COM', '2024-06-12', '14:53:25', 0, 0, 1),
(11, 1, '', 'prince raj verma', 'atif71752@gmail.com', '9939742621', '', '', 'Delhi', 'delhi', '', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '1', 160000, 0, '160000', 47000, 'Admin Portal', 'Online', '', 'Successfull', '05/18/2024', 'Pending By Account', '', 'AOC 1', -1, 'anjali@gmail.com', '2024-06-12', '14:59:00', 0, 0, 1),
(12, 1, '', 'shivam', 'studentbook0987@gmail.com', '8178744060', '', '', 'Uttar Pradesh', 'ghaziabad', '', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '1', 160000, 0, '160000', 32000, 'Admin Portal', 'Online', '', 'Successfull', '05/24/2024', 'Approved By Account', '', 'AOC 1', -1, 'anjali@gmail.com', '2024-06-12', '15:06:18', 0, 0, 1),
(13, 1, '', 'shyam kumar', 'jaiswalshyam2006@gmail.com', '6299296856', '', '', '', '', '', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '30', 200000, 0, '200000', 175000, 'Admin Portal', 'Online', '', 'Successfull', '05/24/2024', 'Approved By Account', '', 'AOC 1', -1, 'anjali@gmail.com', '2024-06-12', '15:16:14', 0, 0, 1),
(14, 1, '', 'ayush shukla', 'ayush@gmail.com', '7355015695', '', '', '', 'lucknow', '', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '1', 160000, 0, '160000', 110000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-12', 'Approved By Account', '', 'AOC 1', -1, 'anjali@gmail.com', '2024-06-12', '18:54:59', 0, 0, 1),
(15, 1, '', 'Sumit Pandey', 'isumitpandey08@gmail.com', '9646205240', '', '', '', 'Amroha', '', '', '', '', '', '', 'Male', '', '', '', '', '', 'Online', '1', 90000, 11, '80100', 40000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-13', 'Approved By Account', '', 'AOC 1', -1, 'shagun@gmail.com', '2024-06-13', '16:43:34', 0, 0, 1),
(16, 1, '', 'ASIF ANSARI', 'rikukhan.871@gmail.com', '9955203273', '8217316196', '', 'Jharkhand', 'JHARKHAND', 'AZAD NURSING HOME, BHANARIDIH GIRIDIH', 'AZAD NURSING HOME, BHANARIDIH GIRIDIH', '815301', '', '', '', 'Male', 'FIROZ ANSARI', '', '', '', '', 'Offline', '30', 200000, 0, '200000', 120000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-13', 'Approved By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-06-13', '17:25:44', 0, 0, 1),
(17, 2, '', 'KULDEP D. KHATANA', 'kuldeepkhatana6064@gmail.com', '9974071001', '', '', '', 'ahmedbad', 'VASTRAPUR', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '27', 20000, 0, '20000', 1000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-14', 'Approved By Account', '', 'CONSTABLE JUNE 2024', -1, 'bhavi@praajasv.com', '2024-06-14', '11:26:03', 0, 0, 1),
(18, 3, '', 'UMABEN', 'umamobh@gmail.com', '9099969885', '8320302425', '', 'Gujarat', 'BHARUCH', 'BBLOCK 204, 19 -A, POLICE HEAD QUARTER,BHARUCH', '392001', '392001', '', '', '', 'Female', 'DANUBHAI MOBH', '', '', '', '', 'Online', '14', 15000, 50, '7500', 7500, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-14', 'Pending By Account', '', '', -1, '', '2024-06-14', '17:43:10', 0, 0, 1),
(19, 1, '', 'Shubham Kumar', 'shubhamtidhiwal3259@gmail.com', '7906089949', '', '', '', '', '', '', '', '', '', '', 'Male', '', '', '', '', '', 'Online', '1', 90000, 12, '79200', 35000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-16', 'Approved By Account', '', 'AOC 1', -1, 'shagun@gmail.com', '2024-06-16', '10:29:59', 0, 0, 1),
(20, 2, '', 'NISHANT VAGHELA', 'nishantvaghela2004@gmail.com', '8200550199', '8401210167', '', 'Gujarat', 'ahmedbad', '2-36, slam quarters, opp. sukhram nagar water tank, rakhial road, rajpur gomtipiu, ahmedabad', '2-36, slam quarters, opp. sukhram nagar water tank, rakhial road, rajpur gomtipiu, ahmedabad', '380021', '', '', '', 'Male', 'PANKAJ BHAI', '', '', '', '', 'Offline', '27', 20000, 0, '20000', 1000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-16', 'Pending By Account', '', 'CONSTABLE JUNE 2024', -1, 'bhavi@praajasv.com', '2024-06-16', '11:38:21', 0, 0, 1),
(21, 2, '', 'RAHIL KHAN PATHAN', 'rahilkhanpathan0313@gmail.com', '9904789779', '9904504153', '', 'Gujarat', 'ahmedbad', '30, AZID DUPLEX, NEAR DANILIMDA, AHMEDABAD', '30, AZID DUPLEX, NEAR DANILIMDA, AHMEDABAD', '380028', '', '', '', 'Male', '', '', '', '', '', 'Offline', '27', 20000, 0, '20000', 1000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-16', 'Approved By Account', '', 'CONSTABLE JUNE 2024', -1, 'bhavi@praajasv.com', '2024-06-16', '11:49:13', 0, 0, 1),
(22, 2, '', 'AIFAAZKHAN PATHAN', 'aifaazpathan@gmail.com', '9512894785', '9924793511', '', '', 'ahmedbad', 'B-27/223, GOVT. F COLONY, SHAH E ALAM DARWAJA, NEAR TOLLNAKA, AHMEDABAD', 'B-27/223, GOVT. F COLONY, SHAH E ALAM DARWAJA, NEAR TOLLNAKA, AHMEDABAD', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '27', 20000, 0, '20000', 1000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-16', 'Approved By Account', '', 'CONSTABLE JUNE 2024', -1, 'bhavi@praajasv.com', '2024-06-16', '11:56:20', 0, 0, 1),
(23, 2, '', 'DIVYA RAVAT', 'dezyravat39055@gmail.com', '7203045890', '', '', '', 'ahmedbad', '29/30, GUJARAT HOUSING BOARD, MEGHANINAGAR, AHMEDABAD', '', '', '', '', '', 'Female', '', '', '', '', '', 'Offline', '26', 40000, 12, '35200', 1000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-16', 'Approved By Account', '', 'PSI JUNE 2024', -1, 'bhavi@praajasv.com', '2024-06-16', '12:40:20', 0, 0, 1),
(24, 2, '', 'MAHIPATSINH CHAUHAN', 'mahipatsinhchauhan07@gmail.com', '9974455410', '8866411454', '', 'Gujarat', 'AHMEDABAD', 'SADHI MAA NU MANDIR, NEAR SANATHAL TOLL PLAZA, SANATHAL SANAND', '', '', '', '', '', 'Male', 'JITENDRASINH', '', '', '', '', 'Offline', '26', 40000, 13, '35000', 35000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-16', 'Approved By Account', '', 'PSI JUNE 2024', -1, 'khushbu@gmail.com', '2024-06-16', '12:57:40', 0, 0, 1),
(25, 2, '', 'POOJABA VAGHELA', 'hasabavaghela2106@gmail.com', '8128615305', '8128615305', '', '', 'ahmedbad', 'V-104, VRUNDAVAN VATIKA, VASTRAL RTO ROAD, VASTRAL', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '19', 65000, 0, '65000', 1000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-17', 'Approved By Account', '', 'AN 4', -1, 'bhavi@praajasv.com', '2024-06-17', '12:54:51', 0, 0, 1),
(26, 1, '', 'Ansh Pachauri', 'pachauriansh10@gmail.com', '7017929928', '', '', '', 'Firozabad', '', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '1', 160000, 44, '89600', 10000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-17', 'Approved By Account', '', 'AOC 1', -1, 'shagun@gmail.com', '2024-06-17', '17:21:04', 0, 0, 1),
(27, 1, '', 'anuj sharma', 'as2003.anuj@gmail.com', '8448448311', '9810702391', '', 'Haryana', 'gurugram', 'ashok vihar phase-1 gurugram,sec-3', 'ashok vihar phase 1', '', '', '', '', 'Male', 'mahesh sharma', '', '', '', '', 'Offline', '1', 160000, 38, '100000', 50000, 'Admin Portal', 'Online', '', 'Successfull', '06/17/2024', 'Approved By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-06-18', '10:57:09', 0, 0, 1),
(28, 1, '', 'SONU KUMAR', '1646sonukr@gmail.com', '9905346919', '9810509958', '', 'Delhi', 'DELHI', 'C-3/440 A, NANGLI VIVHAR EXT. BAPROLA', 'C-3/440 A, NANGLI VIVHAR EXT. BAPROLA', '110043', '', '', '', 'Male', 'SHAMBHU PRASAD', '', '', '', '', 'Offline', '30', 200000, 35, '130000', 20000, 'Admin Portal', 'Online', '', 'Successfull', '06/17/2024', 'Approved By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-06-18', '11:05:59', 0, 0, 1),
(29, 1, '', 'anupam kumar gupta', 'guptaanupam2312@gmail.com', '9315911415', '7033222040', '', 'Bihar', 'bihar', 'sareya ward 1,yadvpur road, gopalganj bihar', 'sareya ward 1,yadvpur road, gopalganj bihar', '841428', '', '', '', 'Male', 'anil kumar gupta', '', '', '', '', 'Offline', '30', 200000, 20, '160000', 160000, 'Admin Portal', 'Online', '', 'Successfull', '06/17/2024', 'Approved By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-06-18', '11:12:27', 0, 0, 1),
(30, 1, '', 'koshiv uikey', 'koshivuikey123@gmail.com', '8770115920', '8968913073', '', 'Madhya Pradesh', 'chhindwara', 'house - 162, parasia road near apni rasoi dabha chhindwara', 'house - 162, parasia road near apni rasoi dabha chhindwara', '', '', '', '', 'Male', 'uday bhan shah uikey', '', '', '', '', 'Offline', '30', 200000, 40, '120000', 30000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-18', 'Approved By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-06-18', '11:18:48', 0, 0, 1),
(31, 1, '', 'Samridh Khatri', 'samridhkhatri2110@gmail.com', '8394050502', '', '', '', '', '', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '1', 160000, 25, '120000', 10000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-18', 'Approved By Account', '', 'AOC 1', -1, 'shagun@gmail.com', '2024-06-18', '12:44:55', 0, 0, 1),
(32, 1, '', 'Rashi Shah', 'rashishah2910@gmail.com', '7607968901', '', '', '', '', '', '', '', '', '', '', 'Female', '', '', '', '', '', 'Offline', '1', 160000, 25, '120000', 10000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-18', 'Approved By Account', '', 'AOC 1', -1, 'shagun@gmail.com', '2024-06-18', '13:53:36', 0, 0, 1),
(33, 1, '', 'Saumya Sinha', 'saumya1sinha@gmail.com', '8743978821', '', '', 'Delhi', 'dwarka', '', '', '', '', '', '', 'Female', '', '', '', '', '', 'Offline', '1', 160000, 31, '110400', 10000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-24', 'Approved By Account', '', 'AOC 1', -1, 'shagun@gmail.com', '2024-06-24', '16:03:43', 0, 0, 1),
(34, 1, '', 'SOLANKI ABDUL SUJAN', 'N/A', '9157830477', 'N/A', '', 'N/A', 'N/A', 'N/A', '', '', '', '', '', 'N/A', '', '', '', '', '', 'Offline', '1', 160000, 19, '130000', 90000, 'parser', 'QR CODE (2000+88000 ASK YOGI)', '', 'Successfull', '2024-05-06', 'Approved By Account', '', 'AOC 1', -1, 'anjali@gmail.com', '2024-06-26', '17:27:05', 0, 0, 1),
(35, 1, '', 'VIRENDER CHOUDHARY', 'N/A', '9414150551', 'N/A', '', 'N/A', 'N/A', 'N/A', '', '', '', '', '', 'N/A', '', '', '', '', '', 'Offline', '1', 160000, 31, '110000', 51000, 'parser', 'QR CODE(2K+49K)', '', 'Successfull', '2024-05-06', 'Approved By Account', '', 'AOC 1', -1, 'anjali@gmail.com', '2024-06-26', '17:27:05', 0, 0, 1),
(36, 1, '', 'BHAWNA', 'N/A', '9717976328', 'N/A', '', 'N/A', 'N/A', 'N/A', '', '', '', '', '', 'N/A', '', '', '', '', '', 'Offline', '1', 160000, 44, '90000', 30000, 'parser', 'QR CODE', '', 'Successfull', '2024-05-06', 'Approved By Account', '', 'AOC 1', -1, 'anjali@gmail.com', '2024-06-26', '17:27:05', 0, 0, 1),
(37, 1, '', 'PRAGATI ORAON', 'N/A', '9519326580', 'N/A', '', 'N/A', 'N/A', 'N/A', '', '', '', '', '', 'N/A', '', '', '', '', '', 'Offline', '1', 160000, 38, '100000', 2000, 'parser', 'QR CODE ', '', 'Successfull', '2024-05-06', 'Approved By Account', '', 'AOC 1', -1, 'anjali@gmail.com', '2024-06-26', '17:27:05', 0, 0, 1),
(38, 1, '', 'MD. ATIF SHAMIM', 'N/A', '9560708401', 'N/A', '', 'N/A', 'N/A', 'N/A', '', '', '', '', '', 'N/A', '', '', '', '', '', 'Offline', '1', 160000, 56, '70000', 30000, 'parser', 'CASH', '', 'Successfull', '2024-05-16', 'Approved By Account', '', 'AOC 1', -1, 'anjali@gmail.com', '2024-06-26', '17:27:05', 0, 0, 1),
(39, 1, '', 'RAJ MISHRA', 'N/A', '8433254364', 'N/A', '', 'N/A', 'N/A', 'N/A', '', '', '', '', '', 'N/A', '', '', '', '', '', 'Offline', '1', 160000, 25, '120000', 20000, 'parser', 'CASH', '', 'Successfull', '2024-05-17', 'Approved By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-06-26', '17:27:05', 0, 0, 1),
(40, 1, '', 'PRINCE RAJ VERMA', 'N/A', '9608840320', 'N/A', '', 'N/A', 'N/A', 'N/A', '', '', '', '', '', 'N/A', '', '', '', '', '', 'Offline', '1', 160000, 25, '120000', 47000, 'parser', 'QR CODE', '', 'Successfull', '2024-05-18', 'Approved By Account', '', 'AOC 1', -1, 'anjali@gmail.com', '2024-06-26', '17:27:05', 0, 0, 1),
(41, 1, '', 'DINESH', 'N/A', '8130525461', 'N/A', '', 'N/A', 'N/A', 'N/A', '', '', '', '', '', 'N/A', '', '', '', '', '', 'Offline', '1', 160000, 25, '120000', 500, 'parser', 'QR CODE', '', 'Successfull', '2024-05-22', 'Approved By Account', '', 'AOC 1', -1, 'anjali@gmail.com', '2024-06-26', '17:27:05', 0, 0, 1),
(42, 1, '', 'ANJLIKA MISHRA', 'N/A', '9529342854', 'N/A', '', 'N/A', 'N/A', 'N/A', '', '', '', '', '', 'N/A', '', '', '', '', '', 'Offline', '1', 160000, 0, '160000', 40000, 'parser', '(10K + 30K) QR CODE', '', 'Successfull', '2024-05-23', 'Approved By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-06-26', '17:27:05', 0, 0, 1),
(43, 1, '', 'ANKUSH SHRIVAS', 'N/A', '8349613275', 'N/A', '', 'N/A', 'N/A', 'N/A', '', '', '', '', '', 'N/A', '', '', '', '', '', 'Offline', '1', 160000, 25, '120000', 500, 'parser', 'QR CODE', '', 'Successfull', '2024-05-27', 'Approved By Account', '', 'AOC 1', -1, 'anjali@gmail.com', '2024-06-26', '17:27:05', 0, 0, 1),
(44, 1, '', 'ADITYA SHRIVAS', 'N/A', '8517088038', 'N/A', '', 'N/A', 'N/A', 'N/A', '', '', '', '', '', 'N/A', '', '', '', '', '', 'Offline', '1', 160000, 38, '100000', 20000, 'parser', 'CASH', '', 'Successfull', '2024-05-27', 'Approved By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-06-26', '17:27:05', 0, 0, 1),
(45, 1, '', 'MANAS CHANDRA', 'N/A', '9523260302', 'N/A', '', 'N/A', 'N/A', 'N/A', '', '', '', '', '', 'N/A', '', '', '', '', '', 'Offline', '1', 160000, 25, '120000', 2000, 'parser', 'QR CODE', '', 'Successfull', '2024-05-28', 'Approved By Account', '', 'AOC 1', -1, 'anjali@gmail.com', '2024-06-26', '17:27:06', 0, 0, 1),
(46, 1, '', 'SHASHANK', 'N/A', '981899957', 'N/A', '', 'N/A', 'N/A', 'N/A', '', '', '', '', '', 'N/A', '', '', '', '', '', 'Offline', '33', 50000, 0, '50000', 12000, 'parser', 'QR CODE', '', 'Successfull', '2024-05-28', 'Approved By Account', '', 'AOC 1', -1, 'anjali@gmail.com', '2024-06-26', '17:27:06', 0, 0, 1),
(47, 1, '', 'VISHESH RAGHUWANSHI', 'N/A', '8878860005', 'N/A', '', 'N/A', 'N/A', 'N/A', '', '', '', '', '', 'N/A', '', '', '', '', '', 'Online', '1', 90000, -13, '102000', 37000, 'parser', 'QR CODE', '', 'Successfull', '2024-06-16', 'Approved By Account', '', 'AOC 1', -1, 'anjali@gmail.com', '2024-06-26', '17:27:06', 0, 0, 1),
(48, 1, '', 'PRIYANSHU RAI', 'N/A', '7024337287', 'N/A', '', 'N/A', 'N/A', 'N/A', '', '', '', '', '', 'N/A', '', '', '', '', '', 'Offline', '1', 160000, 38, '100000', 25000, 'parser', 'QR CODE', '', 'Successfull', '2024-06-16', 'Approved By Account', '', 'AOC 1', -1, 'anjali@gmail.com', '2024-06-26', '17:27:06', 0, 0, 1),
(49, 1, '', 'ANSH PACHAURI', 'N/A', '7088524989', 'N/A', '', 'N/A', 'N/A', 'N/A', '', '', '', '', '', 'N/A', '', '', '', '', '', 'Offline', '1', 160000, 44, '90000', 10000, 'parser', 'CASH', '', 'Successfull', '2024-06-17', 'Approved By Account', '', 'AOC 1', -1, 'shagun@gmail.com', '2024-06-26', '17:27:06', 0, 0, 1),
(50, 1, '', 'AAKASH', 'N/A', '7056685842', 'N/A', '', 'N/A', 'N/A', 'N/A', '', '', '', '', '', 'N/A', '', '', '', '', '', 'Offline', '1', 160000, 25, '120000', 120000, 'parser', 'QR CODE', '', 'Successfull', '2024-06-18', 'Approved By Account', '', 'AOC 1', -1, 'shagun@gmail.com', '2024-06-26', '17:27:06', 0, 0, 1),
(51, 1, '', 'YOGITA GAUTAM', 'N/A', '9310840442', 'N/A', '', 'N/A', 'N/A', 'N/A', '', '', '', '', '', 'N/A', '', '', '', '', '', 'Offline', '1', 160000, 38, '100000', 40000, 'parser', '10k QR CODE + 30k cheque ', '', 'Successfull', '2024-06-19', 'Approved By Account', '', 'AOC 1', -1, 'shagun@gmail.com', '2024-06-26', '17:27:06', 0, 0, 1),
(52, 1, '', 'NAITIK KUMAR', 'N/A', '8445238637', 'N/A', '', 'N/A', 'N/A', 'N/A', '', '', '', '', '', 'N/A', '', '', '', '', '', 'Offline', '30', 200000, 20, '160000', 30000, 'parser', 'QR CODE', '', 'Successfull', '2024-06-19', 'Approved By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-06-26', '17:27:06', 0, 0, 1),
(53, 1, '', 'AJAY PATEL ', 'N/A', '7310627902', 'N/A', '', 'N/A', 'N/A', 'N/A', '', '', '', '', '', 'N/A', '', '', '', '', '', 'Offline', '1', 160000, 31, '110000', 10000, 'parser', 'CASH', '', 'Successfull', '2024-06-20', 'Approved By Account', '', 'AOC 1', -1, 'shagun@gmail.com', '2024-06-26', '17:27:06', 0, 0, 1),
(54, 1, '', 'ABHISHEK SHARMA', 'N/A', '8077270811', 'N/A', '', 'N/A', 'N/A', 'N/A', '', '', '', '', '', 'N/A', '', '', '', '', '', 'Offline', '1', 160000, 25, '120000', 2000, 'parser', 'QR CODE', '', 'Successfull', '2024-06-20', 'Approved By Account', '', 'AOC 1', -1, 'anjali@gmail.com', '2024-06-26', '17:27:06', 0, 0, 1),
(55, 1, '', 'TUSHAR VERMA', 'N/A', '9352290748', 'N/A', '', 'N/A', 'N/A', 'N/A', '', '', '', '', '', 'N/A', '', '', '', '', '', 'Online', '1', 90000, 22, '70000', 70000, 'parser', 'UPI TO MALAHAR SIR', '', 'Successfull', '2024-06-21', 'Pending By Account', '', 'AOC 1', -1, 'sonia@gmail.com', '2024-06-26', '17:27:06', 0, 0, 1),
(56, 1, '', 'AMIT', 'N/A', '1234567890', 'N/A', '', 'N/A', 'N/A', 'N/A', '', '', '', '', '', 'N/A', '', '', '', '', '', 'Offline', '1', 160000, 25, '120000', 1000, 'parser', 'CASH', '', 'Successfull', '2024-06-21', 'Pending By Account', '', 'AOC 1', -1, 'sonia@gmail.com', '2024-06-26', '17:27:06', 0, 0, 1),
(57, 1, '', 'NIRVESH RANJAN', 'N/A', '8292167416', 'N/A', '', 'N/A', 'N/A', 'N/A', '', '', '', '', '', 'N/A', '', '', '', '', '', 'Offline', '1', 160000, 25, '120000', 10000, 'parser', 'QR CODE', '', 'Successfull', '2024-07-06', 'Approved By Account', '', 'AOC 1', -1, 'anjali@gmail.com', '2024-06-26', '17:27:06', 0, 0, 1),
(58, 1, '', 'GAURAV KUMAR', 'N/A', '8284003691', 'N/A', '', 'N/A', 'N/A', 'N/A', '', '', '', '', '', 'N/A', '', '', '', '', '', 'Online', '1', 90000, 17, '75000', 40000, 'parser', 'OR CODE', '', 'Successfull', '2024-07-06', 'Approved By Account', '', 'AOC 1', -1, 'anjali@gmail.com', '2024-06-26', '17:27:06', 0, 0, 1),
(59, 1, '', 'RANJAN KUMAR', 'N/A', '6204910532', 'N/A', '', 'N/A', 'N/A', 'N/A', '', '', '', '', '', 'N/A', '', '', '', '', '', 'Offline', '1', 160000, 43, '91000', 91000, 'parser', '(1K+90K) QR CODE', '', 'Successfull', '2024-09-06', 'Approved By Account', '', 'AOC 1', -1, 'anjali@gmail.com', '2024-06-26', '17:27:06', 0, 0, 1),
(60, 1, '', 'SATYA PRAKASH', 'sharma123creator@gmail.com', '8579977579', 'N/A', '', '', 'N/A', 'N/A', '', '', '', '', '2024-07-25', 'Male', '', '', '', '', '', 'Offline', '1', 160000, 38, '100000', 80000, 'parser', 'QR CODE (10000+70000 ASK YOGI)', '', 'Successfull', '2024-10-06', 'Approved By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-06-26', '17:27:06', 0, 0, 1),
(61, 3, '', 'MR BHATT', 'malhar@gmail.com', '3571598520', '', '', '', 'KHEDA', '', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '17', 70000, 0, '70000', 50000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-27', 'Pending By Account', '', 'GN -10', -1, 'admin@praajasv.com', '2024-06-27', '13:46:25', 0, 0, 1),
(62, 1, '', 'Vedant Shelke', 'vedantshelke37@gmail.com', '8446058339', '', '', '', '', '', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '1', 160000, 37, '100800', 10000, 'Admin Portal', 'Online', '', 'Successfull', '06/26/2024', 'Approved By Account', '', 'AOC 1', -1, 'shagun@gmail.com', '2024-06-29', '11:07:09', 0, 0, 1),
(63, 1, '', 'lakhan meena', 'lakhanmahero7088@gmail.com', '7088311425', '7088311425', '', 'Uttar Pradesh', 'agra', 'village post barara, dist agra', 'village post barara, dist agra', '283102', '', '', '', 'Male', 'kishan singh meena', '', '', '', '', 'Offline', '1', 160000, 50, '80000', 1000, 'Admin Portal', 'Online', '', 'Successfull', '06/29/2024', 'Approved By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-06-30', '11:54:22', 0, 0, 1),
(64, 1, '', 'Rewa', 'Panghalrewa77@gmail.com', '8178139991', '', '', 'Delhi', 'vasantkunj', '', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '1', 160000, 25, '120000', 10000, 'Admin Portal', 'Online', '', 'Successfull', '06/30/2024', 'Approved By Account', '', 'AOC 1', -1, 'shagun@gmail.com', '2024-07-01', '09:45:18', 0, 0, 1),
(65, 1, '', 'Divy Satyarthi', 'divysatyarthi84@gmail.com', '9450770025', '', '', '', 'kanpur', '', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '1', 160000, 25, '120000', 10000, 'Admin Portal', 'Online', '', 'Successfull', '06/30/2024', 'Approved By Account', '', 'AOC 1', -1, 'shagun@gmail.com', '2024-07-01', '09:49:33', 0, 0, 1),
(66, 1, '', 'Janvi Chauhan', 'jc8195283@gmail.com', '9826527281', '', '', '', 'indore ', '', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '31', 240000, 30, '168000', 5000, 'Admin Portal', 'Online', '', 'Successfull', '2024-07-02', 'Approved By Account', '', 'AOC 1', -1, 'shagun@gmail.com', '2024-07-02', '13:35:24', 0, 0, 1),
(67, 1, '', 'Kaashvi Chaudhary', 'kaashvi2610@gmail.com', '9315575899', '', '', '', '', '', '', '', '', '', '', 'Female', '', '', '', '', '', 'Offline', '1', 160000, 38, '99200', 40000, 'Admin Portal', 'Online', '', 'Successfull', '2024-07-02', 'Approved By Account', '', 'AOC 1', -1, 'shagun@gmail.com', '2024-07-02', '14:16:48', 0, 0, 1),
(68, 1, '', 'Suvani', 'suvani2123ps@rla.du.ac.in', '8700655168', '', '', '', 'itawa', '', '', '', '', '', '', 'Female', '', '', '', '', '', 'Offline', '1', 160000, 38, '99200', 25000, 'Admin Portal', 'Online', '', 'Successfull', '2024-07-04', 'Approved By Account', '', 'AOC 1', -1, 'shagun@gmail.com', '2024-07-04', '16:33:40', 0, 0, 1),
(69, 2, '', 'KINJAL DESAI	', 'kinjaldesaim@gmail.com', '9904191183', '9173614584', '', 'Gujarat', 'AHMEDABAD', 'D-13 GREENWOOD SOCIETY, OPP J G INTERNATIONAL SCHOOL, SATADHAR', '', '', '', '', '', 'Female', 'JASUBHAI', '', '', '', '', 'Offline', '26', 40000, 0, '40000', 35000, 'Admin Portal', 'Online', '', 'Successfull', '2024-07-07', 'Pending By Account', '', 'PSI JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '13:26:04', 0, 0, 1),
(70, 2, '', 'JAYRAJSINH GOHIL', 'JAYDIPGOHIL750@GMAIL.COM', '9879760251', '9998758098', '', 'Gujarat', 'AHMEDABAD', '132, DAMNATH SOCIETY, NARODA NIKOL', '', '', '', '', '', 'Male', 'HARISINGSINH', '', '', '', '', 'Offline', '27', 20000, 0, '20000', 20000, 'Admin Portal', 'Online', '', 'Successfull', '2024-07-07', 'Pending By Account', '', 'CONSTABLE JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '13:39:17', 0, 0, 1),
(71, 2, '', 'DHARMENDRA CHAUHAN	', 'DHARMENDRASINH1930@GMAIL.COM', '9024393630', '8490931484', '', 'Gujarat', 'AHMEDABAD', 'F-4, UTSAV COMPLEX, NEW WADAJ, NR BHAVSAR HOSTEL', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '27', 20000, 0, '20000', 5000, 'Admin Portal', 'Online', '', 'Successfull', '07/05/2024', 'Pending By Account', '', 'CONSTABLE JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '13:45:23', 0, 0, 1),
(72, 2, '', 'VANITA CHAVDA	', 'CHAVDARAHIL68@GMAIL.COM', '9316730534', '9376184159', '', 'Gujarat', 'AHMEDABAD', '2070, KRUSHNADHAM AVASH YOJNA, PART 2, BLOCK 65, VEJALPUR', '', '', '', '', '', 'Female', 'DINESHBHAI', '', '', '', '', 'Offline', '27', 20000, 20, '16000', 8000, 'Admin Portal', 'Online', '', 'Successfull', '07/04/2024', 'Pending By Account', '', 'CONSTABLE JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '13:52:32', 0, 0, 1),
(73, 2, '', 'PRAVIN ALGOTAR	', 'UNKNOWN@GMAIL.COM', '9714690498', '9824701224', '', 'Gujarat', 'DHOLKA', 'BHURKHI, LOTHAL', '', '', '', '', '', 'Male', 'BHIMABHAI', '', '', '', '', 'Offline', '27', 20000, 0, '20000', 20000, 'Admin Portal', 'Online', '', 'Successfull', '07/01/2024', 'Pending By Account', '', 'CONSTABLE JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '13:55:39', 0, 0, 1),
(74, 2, '', 'INDRASINH SOLANKI', 'INDRASINH616@GMAIL.COM', '7863814249', '9979434140', '', 'Gujarat', 'PATAN', '122, SHANKUNTAL GREENCITY, CHANSMA HIGHWAY, SUDAMA CHOKDI', '', '', '', '', '', 'Male', 'KARNSINH', '', '', '', '', 'Offline', '27', 20000, 0, '20000', 1000, 'Admin Portal', 'Online', '', 'Successfull', '06/27/2024', 'Pending By Account', '', 'CONSTABLE JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '14:03:27', 0, 0, 1),
(75, 2, '', 'RAJVEER CHAUHAN	', 'RAJVEERSC15@GMAIL.COM', '6354718672', '8200274840', '', 'Gujarat', '', 'B6/104 POLICELINE DEVJIPURA', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '27', 20000, 0, '20000', 20000, 'Admin Portal', 'Online', '', 'Successfull', '06/26/2024', 'Pending By Account', '', 'CONSTABLE JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '14:09:06', 0, 0, 1),
(76, 2, '', 'AJAY PATNI', 'PATANIAJAY162@GMAIL.COM', '8734063512', '9714820738', '', 'Gujarat', 'AHMEDABAD', '218, KADIYANI CHALI, ASARWA', '', '', '', '', '', 'Male', 'JAYANTIBHAI', '', '', '', '', 'Offline', '27', 20000, 0, '20000', 10000, 'Admin Portal', 'Online', '', 'Successfull', '06/18/2024', 'Pending By Account', '', 'CONSTABLE JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '14:12:11', 0, 0, 1),
(77, 2, '', 'URMILABA ZALA	', 'ZALAURMILABA55@GMAIL.COM', '9106874434', '7600211553', '', 'Gujarat', 'AHMEDABAD', 'DUSHANA, MOTO MADHA, MANDAL', '', '', '', '', '', 'Female', 'MUKESHSINH', '', '', '', '', 'Offline', '27', 20000, 0, '20000', 5000, 'Admin Portal', 'Online', '', 'Successfull', '06/18/2024', 'Pending By Account', '', 'CONSTABLE JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '14:14:37', 0, 0, 1),
(78, 2, '', 'SANNI PATNI	', 'PTNSNN@GMAIL.COM', '8347141248', '9723112371', '', 'Gujarat', 'AHMEDABAD', 'NILKANTH MAHADEV NI CHALI, ASARWA', '', '', '', '', '', 'Male', 'POONAMBHAI', '', '', '', '', 'Offline', '27', 20000, 0, '20000', 10000, 'Admin Portal', 'Online', '', 'Successfull', '06/18/2024', 'Pending By Account', '', 'CONSTABLE JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '14:16:53', 0, 0, 1),
(79, 2, '', 'FARDIN KHAN	PATHAN', 'FARDINBABA89@GMAIL.COM', '7862991173', '9824093545', '', 'Gujarat', 'AHMEDABAD', '5/120 GOVT A COLONY, DARIAKHAN, BEHIND POLICE OFFICE, SHAHIBAG', '', '', '', '', '', 'Male', 'FIROZKHAN', '', '', '', '', 'Offline', '27', 20000, 0, '20000', 20000, 'Admin Portal', 'Online', '', 'Successfull', '06/15/2024', 'Pending By Account', '', 'CONSTABLE JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '14:20:25', 0, 0, 1),
(80, 2, '', 'HARDEEPSINH ZALA	', 'ZALAHARDEEPSINH64@GMAIL.COM', '9157979790', '9157979798', '', 'Gujarat', 'AHMEDABAD', 'BAA SHREE NAINABA IAS IPS STUDY CENTER, AMBAWADI', '', '', '', '', '', 'Male', 'KESARISINH', '', '', '', '', 'Offline', '27', 20000, 0, '20000', 11000, 'Admin Portal', 'Online', '', 'Successfull', '06/05/2024', 'Pending By Account', '', 'CONSTABLE JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '14:24:11', 0, 0, 1),
(81, 2, '', 'GEETA KATHERIYA	', 'UNKNOWN@GMAIL.COM', '9327847045', '7874609411', '', 'Gujarat', 'AHMEDABAD', '138, BHAKTINAGAR PART 2, OPP MOTERA CITY GOLD, SABARMATI', '', '', '', '', '', 'Female', 'MAHESHBHAI', '', '', '', '', 'Offline', '27', 20000, 0, '20000', 20000, 'Admin Portal', 'Online', '', 'Successfull', '06/05/2024', 'Pending By Account', '', 'CONSTABLE JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '14:28:19', 0, 0, 1),
(82, 2, '', 'JAYDEEP SURYAVANSHI	', 'JAYDEEPSURYAVANSHI@GMAIL.COM', '9537921974', '8306707777', '', 'Gujarat', 'AHMEDABAD', '20, MAHESHWARI SOCIETY, CHANDKHEDA', '', '', '', '', '', 'Male', 'YUVRAJ', '', '', '', '', 'Offline', '27', 20000, 0, '20000', 20000, 'Admin Portal', 'Online', '', 'Successfull', '06/03/2024', 'Pending By Account', '', 'CONSTABLE JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '14:38:42', 0, 0, 1),
(83, 2, '', 'AYAJ PATHAN	', 'AYAJKHAN9540@GMAIL.COM', '9510783553', '8347261645', '', 'Gujarat', 'AHMEDABAD', '505, SAMIR RESIDENCY, BEHIND ROYAL HOTEL, SARKHEJ', '', '', '', '', '', 'Male', 'ISMAILKHAN', '', '', '', '', 'Offline', '27', 20000, 0, '20000', 1000, 'Admin Portal', 'Online', '', 'Successfull', '06/11/2024', 'Pending By Account', '', 'CONSTABLE JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '14:41:40', 0, 0, 1),
(84, 2, '', 'KRUNAL PATNI	', 'PATNIKUNAL123@GMAIL.COM', '9328677375', '7495803960', '', 'Gujarat', 'AHMEDBAAD', '46/60 JAYNTILAL CHUNILAL CHALI, ASARWA', '', '', '', '', '', 'Male', 'PUNAMBHAI', '', '', '', '', 'Offline', '27', 20000, 0, '20000', 10000, 'Admin Portal', 'Online', '', 'Successfull', '06/10/2024', 'Pending By Account', '', 'CONSTABLE JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '14:44:29', 0, 0, 1),
(85, 2, '', 'JAY MEER	', 'JAYMEER355@GMAIL.COM', '7878321717', '7567095995', '', 'Gujarat', 'LIMBDI', 'SHAKTI SOCIETY, MAMA TEMPLE', '', '', '', '', '', 'Male', 'JAGDISHBHAI', '', '', '', '', 'Offline', '27', 20000, 0, '20000', 20000, 'Admin Portal', 'Online', '', 'Successfull', '06/07/2024', 'Pending By Account', '', 'CONSTABLE JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '14:47:20', 0, 0, 1),
(86, 2, '', 'VISHVAJEET CHUDASMA	', 'VISHVBHA4760@GMAIL.COM', '7229054623', '9723133445', '', 'Gujarat', 'RAJKOT', 'CHITRAVAD PATI, JAMKANDORANA', '', '', '', '', '', 'Male', 'BHUPATSINH', '', '', '', '', 'Offline', '27', 20000, 0, '20000', 10000, 'Admin Portal', 'Online', '', 'Successfull', '06/03/2024', 'Pending By Account', '', 'CONSTABLE JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '14:55:55', 0, 0, 1),
(87, 2, '', 'VISWRAJSINH JADEJA', 'VISWRAJSINHJADEJA@GMAIL.COM', '9081018843', '9898879980', '', 'Gujarat', 'JAMNAGAR', 'VINAYAK SOCIETY,BEHIND RAILWAY STATION, JAMNAGAR HIGHWAY', '', '', '', '', '', 'Male', 'PRABHATSINH', '', '', '', '', 'Offline', '27', 20000, 0, '20000', 11000, 'Admin Portal', 'Online', '', 'Successfull', '06/03/2024', 'Pending By Account', '', 'CONSTABLE JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '15:14:23', 0, 0, 1),
(88, 2, '', 'DIPESH SOLANKI	', 'SOLANKIDIPESH6144@GMAIL.COM', '9601721765', '9173051190', '', 'Gujarat', 'AHMEDABAD', 'A-3 NILKANTHKRUPA, SHAHWADI, NAROL', '', '', '', '', '', 'Male', 'VIRAMBHAI', '', '', '', '', 'Offline', '27', 20000, 0, '20000', 20000, 'Admin Portal', 'Online', '', 'Successfull', '06/03/2024', 'Pending By Account', '', 'CONSTABLE JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '15:17:06', 0, 0, 1),
(89, 2, '', 'NIKHIL SINH SOLANKI	', 'NIKHILSINHSOLANKI@GMAIL.COM', '7567933424', '9173720084', '', 'Gujarat', 'KADI', '1, RUDRA TENAMENTS, SUJATPURA ROAD', '', '', '', '', '', 'Male', 'PRAVINSINH', '', '', '', '', 'Offline', '27', 20000, 0, '20000', 20000, 'Admin Portal', 'Online', '', 'Successfull', '05/21/2024', 'Pending By Account', '', 'CONSTABLE JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '15:20:59', 0, 0, 1),
(90, 2, '', 'PIYUSH  RAJPUT	', 'PIYUSH.RAJPUT12357@GMAIL.COM', '6353017974', '9824024484', '', 'Gujarat', 'AHMEDABAD', 'B/59, ASHRAVI PARK SOCIETY, NR SUMIR NAGAR, VASTRAL ROAD', '', '', '', '', '', 'Male', 'MANOJKUMAR', '', '', '', '', 'Offline', '27', 20000, 25, '15000', 15000, 'Admin Portal', 'Online', '', 'Successfull', '2024-07-07', 'Pending By Account', '', 'CONSTABLE JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '15:24:21', 0, 0, 1),
(91, 2, '', 'ADARSH MISHRA', 'ADARSHMISHRA8552@GMAIL.COM', '9376122758', '9374156110', '', 'Gujarat', 'AHMEDABAD', 'C-405, SHALIN HEIGHTS, NEAR TRUE VALUE SHOWROOM, HATHIJAN', '', '', '', '', '', 'Male', 'ARUNKUMAR', '', '', '', '', 'Offline', '27', 20000, 25, '15000', 15000, 'Admin Portal', 'Online', '', 'Successfull', '05/23/2024', 'Pending By Account', '', 'CONSTABLE JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '15:26:57', 0, 0, 1),
(92, 2, '', 'HITENDRA SHAH	', 'HITENSH55555@GMAIL.COM', '9219219215', '8866636857', '', 'Gujarat', 'AHMEDABAD', 'O/3 KAMLA APP, B/H SHRADDHA MOTOR, NR SHREYAS CROSSING', '', '', '', '', '', 'Male', 'MAHENDRABHAI', '', '', '', '', 'Offline', '26', 40000, 0, '40000', 1000, 'Admin Portal', 'Online', '', 'Successfull', '07/05/2024', 'Pending By Account', '', 'PSI JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '15:31:14', 0, 0, 1),
(93, 2, '', 'MITENDRASINH VAGHELA	', 'MITENDRASINHVAGHELA249@GMAIL.COM', '7698247145', '7698247145', '', 'Gujarat', 'AHMEDBAAD', '24, PARASMANI SOCIETY, KARMCHARINAGAR, GHATLODIA', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '26', 40000, 13, '35000', 16000, 'Admin Portal', 'Online', '', 'Successfull', '06/25/2024', 'Pending By Account', '', 'PSI JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '15:38:49', 0, 0, 1),
(94, 2, '', 'DALABHAI PATEL	', 'DALARAMCHAUDHARY8@GMAIL.COM', '8200758137', '9898505337', '', 'Gujarat', 'AHMEDABAD', '3/29 F COLONY, NEAR SHA-EALAM TOLNAKA, MANINAGAR', '', '', '', '', '', 'Male', 'VAJESHIBHAI', '', '', '', '', 'Offline', '26', 40000, 10, '36000', 21000, 'Admin Portal', 'Online', '', 'Successfull', '06/18/2024', 'Pending By Account', '', 'PSI JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '15:43:25', 0, 0, 1),
(95, 2, '', 'TAHESIN JUNACH	', 'JUNACHTAHESIN56@GMAIL.COM', '9898573719', '8866129021', '', 'Gujarat', 'RAJKOT', '7/10, JUNCTION PLOT, NR MORBI HOUSE CHOK', '', '', '', '', '', 'Female', 'SULEMANBHAI', '', '', '', '', 'Offline', '26', 40000, 18, '33000', 5000, 'Admin Portal', 'Online', '', 'Successfull', '06/18/2024', 'Pending By Account', '', 'PSI JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '15:47:13', 0, 0, 1),
(96, 2, '', 'SUNILSINH CHAUHAN	', 'CHAUHANSUNILSINH413@GMAIL.COM', '9537319728', '7874292920', '', 'Gujarat', 'AHMEDABAD', 'B GHATLODIA POLICE LINE', '', '', '', '', '', 'Male', 'RANJITSINH', '', '', '', '', 'Offline', '26', 40000, 13, '35000', 11000, 'Admin Portal', 'Online', '', 'Successfull', '06/15/2024', 'Pending By Account', '', 'PSI JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '15:50:53', 0, 0, 1),
(97, 2, '', 'MAYUR ALGOTAR	', 'UNKNOWN@GMAIL.COM', '9824701224', '9725601224', '', 'Gujarat', 'AHMEDABAD', 'BHURKHI, LOTHAL, DHOLKA', '', '', '', '', '', 'Male', 'KANUBHAI', '', '', '', '', 'Offline', '26', 40000, 13, '35000', 20000, 'Admin Portal', 'Online', '', 'Successfull', '06/07/2024', 'Pending By Account', '', 'PSI JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '15:56:49', 0, 0, 1),
(98, 2, '', 'MITTAL LOLADIYA	', 'UNKNOWN@GMAIL.COM', '9510024650', '9723435573', '', 'Gujarat', 'AHMEDABAD', 'OM SAI APARTMENT, JAMALPUR', '', '', '', '', '', 'Female', 'GHANSHYAMBHAI', '', '', '', '', 'Offline', '26', 40000, 13, '35000', 11000, 'Admin Portal', 'Online', '', 'Successfull', '07/05/2024', 'Pending By Account', '', 'PSI JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '16:01:24', 0, 0, 1),
(99, 2, '', 'DHARMESH VAJA	', 'UNKNOWN@GMAIL.COM', '7600208095', '7383947670', '', 'Gujarat', 'AHMEDABAD', '25, KAMDAR NAGAR, NARANPURA', '', '', '', '', '', 'Male', 'RAJESHBHAI', '', '', '', '', 'Offline', '26', 40000, 25, '30000', 30000, 'Admin Portal', 'Online', '', 'Successfull', '05/28/2024', 'Pending By Account', '', 'PSI JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '16:13:07', 0, 0, 1),
(100, 2, '', 'TANVIR RAIS	', 'TANVIRRAIS123@GMAIL.COM', '8488801234', '9099088980', '', 'Gujarat', 'AHMEDABAD', 'DANILIMDA POLICELINE', '', '', '', '', '', 'Male', 'BOBYBHAI', '', '', '', '', 'Offline', '26', 40000, 13, '35000', 35000, 'Admin Portal', 'Online', '', 'Successfull', '05/21/2024', 'Pending By Account', '', 'PSI JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '16:15:40', 0, 0, 1),
(101, 2, '', 'MUSTAKIMKHAN SINDHI', 'SINDHIMUSTAKIM786@GMAIL.COM', '7984574325', '9099088980', '', 'Gujarat', 'AHMEDABAD', 'DANILIMDA POLICELINE', '', '', '', '', '', 'Male', 'RAHIMKHAN', '', '', '', '', 'Offline', '26', 40000, 13, '35000', 35000, 'Admin Portal', 'Online', '', 'Successfull', '05/21/2024', 'Pending By Account', '', 'PSI JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '16:19:44', 0, 0, 1),
(102, 2, '', 'NIRU GAUSWAMI	', 'NIRUGAUSWAMI060@ICLOUD.COM', '9023368263', '9974776541', '', 'Gujarat', 'AHMEDABAD', 'C/304 ARIHANT PLAZA, NEAR RANIP', '', '', '', '', '', 'Female', 'BACHUBHARTHI', '', '', '', '', 'Offline', '26', 40000, 13, '35000', 35000, 'Admin Portal', 'Online', '', 'Successfull', '05/10/2024', 'Pending By Account', '', 'PSI JUNE 2024', -1, 'khushbu@gmail.com', '2024-07-07', '16:22:29', 0, 0, 1),
(103, 1, '', 'Sumit Tanwar', 'sumitkumartanwar614@gmail.com', '8053163414', '', '', '', '', '', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '1', 160000, 25, '120000', 30000, 'Admin Portal', 'Online', '', 'Successfull', '2024-07-09', 'Approved By Account', '', 'AOC 1', -1, 'shagun@gmail.com', '2024-07-09', '16:55:11', 0, 0, 1),
(104, 1, '', 'Aarzoo', 'arzooazmi4510@gmail.com', '8882527280', '', '', '', '', '', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '1', 160000, 38, '99200', 5000, 'Admin Portal', 'Online', '', 'Successfull', '07/08/2024', 'Approved By Account', '', 'AOC 1', -1, 'shagun@gmail.com', '2024-07-09', '16:57:27', 0, 0, 1),
(105, 1, '', 'sambhavi mishra', 'shambhavim2409@gmail.com', '8740947973', '8874253000', '', 'Uttar Pradesh', 'gonda', 'h.no.awas vikas colony gonda uttar pradesh', 'h.no 560, awas vikas colony gonda uttar pradesh', '271002', '', '', '', 'Female', 'deepak mishra', '', '', '', '', 'Offline', '31', 240000, 20, '192000', 50000, 'Admin Portal', 'Online', '', 'Successfull', '07/05/2024', 'Approved By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-07-09', '17:57:32', 0, 0, 1),
(106, 1, '', 'saumya shukla', 'saumyashukla9026@gmail.com', '9519642815', '7393018262', '', 'Uttar Pradesh', 'lucknow', 'khasra no 988, bapu asha ram road kanpur road manas nagar lucknow', 'khasra no 988, bapu asha ram road kanpur road manas nagar lucknow', '', '', '', '', 'Female', 'pradeep shukla', '', '', '', '', 'Offline', '31', 240000, 20, '192000', 25000, 'Admin Portal', 'Online', '', 'Successfull', '2024-07-09', 'Approved By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-07-09', '18:01:41', 0, 0, 1),
(107, 1, '', 'rishave chowdhary', 'rishave25@gmail.com', '8076558115', '8851618632', '', '', 'DELHI', '647,sector 14,pocket 1 radhika apt,dwarka, new delhi -78', '647,sector 14,pocket 1 radhika apt,dwarka, new delhi -78', '110078', '', '', '', 'Male', 'dilip kumar choudhary', '', '', '', '', 'Offline', '1', 160000, 25, '120000', 40000, 'Admin Portal', 'Online', '', 'Successfull', '06/30/2024', 'Approved By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-07-10', '15:06:22', 0, 0, 1),
(108, 1, '', 'vishal jha ', 'vishalduttjha@gmail.com', '7678368782', '8750743446', '', 'Delhi', 'naraina', 'cb-63 naraina new delhi 110028', 'cb-63 naraina new delhi 110028', '110028', '', '', '', 'Male', 'ajendra kishore jha', '', '', '', '', 'Offline', '1', 160000, 50, '80000', 20000, 'Admin Portal', 'Online', '', 'Successfull', '06/26/2024', 'Approved By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-07-10', '15:34:13', 0, 0, 1),
(109, 1, '', 'sonu kumar', '1646sonukr@gmail.com', '9810509958', '9810509958', '', 'Delhi', 'baprola', 'c-3/440 a, nangli vihar ext, baprola', 'c-3/440 a, nangli vihar ext, baprola', '110043', '', '', '', 'Male', 'shambhu prasad', '', '', '', '', 'Offline', '30', 200000, 35, '130000', 130000, 'Admin Portal', 'Online', '', 'Successfull', '06/15/2024', 'Pending By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-07-10', '15:41:12', 0, 0, 1),
(110, 1, '', 'rahul dinkar', 'rahuldinkar415@gmail.com', '6266821371', '9424833544', '', 'Madhya Pradesh', 'neemuch', 'house no 7 namdev colony station road jawad dist neemuch', 'house no 7 namdev colony station road jawad dist neemuch', '458330', '', '', '', 'Male', 'virendar singh dinkar', '', '', '', '', 'Offline', '1', 160000, 39, '97600', 100000, 'Admin Portal', 'Online', '', 'Successfull', '06/25/2024', 'Approved By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-07-10', '15:46:59', 0, 0, 1),
(111, 1, '', 'anshu gupta', 'anshu.h.gupta@gmail.com', '9330988121', '7003152023', '', 'West Bengal', 'kolkata', '120/d,manicktala main road kolkata', '120/d,manicktala main road kolkata', '700054', '', '', '', 'Male', 'sanjoy kumar gupta', '', '', '', '', 'Offline', '1', 160000, 19, '129600', 65000, 'Admin Portal', 'Online', '', 'Successfull', '06/26/2024', 'Approved By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-07-10', '15:56:51', 0, 0, 1),
(112, 1, '', 'sushmita', 'sk2553901@gmail.com', '9910721480', '9625189618', '', 'Delhi', 'delhi', 'r k puram sec 2 ', 'r k puram sec 2 ', '110022', '', '', '', 'Female', ' ramdev', '', '', '', '', 'Online', '1', 90000, 33, '60300', 30000, 'Admin Portal', 'Online', '', 'Successfull', '05/20/2024', 'Approved By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-07-10', '17:15:24', 0, 0, 1),
(113, 1, '', 'raj mishra', 'rajmishra936845@gmail.com', '9368454488', '8433254364', '', 'Delhi', 'delhi', 'cb 359 naraina ring road new delhi', 'cb 359 naraina ring road new delhi', '110028', '', '', '', 'Male', 'satya mishra', '', '', '', '', 'Offline', '30', 200000, 40, '120000', 20000, 'Admin Portal', 'Online', '', 'Successfull', '05/17/2024', 'Approved By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-07-10', '17:21:21', 0, 0, 1),
(114, 1, '', 'aaliya', 'aliyashofiq@gmail.com', '9175754790', '9175754790', '', 'Telangana', 'hyderabad', 'hyderabad', 'hyderabad', '500001', '', '', '', 'Male', 'shofiq', '', '', '', '', 'Offline', '30', 200000, 20, '160000', 5000, 'Admin Portal', 'Online', '', 'Successfull', '06/24/2024', 'Approved By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-07-11', '18:00:00', 0, 0, 1),
(115, 1, '', 'pramod nagda', 'pramodpurohit@gmail.com', '9755361507', '9755361507', '', 'Madhya Pradesh', 'jawad', 'jawad', 'jawad', '480001', '', '', '', 'Male', 'kawai nagda', '', '', '', '', 'Offline', '1', 160000, 37, '100800', 2000, 'Admin Portal', 'Online', '', 'Successfull', '2024-07-11', 'Approved By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-07-11', '18:03:08', 0, 0, 1),
(116, 1, '', 'himanshu sharma', 'pachaurihimanshu1170@gmail.com', '8595948959', '8595948959', '', 'Uttar Pradesh', 'mathura', 'mathura', 'mathura', '', '', '', '', 'Female', 'sanjiv sharma', '', '', '', '', 'Offline', '1', 160000, 50, '80000', 1, 'Admin Portal', 'Online', '', 'Successfull', '2024-07-11', 'Approved By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-07-11', '18:06:08', 0, 0, 1),
(117, 1, '', 'labhansh gahlot', 'labhanshgahlot@gmail.com', '7078453093', '7078453093', '', 'Uttar Pradesh', 'bijnor', 'seer vasu chand,bijnor', 'seer vasu chand,bijnor', '246722', '', '', '', 'Male', 'subhash gahlot', '', '', '', '', 'Offline', '1', 160000, 31, '110400', 5000, 'Admin Portal', 'Online', '', 'Successfull', '2024-07-13', 'Approved By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-07-13', '12:20:05', 0, 0, 1),
(118, 1, '', 'pranjal ', 'pranjalab@gmail.com', '9821960327', '9821960327', '', 'Delhi', 'delhi', 'delhi', 'delhi', '', '', '', '', 'Male', 'shekhar', '', '', '', '', 'Offline', '1', 160000, 25, '120000', 30000, 'Admin Portal', 'Online', '', 'Successfull', '2024-07-13', 'Pending By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-07-13', '17:16:38', 0, 0, 1),
(119, 1, '', 'KHUSHI', 'Khushiirajain@gmail.com', '9991118882', '', '', '', 'Gurugram', '', '', '', '', '', '', 'Female', '', '', '', '', '', 'Offline', '1', 160000, 25, '120000', 40000, 'Admin Portal', 'Online', '', 'Successfull', '2024-07-15', 'Pending By Account', '', 'AOC 1', -1, 'shagun@gmail.com', '2024-07-15', '12:35:17', 0, 0, 1),
(120, 1, '', 'Manish Verma', 'mverm1979@gmail.com', '9140546257', '', '', '', 'Basti', '', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '1', 160000, 46, '87000', 5000, 'Admin Portal', 'Online', '', 'Successfull', '07/14/2024', 'Pending By Account', '', 'AOC 1', -1, 'shagun@gmail.com', '2024-07-15', '12:37:58', 0, 0, 1),
(121, 1, '', 'Shivalik', 'sgofficial1104@gmail.com', '8920066279', '', '', '', '', '', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '1', 160000, 25, '120000', 5000, 'Admin Portal', 'Online', '', 'Successfull', '07/13/2024', 'Pending By Account', '', 'AOC 1', -1, 'shagun@gmail.com', '2024-07-15', '13:05:36', 0, 0, 1),
(122, 1, '', 'narayan sharma', '1372narayan@gmail.com', '7792903727', '6367527017', '', 'Rajasthan', 'bundi', 'tehsil-keshavraj patan, district bundi, rajasthan', 'tehsil-keshavraj patan, district bundi, rajasthan', '', '', '', '', 'Male', 'dharmendra sharma', '', '', '', '', 'Offline', '1', 160000, 37, '100800', 5000, 'Admin Portal', 'Online', '', 'Successfull', '07/16/2024', 'Approved By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-07-16', '12:03:56', 0, 0, 1),
(123, 1, '', 'shubham kumar', 'shubhamchahd218@gmail.com', '7015481782', '8984491244', '', 'Haryana', 'jind', 'upo baroda,jind,haryana', 'upo baroda,jind,haryana', '', '', '', '', 'Male', 'suresh kumar', '', '', '', '', 'Offline', '1', 160000, 50, '80000', 2000, 'Admin Portal', 'Online', '', 'Successfull', '07/17/2024', 'Approved By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-07-18', '16:51:02', 0, 0, 1),
(124, 1, '', 'Gargi Sharma', 'gargi12062004@gmail.com', '8287035409', '', '', '', '', '', '', '', '', '', '', 'Female', '', '', '', '', '', 'Offline', '1', 160000, 38, '100000', 100000, 'Admin Portal', 'Online', '', 'Successfull', '07/17/2024', 'Pending By Account', '', 'AOC 1', -1, 'shagun@gmail.com', '2024-07-19', '12:54:46', 0, 0, 1),
(125, 1, '', 'Yogesh Beniwal', 'beniwalyogesh20@gmail.com', '9315019026', '', '', '', '', '', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '1', 160000, 38, '100000', 10000, 'Admin Portal', 'Online', '', 'Successfull', '2024-07-22', 'Pending By Account', '', 'AOC 1', -1, 'shagun@gmail.com', '2024-07-22', '16:24:03', 0, 0, 1),
(126, 1, '', 'Anshu', 'dabasanshu295@gmail.com', '9971375818', '', '', '', '', '', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '1', 160000, 28, '115000', 115000, 'Admin Portal', 'Online', '', 'Successfull', '2024-07-23', 'Pending By Account', '', 'AOC 1', -1, 'shagun@gmail.com', '2024-07-23', '16:39:17', 0, 0, 1),
(127, 1, '', 'anmol raj', 'anmolraj2952005@gmail.com', '7004273051', '9319315147', '', 'Delhi', 'govindpuri', '452/2, first floor, gali no 5, govindpuri, kalkaji', '452/2, first floor, gali no 5, govindpuri, kalkaji', '', '', '', '', 'Male', 'abhay kumar mrityunjay', '', '', '', '', 'Offline', '31', 240000, 33, '160800', 50000, 'Admin Portal', 'Online', '', 'Successfull', '2024-07-24', 'Approved By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-07-24', '15:43:40', 0, 0, 1);
INSERT INTO `student_admission` (`ID`, `BranchID`, `RollNo`, `Name`, `Email`, `PhoneNumber`, `AlternativeNumber`, `Country`, `State`, `City`, `Address`, `PostalAddress`, `Pin`, `ProfilePicture`, `IDProof`, `DOB`, `Gender`, `FatherHusbandName`, `ParentMobile`, `CollegeSchool`, `YearClass`, `Degree`, `Mode`, `Courses`, `TotalStructuredFee`, `ScholarshipProvided`, `TotalPaybleFee`, `FeestobePaid`, `Source`, `PaymentMode`, `TransactionID`, `PaymentStatus`, `AdmissionDate`, `AdmissionStatus`, `PaymentDate`, `temp_batch`, `LeadOwner`, `CreatedBy`, `CreatedDate`, `CreatedTime`, `Refunded`, `Dropped`, `IsActive`) VALUES
(128, 1, '', 'rana mondal', 'mondalrana@gmail.com', '8597311405', '8597311405', '', 'West Bengal', 'parganas', 'goaldah,p.s. swarupnagar,dist-north 24 parganas,west bengal', 'goaldah,p.s. swarupnagar,dist-north 24 parganas,west bengal', '743427', '', '', '', 'Male', 'golam kibria mondal', '', '', '', '', 'Offline', '1', 160000, 50, '80000', 1000, 'Admin Portal', 'Online', '', 'Successfull', '07/03/2024', 'Approved By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-07-25', '11:23:22', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_book`
--

CREATE TABLE `student_book` (
  `ID` int(11) NOT NULL,
  `AdmissionID` int(11) NOT NULL,
  `Course` int(11) NOT NULL,
  `CourseBooks` varchar(50) NOT NULL,
  `PostalAddress` varchar(256) NOT NULL DEFAULT '',
  `TrackingID` varchar(200) NOT NULL DEFAULT '',
  `Status` varchar(256) NOT NULL DEFAULT 'Placed',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL DEFAULT '',
  `Mobile` varchar(50) NOT NULL DEFAULT '',
  `Email` varchar(50) NOT NULL DEFAULT '',
  `UserType` varchar(100) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_enrollment`
--

CREATE TABLE `student_enrollment` (
  `ID` int(11) NOT NULL,
  `AdmissionID` varchar(256) NOT NULL DEFAULT '',
  `Email` varchar(256) NOT NULL,
  `Course` varchar(256) NOT NULL,
  `Batch` varchar(50) NOT NULL DEFAULT 'Old Batch',
  `Mode` varchar(256) NOT NULL,
  `TotalStructuredFee` int(11) NOT NULL DEFAULT -1,
  `ScholarshipProvided` int(11) NOT NULL DEFAULT 0,
  `TotalPaybleFee` int(11) NOT NULL,
  `CreatedBy` varchar(256) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `TempSrNo` varchar(12) NOT NULL DEFAULT '-1',
  `IsActive` int(11) NOT NULL DEFAULT 1,
  `Refunded` int(11) NOT NULL DEFAULT 0,
  `Dropped` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_enrollment`
--

INSERT INTO `student_enrollment` (`ID`, `AdmissionID`, `Email`, `Course`, `Batch`, `Mode`, `TotalStructuredFee`, `ScholarshipProvided`, `TotalPaybleFee`, `CreatedBy`, `CreatedDate`, `CreatedTime`, `TempSrNo`, `IsActive`, `Refunded`, `Dropped`) VALUES
(1, '1', 'kkkumar@gmail.com', '2', 'PSI 6', 'Offline', 40000, 0, 40000, 'kanubhai@gmail.com', '2024-06-07', '15:55:40', '-1', 1, 0, 0),
(2, '2', 'utsavsvnus@gmail.com', '16', 'PSI - 6 ', 'Offline', 45000, 5, 42750, 'kanubhai@gmail.com', '2024-06-08', '13:25:26', '-1', 1, 0, 0),
(3, '3', 'komal@gmail.com', '26', 'PSI June', 'Offline', 43000, 5, 40850, 'jitendra@praajasv.com', '2024-06-10', '14:19:02', '-1', 1, 0, 0),
(4, '4', 'ZSdsrgdfhg@gmail.com', '19', 'AN 4', 'Offline', 65000, 5, 61750, 'JITENDRA@PRAAJASV.COM', '2024-06-10', '15:33:29', '-1', 1, 0, 0),
(5, '9', 'sdhruvi338@gmail.com', '19', 'AN 4', 'Offline', 65000, 0, 65000, 'JITENDRA@PRAAJASV.COM', '2024-06-12', '12:13:51', '-1', 1, 0, 0),
(6, '8', 'rathodgopal70.gr@gmail.com', '29', 'GPSC MAIN 2024 AHMEDABAD', 'Offline', 30000, 50, 15000, 'JITENDRA@PRAAJASV.COM', '2024-06-12', '12:15:51', '-1', 1, 0, 0),
(7, '7', 'gandhidhruvish62@gmail.com', '20', 'AN-4', 'Offline', 55000, 0, 55000, 'JITENDRA@PRAAJASV.COM', '2024-06-12', '12:16:26', '-1', 1, 0, 0),
(8, '15', 'isumitpandey08@gmail.com', '1', 'AOC 1', 'Online', 90000, 11, 80100, 'yogendra@gmail.com', '2024-06-13', '16:54:48', '-1', 1, 0, 0),
(9, '6', 'Nirdoshyadav984@gmail.com', '1', 'AOC 1', 'Offline', 160000, 0, 160000, 'yogendra@gmail.com', '2024-06-13', '16:56:51', '-1', 1, 0, 0),
(10, '5', 'ankitkumar7234965727@gmail.com', '1', 'AOC 1', 'Offline', 160000, 37, 100800, 'yogendra@gmail.com', '2024-06-13', '16:59:57', '-1', 1, 0, 0),
(11, '17', 'kuldeepkhatana6064@gmail.com', '27', 'CONSTABLE JUNE 2024', 'Offline', 20000, 0, 20000, 'jitendra@praajasv.com', '2024-06-14', '17:08:56', '-1', 1, 0, 0),
(12, '25', 'hasabavaghela2106@gmail.com', '19', 'AN 4', 'Offline', 65000, 0, 65000, 'jitendra@praajasv.com', '2024-06-17', '16:27:43', '-1', 1, 0, 0),
(13, '24', 'mahipatsinhchauhan07@gmail.com', '26', 'PSI JUNE 2024', 'Offline', 40000, 13, 35000, 'jitendra@praajasv.com', '2024-06-17', '16:28:18', '-1', 1, 0, 0),
(14, '23', 'dezyravat39055@gmail.com', '26', 'PSI JUNE 2024', 'Offline', 40000, 12, 35200, 'jitendra@praajasv.com', '2024-06-17', '16:29:26', '-1', 1, 0, 0),
(15, '22', 'aifaazpathan@gmail.com', '27', 'CONSTABLE JUNE 2024', 'Offline', 20000, 0, 20000, 'jitendra@praajasv.com', '2024-06-17', '16:30:10', '-1', 1, 0, 0),
(16, '21', 'rahilkhanpathan0313@gmail.com', '27', 'CONSTABLE JUNE 2024', 'Offline', 20000, 0, 20000, 'jitendra@praajasv.com', '2024-06-17', '16:30:43', '-1', 1, 0, 0),
(17, '36', 'N/A', '1', 'AOC 1', 'Offline', 160000, 44, 90000, 'yogendra@gmail.com', '2024-06-27', '19:29:29', '-1', 1, 0, 0),
(18, '35', 'N/A', '1', 'AOC 1', 'Offline', 160000, 31, 110000, 'yogendra@gmail.com', '2024-06-27', '19:30:26', '-1', 1, 0, 0),
(19, '57', 'N/A', '1', 'AOC 1', 'Offline', 160000, 25, 120000, 'yogendra@gmail.com', '2024-06-27', '19:32:54', '-1', 1, 0, 0),
(20, '37', 'N/A', '1', 'AOC 1', 'Offline', 160000, 38, 100000, 'yogendra@gmail.com', '2024-06-27', '19:34:00', '-1', 1, 0, 0),
(21, '34', 'N/A', '1', 'AOC 1', 'Offline', 160000, 19, 130000, 'yogendra@gmail.com', '2024-06-27', '19:35:47', '-1', 1, 0, 0),
(22, '48', 'N/A', '1', 'AOC 1', 'Offline', 160000, 38, 100000, 'yogendra@gmail.com', '2024-06-27', '19:37:42', '-1', 1, 0, 0),
(23, '54', 'N/A', '1', 'AOC 1', 'Offline', 160000, 25, 120000, 'yogendra@gmail.com', '2024-06-27', '19:38:47', '-1', 1, 0, 0),
(24, '59', 'N/A', '1', 'AOC 1', 'Offline', 160000, 43, 91000, 'yogendra@gmail.com', '2024-06-27', '19:39:56', '-1', 1, 0, 0),
(25, '47', 'N/A', '1', 'AOC 1', 'Online', 90000, -13, 102000, 'yogendra@gmail.com', '2024-06-27', '19:44:40', '-1', 1, 0, 0),
(26, '58', 'N/A', '1', 'AOC 1', 'Online', 90000, 17, 75000, 'yogendra@gmail.com', '2024-06-27', '19:46:52', '-1', 1, 0, 0),
(27, '53', 'N/A', '1', 'AOC 1', 'Offline', 160000, 31, 110000, 'yogendra@gmail.com', '2024-06-29', '10:22:33', '-1', 1, 0, 0),
(28, '19', 'shubhamtidhiwal3259@gmail.com', '1', 'AOC 1', 'Online', 90000, 12, 79200, 'yogendra@gmail.com', '2024-06-29', '10:23:31', '-1', 1, 0, 0),
(29, '49', 'N/A', '1', 'AOC 1', 'Offline', 160000, 44, 90000, 'yogendra@gmail.com', '2024-06-29', '10:23:58', '-1', 1, 0, 0),
(30, '50', 'N/A', '1', 'AOC 1', 'Offline', 160000, 25, 120000, 'yogendra@gmail.com', '2024-06-29', '10:25:02', '-1', 1, 0, 0),
(31, '31', 'samridhkhatri2110@gmail.com', '1', 'AOC 1', 'Offline', 160000, 25, 120000, 'yogendra@gmail.com', '2024-06-29', '10:26:06', '-1', 1, 0, 0),
(32, '51', 'N/A', '1', 'AOC 1', 'Offline', 160000, 38, 100000, 'yogendra@gmail.com', '2024-06-29', '10:27:07', '-1', 1, 0, 0),
(33, '32', 'rashishah2910@gmail.com', '1', 'AOC 1', 'Offline', 160000, 25, 120000, 'yogendra@gmail.com', '2024-06-29', '10:27:51', '-1', 1, 0, 0),
(34, '33', 'saumya1sinha@gmail.com', '1', 'AOC 1', 'Offline', 160000, 31, 110400, 'yogendra@gmail.com', '2024-06-29', '10:28:31', '-1', 1, 0, 0),
(35, '103', 'sumitkumartanwar614@gmail.com', '1', 'AOC 1', 'Offline', 160000, 25, 120000, 'yogendra@gmail.com', '2024-07-09', '19:18:24', '-1', 1, 0, 0),
(36, '107', 'rishave25@gmail.com', '1', 'AOC 1', 'Offline', 160000, 25, 120000, 'yogendra@gmail.com', '2024-07-11', '16:28:27', '-1', 1, 0, 0),
(37, '60', 'N/A', '1', 'AOC 1', 'Offline', 160000, 38, 100000, 'yogendra@gmail.com', '2024-07-11', '16:30:47', '-1', 1, 0, 0),
(38, '63', 'lakhanmahero7088@gmail.com', '1', 'AOC 1', 'Offline', 160000, 50, 80000, 'yogendra@gmail.com', '2024-07-11', '16:34:21', '-1', 1, 0, 0),
(39, '111', 'anshu.h.gupta@gmail.com', '1', 'AOC 1', 'Offline', 160000, 19, 129600, 'yogendra@gmail.com', '2024-07-11', '16:35:27', '-1', 1, 0, 0),
(40, '44', 'N/A', '1', 'AOC 1', 'Offline', 160000, 38, 100000, 'yogendra@gmail.com', '2024-07-11', '16:36:11', '-1', 1, 0, 0),
(41, '105', 'shambhavim2409@gmail.com', '31', 'AOC 1', 'Offline', 240000, 20, 192000, 'yogendra@gmail.com', '2024-07-11', '16:37:46', '-1', 1, 0, 0),
(42, '106', 'saumyashukla9026@gmail.com', '31', 'AOC 1', 'Offline', 240000, 20, 192000, 'yogendra@gmail.com', '2024-07-11', '16:39:07', '-1', 1, 0, 0),
(43, '52', 'N/A', '30', 'AOC 1', 'Offline', 200000, 20, 160000, 'yogendra@gmail.com', '2024-07-11', '16:39:56', '-1', 1, 0, 0),
(44, '112', 'sk2553901@gmail.com', '1', 'AOC 1', 'Online', 90000, 33, 60300, 'yogendra@gmail.com', '2024-07-11', '16:40:29', '-1', 1, 0, 0),
(45, '42', 'N/A', '1', 'AOC 1', 'Offline', 160000, 0, 160000, 'yogendra@gmail.com', '2024-07-11', '16:41:50', '-1', 1, 0, 0),
(46, '113', 'rajmishra936845@gmail.com', '30', 'AOC 1', 'Offline', 200000, 40, 120000, 'yogendra@gmail.com', '2024-07-11', '16:42:51', '-1', 1, 0, 0),
(47, '29', 'guptaanupam2312@gmail.com', '30', 'AOC 1', 'Offline', 200000, 20, 160000, 'yogendra@gmail.com', '2024-07-11', '16:43:25', '-1', 1, 0, 0),
(48, '110', 'rahuldinkar415@gmail.com', '1', 'AOC 1', 'Offline', 160000, 39, 97600, 'yogendra@gmail.com', '2024-07-11', '16:45:01', '-1', 1, 0, 0),
(49, '28', '1646sonukr@gmail.com', '30', 'AOC 1', 'Offline', 200000, 35, 130000, 'yogendra@gmail.com', '2024-07-11', '16:46:02', '-1', 1, 0, 0),
(50, '108', 'vishalduttjha@gmail.com', '1', 'AOC 1', 'Offline', 160000, 50, 80000, 'yogendra@gmail.com', '2024-07-11', '16:46:43', '-1', 1, 0, 0),
(51, '27', 'as2003.anuj@gmail.com', '1', 'AOC 1', 'Offline', 160000, 38, 100000, 'yogendra@gmail.com', '2024-07-11', '16:47:47', '-1', 1, 0, 0),
(52, '16', 'rikukhan.871@gmail.com', '30', 'AOC 1', 'Offline', 200000, 0, 200000, 'yogendra@gmail.com', '2024-07-11', '16:49:02', '-1', 1, 0, 0),
(53, '30', 'koshivuikey123@gmail.com', '30', 'AOC 1', 'Offline', 200000, 40, 120000, 'yogendra@gmail.com', '2024-07-11', '16:49:48', '-1', 1, 0, 0),
(54, '26', 'pachauriansh10@gmail.com', '1', 'AOC 1', 'Offline', 160000, 44, 89600, 'yogendra@gmail.com', '2024-07-11', '16:52:28', '-1', 1, 0, 0),
(55, '62', 'vedantshelke37@gmail.com', '1', 'AOC 1', 'Offline', 160000, 37, 100800, 'yogendra@gmail.com', '2024-07-11', '16:54:43', '-1', 1, 0, 0),
(56, '65', 'divysatyarthi84@gmail.com', '1', 'AOC 1', 'Offline', 160000, 25, 120000, 'yogendra@gmail.com', '2024-07-11', '16:56:07', '-1', 1, 0, 0),
(57, '64', 'Panghalrewa77@gmail.com', '1', 'AOC 1', 'Offline', 160000, 25, 120000, 'yogendra@gmail.com', '2024-07-11', '16:56:48', '-1', 1, 0, 0),
(58, '67', 'kaashvi2610@gmail.com', '1', 'AOC 1', 'Offline', 160000, 38, 99200, 'yogendra@gmail.com', '2024-07-11', '16:58:08', '-1', 1, 0, 0),
(59, '68', 'suvani2123ps@rla.du.ac.in', '1', 'AOC 1', 'Offline', 160000, 38, 99200, 'yogendra@gmail.com', '2024-07-11', '17:00:11', '-1', 1, 0, 0),
(60, '66', 'jc8195283@gmail.com', '30', 'AOC 1', 'Offline', 200000, 30, 140000, 'yogendra@gmail.com', '2024-07-11', '17:03:15', '-1', 1, 0, 0),
(61, '104', 'arzooazmi4510@gmail.com', '1', 'AOC 1', 'Offline', 160000, 38, 99200, 'yogendra@gmail.com', '2024-07-11', '17:03:40', '-1', 1, 0, 0),
(62, '114', 'aliyashofiq@gmail.com', '30', 'AOC 1', 'Offline', 200000, 20, 160000, 'yogendra@gmail.com', '2024-07-11', '18:15:51', '-1', 1, 0, 0),
(63, '115', 'pramodpurohit@gmail.com', '1', 'AOC 1', 'Offline', 160000, 37, 100800, 'yogendra@gmail.com', '2024-07-11', '18:17:15', '-1', 1, 0, 0),
(64, '116', 'pachaurihimanshu1170@gmail.com', '1', 'AOC 1', 'Offline', 160000, 50, 80000, 'yogendra@gmail.com', '2024-07-11', '18:18:05', '-1', 1, 0, 0),
(65, '41', 'N/A', '1', 'AOC 1', 'Offline', 160000, 25, 120000, 'yogendra@gmail.com', '2024-07-11', '18:47:48', '-1', 1, 0, 0),
(66, '38', 'N/A', '1', 'AOC 1', 'Offline', 160000, 56, 70000, 'yogendra@gmail.com', '2024-07-11', '18:49:08', '-1', 1, 0, 0),
(67, '45', 'N/A', '1', 'AOC 1', 'Offline', 160000, 25, 120000, 'yogendra@gmail.com', '2024-07-11', '18:50:34', '-1', 1, 0, 0),
(68, '12', 'studentbook0987@gmail.com', '1', 'AOC 1', 'Offline', 160000, 0, 160000, 'yogendra@gmail.com', '2024-07-11', '18:54:55', '-1', 1, 0, 0),
(69, '46', 'N/A', '33', 'AOC 1', 'Offline', 50000, 0, 50000, 'yogendra@gmail.com', '2024-07-11', '18:58:20', '-1', 1, 0, 0),
(70, '40', 'N/A', '1', 'AOC 1', 'Offline', 160000, 25, 120000, 'yogendra@gmail.com', '2024-07-11', '19:02:25', '-1', 1, 0, 0),
(71, '43', 'N/A', '1', 'AOC 1', 'Offline', 160000, 25, 120000, 'yogendra@gmail.com', '2024-07-11', '19:03:18', '-1', 1, 0, 0),
(72, '13', 'jaiswalshyam2006@gmail.com', '30', 'AOC 1', 'Offline', 200000, 0, 200000, 'yogendra@gmail.com', '2024-07-11', '19:04:40', '-1', 1, 0, 0),
(73, '14', 'ayush@gmail.com', '1', 'AOC 1', 'Offline', 160000, 0, 160000, 'yogendra@gmail.com', '2024-07-11', '19:06:57', '-1', 1, 0, 0),
(74, '39', 'N/A', '1', 'AOC 1', 'Offline', 160000, 25, 120000, 'yogendra@gmail.com', '2024-07-18', '18:59:00', '-1', 1, 0, 0),
(75, '117', 'labhanshgahlot@gmail.com', '1', 'AOC 1', 'Offline', 160000, 31, 110400, 'yogendra@gmail.com', '2024-07-19', '14:42:24', '-1', 1, 0, 0),
(76, '127', 'anmolraj2952005@gmail.com', '31', 'AOC 1', 'Offline', 240000, 33, 160800, 'yogendra@gmail.com', '2024-07-24', '16:43:38', '-1', 1, 0, 0),
(77, '122', '1372narayan@gmail.com', '1', 'AOC 1', 'Offline', 160000, 37, 100800, 'yogendra@gmail.com', '2024-07-24', '18:29:18', '-1', 1, 0, 0),
(78, '123', 'shubhamchahd218@gmail.com', '1', 'AOC 1', 'Offline', 160000, 50, 80000, 'yogendra@gmail.com', '2024-07-24', '18:32:00', '-1', 1, 0, 0),
(79, '128', 'mondalrana@gmail.com', '1', 'AOC 1', 'Offline', 160000, 50, 80000, 'admin@praajasv.com', '2024-07-25', '17:23:47', '-1', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_fee`
--

CREATE TABLE `student_fee` (
  `ID` int(11) NOT NULL,
  `AdmissionID` int(11) NOT NULL DEFAULT -1,
  `StudentName` varchar(200) NOT NULL,
  `StudentEmail` varchar(200) NOT NULL,
  `StudentPhoneNumber` varchar(200) NOT NULL,
  `Courses` varchar(256) NOT NULL DEFAULT '',
  `CoursesBatch` varchar(256) NOT NULL DEFAULT '',
  `Mode` varchar(256) NOT NULL DEFAULT '',
  `TotalStructuredFee` int(11) NOT NULL DEFAULT -1,
  `ScholarshipProvided` int(11) NOT NULL DEFAULT 0,
  `FeestobePaid` int(11) NOT NULL DEFAULT -1,
  `StudentFee` varchar(200) NOT NULL,
  `InvoiceCheck` varchar(200) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL,
  `CreatedTime` varchar(50) NOT NULL,
  `IsActive` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_fee_reminder`
--

CREATE TABLE `student_fee_reminder` (
  `ID` int(11) NOT NULL,
  `AdmissionID` int(11) NOT NULL DEFAULT -1,
  `Amount` varchar(256) NOT NULL DEFAULT '',
  `Status` varchar(50) NOT NULL DEFAULT 'To Be Collected',
  `ReminderDate` varchar(256) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_fee_reminder`
--

INSERT INTO `student_fee_reminder` (`ID`, `AdmissionID`, `Amount`, `Status`, `ReminderDate`, `CreatedDate`, `CreatedTime`, `CreatedBy`, `IsActive`) VALUES
(1, 1, '0', 'Delayed', '2024-06-17', '2024-06-07', '16:27:50', 'admin@praajasv.com', 1),
(2, 3, '20000', 'Delayed', '2024-07-04', '2024-06-10', '14:21:06', 'bhavi@praajasv.com', 1),
(3, 9, '34000', 'Collected', '2024-06-15', '2024-06-13', '16:20:35', 'bhavi@praajasv.com', 1),
(4, 9, '30000', 'Delayed', '2024-06-22', '2024-06-13', '16:21:31', 'bhavi@praajasv.com', 1),
(5, 7, '45000', 'Delayed', '2024-06-17', '2024-06-13', '16:22:29', 'bhavi@praajasv.com', 1),
(6, 17, '19000', 'Delayed', '2024-06-17', '2024-06-14', '17:15:50', 'bhavi@praajasv.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_payment`
--

CREATE TABLE `student_payment` (
  `ID` int(11) NOT NULL,
  `FeeID` int(11) NOT NULL DEFAULT -1,
  `StudentName` varchar(200) NOT NULL,
  `StudentEmail` varchar(200) NOT NULL,
  `StudentPhoneNumber` varchar(200) NOT NULL,
  `Courses` varchar(256) NOT NULL DEFAULT '',
  `Mode` varchar(256) NOT NULL DEFAULT '',
  `StudentFee` varchar(200) NOT NULL,
  `TransactionID` varchar(256) NOT NULL DEFAULT '',
  `PaymentStatus` varchar(256) NOT NULL DEFAULT '',
  `PostalAddress` varchar(256) NOT NULL DEFAULT '',
  `PaymentMode` varchar(256) NOT NULL DEFAULT 'Link Generated',
  `CounsellorEmail` varchar(256) NOT NULL DEFAULT 'admin@tathastuics.com',
  `CreatedDate` varchar(50) NOT NULL,
  `CreatedTime` varchar(50) NOT NULL,
  `IsActive` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_remark`
--

CREATE TABLE `student_remark` (
  `ID` int(11) NOT NULL,
  `AdmissionID` int(11) NOT NULL DEFAULT -1,
  `Remarks` varchar(256) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_remark`
--

INSERT INTO `student_remark` (`ID`, `AdmissionID`, `Remarks`, `CreatedDate`, `CreatedTime`, `CreatedBy`, `IsActive`) VALUES
(1, 34, '1.3 LAKAH<br>QR CODE (2000+88000 ASK YOGI)<br>', '2024-06-26', '17:27:05', 'anjali@gmail.com', 1),
(2, 35, '1.10 LAKH <br>QR CODE(2K+49K)<br>9 BOOKS AND BAG', '2024-06-26', '17:27:05', 'anjali@gmail.com', 1),
(3, 36, '90K WITHOUT CSAT<br>QR CODE<br>', '2024-06-26', '17:27:05', 'anjali@gmail.com', 1),
(4, 37, '1.00 LAKH<br>QR CODE <br>', '2024-06-26', '17:27:05', 'anjali@gmail.com', 1),
(5, 38, 'FROM 30K HISTORY MODULE FOR 1 YEAR<br>CASH<br>', '2024-06-26', '17:27:05', 'anjali@gmail.com', 1),
(6, 39, '1.2 LAKH FOR 1 YEAR MODULE<br>CASH<br>8 BOOKS', '2024-06-26', '17:27:05', 'deepika@gmail.com', 1),
(7, 40, '1.2 LAKH FOR 1 YEAR MODULE<br>QR CODE<br>9 BOOKS GIVEN', '2024-06-26', '17:27:05', 'anjali@gmail.com', 1),
(8, 41, '1.2 LAKH FOR 1 YEAR MODULE<br>QR CODE<br>', '2024-06-26', '17:27:05', 'anjali@gmail.com', 1),
(9, 42, '1.6 LAKH<br>(10K + 30K) QR CODE<br>', '2024-06-26', '17:27:05', 'deepika@gmail.com', 1),
(10, 43, '1.2 LAKH FOR 1 YEAR MODULE<br>QR CODE<br>', '2024-06-26', '17:27:05', 'anjali@gmail.com', 1),
(11, 44, '1 LAKH<br>CASH<br>9 BOOKS GIVEN', '2024-06-26', '17:27:05', 'deepika@gmail.com', 1),
(12, 45, '1.2 LAKH FOR 1 YEAR MODULE<br>QR CODE<br>', '2024-06-26', '17:27:06', 'anjali@gmail.com', 1),
(13, 46, '50K FOR MENTORSHIP<br>QR CODE<br>', '2024-06-26', '17:27:06', 'anjali@gmail.com', 1),
(14, 47, '102000 FOR 1 YEAR EXCLUDING CSAT<br>QR CODE<br>', '2024-06-26', '17:27:06', 'anjali@gmail.com', 1),
(15, 48, '1 LAKH FOR 1 YEAR <br>QR CODE<br>9 BOOKS AND BAG', '2024-06-26', '17:27:06', 'anjali@gmail.com', 1),
(16, 49, '90K FOR OFFLINE 1 YEAR<br>CASH<br>', '2024-06-26', '17:27:06', 'shagun@gmail.com', 1),
(17, 50, '1.2 LAKH FOR 1 YEAR MODULE<br>QR CODE<br>9 BOOKS AND BAG', '2024-06-26', '17:27:06', 'shagun@gmail.com', 1),
(18, 51, '1 LAKH FOR 1 YEAR <br>10k QR CODE + 30k cheque <br>9 BOOKS AND BAG', '2024-06-26', '17:27:06', 'shagun@gmail.com', 1),
(19, 52, '1.6 LAKH FOR 2 YEAR MODULE<br>QR CODE<br>9 BOOKS AND BAG', '2024-06-26', '17:27:06', 'deepika@gmail.com', 1),
(20, 53, '1.1 LAKH FOR 1 YEAR MODULE<br>CASH<br>9 BOOKS AND BAG', '2024-06-26', '17:27:06', 'shagun@gmail.com', 1),
(21, 54, '1.2 LAKH FOR 1 YEAR MODULE<br>QR CODE<br>9 BOOKS AND BAG', '2024-06-26', '17:27:06', 'anjali@gmail.com', 1),
(22, 55, '70K FOR 1 YEAR ONLINE <br>UPI TO MALAHAR SIR<br>', '2024-06-26', '17:27:06', 'sonia@gmail.com', 1),
(23, 56, '<br>CASH<br>', '2024-06-26', '17:27:06', 'sonia@gmail.com', 1),
(24, 57, '1.20 LAKH<br>QR CODE<br>', '2024-06-26', '17:27:06', 'anjali@gmail.com', 1),
(25, 58, '75 THOUSAND<br>OR CODE<br>', '2024-06-26', '17:27:06', 'anjali@gmail.com', 1),
(26, 59, '91K <br>(1K+90K) QR CODE<br>', '2024-06-26', '17:27:06', 'anjali@gmail.com', 1),
(27, 60, '1.00 LAKH<br>QR CODE (10000+70000 ASK YOGI)<br>9 BOOKA AND BAG', '2024-06-26', '17:27:06', 'deepika@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_transaction`
--

CREATE TABLE `student_transaction` (
  `ID` int(11) NOT NULL,
  `InvoiceNo` int(11) NOT NULL DEFAULT -1,
  `AdmissionID` int(11) NOT NULL,
  `Course` varchar(256) NOT NULL DEFAULT '',
  `Mode` varchar(11) NOT NULL DEFAULT '',
  `Amount` int(11) NOT NULL,
  `PaymentMode` varchar(256) NOT NULL DEFAULT '',
  `Status` varchar(50) NOT NULL DEFAULT 'Approved',
  `TransactionID` varchar(256) NOT NULL DEFAULT '',
  `TransactionDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_transaction`
--

INSERT INTO `student_transaction` (`ID`, `InvoiceNo`, `AdmissionID`, `Course`, `Mode`, `Amount`, `PaymentMode`, `Status`, `TransactionID`, `TransactionDate`, `CreatedDate`, `CreatedTime`, `CreatedBy`, `IsActive`) VALUES
(1, -1, 1, '2', 'Offline', 15000, 'Cash', 'Approved', '123', '', '2024-06-07', '15:55:40', 'kanubhai@gmail.com', 1),
(2, 124, 1, '2', 'Offline', 25000, 'Cash', 'Approved', '142', '', '2024-06-07', '16:26:44', 'admin@praajasv.com', 1),
(3, -1, 2, '16', 'Offline', 10000, 'Debit Card', 'Approved', 'ap6-00123', '', '2024-06-08', '13:25:26', 'kanubhai@gmail.com', 1),
(4, -1, 3, '26', 'Offline', 15000, 'Cash', 'Approved', 'psijune123', '', '2024-06-10', '14:19:02', 'jitendra@praajasv.com', 1),
(5, 125, 4, '19', 'Offline', 40000, 'UPI', 'Approved', 'an4-000123', '', '2024-06-10', '15:33:29', 'JITENDRA@PRAAJASV.COM', 1),
(6, -1, 9, '19', 'Offline', 1000, 'UPI', 'Approved', '416492479329', '', '2024-06-12', '12:13:51', 'JITENDRA@PRAAJASV.COM', 1),
(7, 126, 8, '29', 'Offline', 15000, 'UPI', 'Approved', '416351983004', '', '2024-06-12', '12:15:51', 'JITENDRA@PRAAJASV.COM', 1),
(8, -1, 7, '20', 'Offline', 10000, 'UPI', 'Approved', '416302574634', '', '2024-06-12', '12:16:26', 'JITENDRA@PRAAJASV.COM', 1),
(9, -1, 15, '1', 'Online', 40000, 'UPI', 'Approved', '453117236392', '', '2024-06-13', '16:54:48', 'yogendra@gmail.com', 1),
(10, -1, 6, '1', 'Offline', 10000, 'UPI', 'Approved', '415635664232', '', '2024-06-13', '16:56:51', 'yogendra@gmail.com', 1),
(11, -1, 5, '1', 'Offline', 5000, 'UPI', 'Approved', '123456789', '', '2024-06-13', '16:59:57', 'yogendra@gmail.com', 1),
(12, -1, 17, '27', 'Offline', 1000, 'UPI', 'Approved', '416687997377', '', '2024-06-14', '17:08:56', 'jitendra@praajasv.com', 1),
(13, -1, 25, '19', 'Offline', 1000, 'UPI', 'Approved', '453557322853', '', '2024-06-17', '16:27:43', 'jitendra@praajasv.com', 1),
(14, -1, 24, '26', 'Offline', 35000, 'UPI', 'Approved', '416643125296', '', '2024-06-17', '16:28:18', 'jitendra@praajasv.com', 1),
(15, -1, 23, '26', 'Offline', 1000, 'UPI', 'Approved', '415970555578', '', '2024-06-17', '16:29:26', 'jitendra@praajasv.com', 1),
(16, -1, 22, '27', 'Offline', 1000, 'UPI', 'Approved', '415662994668', '', '2024-06-17', '16:30:10', 'jitendra@praajasv.com', 1),
(17, -1, 21, '27', 'Offline', 1000, 'UPI', 'Approved', '415659577648', '', '2024-06-17', '16:30:43', 'jitendra@praajasv.com', 1),
(18, -1, 36, '1', 'Offline', 30000, 'QR Code', 'Approved', '415785998979', '', '2024-06-27', '19:29:29', 'yogendra@gmail.com', 1),
(19, -1, 35, '1', 'Offline', 51000, 'QR Code', 'Approved', '3835 , 6895', '', '2024-06-27', '19:30:26', 'yogendra@gmail.com', 1),
(20, -1, 57, '1', 'Offline', 10000, 'QR Code', 'Approved', '123', '', '2024-06-27', '19:32:54', 'yogendra@gmail.com', 1),
(21, -1, 37, '1', 'Offline', 2000, 'QR Code', 'Approved', '417147992493', '', '2024-06-27', '19:34:00', 'yogendra@gmail.com', 1),
(22, -1, 34, '1', 'Offline', 90000, 'QR Code', 'Approved', '415718009759 ,417056082936', '', '2024-06-27', '19:35:47', 'yogendra@gmail.com', 1),
(23, -1, 48, '1', 'Offline', 25000, 'QR Code', 'Approved', '416855295119', '', '2024-06-27', '19:37:42', 'yogendra@gmail.com', 1),
(24, -1, 54, '1', 'Offline', 2000, 'QR Code', 'Approved', '417252531858', '', '2024-06-27', '19:38:47', 'yogendra@gmail.com', 1),
(25, -1, 59, '1', 'Offline', 91000, 'QR Code', 'Approved', '123', '', '2024-06-27', '19:39:56', 'yogendra@gmail.com', 1),
(26, -1, 47, '1', 'Online', 37000, 'QR Code', 'Approved', '417874096093 ', '', '2024-06-27', '19:44:40', 'yogendra@gmail.com', 1),
(27, -1, 58, '1', 'Online', 40000, 'QR Code', 'Approved', '123', '', '2024-06-27', '19:46:52', 'yogendra@gmail.com', 1),
(28, -1, 53, '1', 'Offline', 10000, 'Cash', 'Approved', '123', '', '2024-06-29', '10:22:33', 'yogendra@gmail.com', 1),
(29, -1, 19, '1', 'Online', 35000, 'QR Code', 'Approved', '453450120122', '', '2024-06-29', '10:23:31', 'yogendra@gmail.com', 1),
(30, -1, 49, '1', 'Offline', 10000, 'Cash', 'Approved', '123', '', '2024-06-29', '10:23:58', 'yogendra@gmail.com', 1),
(31, -1, 50, '1', 'Offline', 120000, 'QR Code', 'Approved', '417011175380', '', '2024-06-29', '10:25:02', 'yogendra@gmail.com', 1),
(32, -1, 31, '1', 'Offline', 10000, 'QR Code', 'Approved', '417013614584', '', '2024-06-29', '10:26:06', 'yogendra@gmail.com', 1),
(33, -1, 51, '1', 'Offline', 40000, 'QR Code', 'Approved', '6657,cheque', '', '2024-06-29', '10:27:07', 'yogendra@gmail.com', 1),
(34, -1, 32, '1', 'Offline', 10000, 'QR Code', 'Approved', '417035183345', '', '2024-06-29', '10:27:51', 'yogendra@gmail.com', 1),
(35, -1, 33, '1', 'Offline', 10000, 'QR Code', 'Approved', '417626234093', '', '2024-06-29', '10:28:31', 'yogendra@gmail.com', 1),
(36, 127, 9, '19', 'Offline', 30000, 'UPI', 'Approved', '417189287288', '', '2024-06-29', '17:10:31', 'jitendra@praajasv.com', 1),
(37, 128, 9, '19', 'Offline', 4000, 'UPI', 'Approved', '417187694840', '', '2024-06-29', '17:11:18', 'jitendra@praajasv.com', 1),
(38, 129, 9, '19', 'Offline', 17000, 'UPI', 'Approved', '417983744303', '', '2024-06-29', '17:11:59', 'jitendra@praajasv.com', 1),
(39, 130, 9, '19', 'Offline', 13000, 'UPI', 'Approved', '418002995207', '', '2024-06-29', '17:12:38', 'jitendra@praajasv.com', 1),
(40, -1, 103, '1', 'Offline', 30000, 'QR Code', 'Approved', '419104165855 ,419104248526', '2024-07-09', '2024-07-09', '19:18:24', 'yogendra@gmail.com', 1),
(41, -1, 33, '1', 'Offline', 30000, 'UPI', 'Pending Approval', '418386910092', '2024-07-01', '2024-07-10', '11:32:14', 'shagun@gmail.com', 1),
(42, -1, 32, '1', 'Offline', 40000, 'UPI', 'Pending Approval', '418462852232', '2024-07-02', '2024-07-10', '11:35:01', 'shagun@gmail.com', 1),
(43, -1, 31, '1', 'Offline', 30000, 'UPI', 'Pending Approval', '417735993242', '2024-06-25', '2024-07-10', '11:37:39', 'shagun@gmail.com', 1),
(44, -1, 107, '1', 'Offline', 40000, 'QR Code', 'Approved', '418254619660', '2024-07-11', '2024-07-11', '16:28:27', 'yogendra@gmail.com', 1),
(45, -1, 60, '1', 'Offline', 80000, 'QR Code', 'Approved', '417253011779', '2024-07-11', '2024-07-11', '16:30:47', 'yogendra@gmail.com', 1),
(46, -1, 63, '1', 'Offline', 1000, 'QR Code', 'Approved', '123', '2024-07-11', '2024-07-11', '16:34:21', 'yogendra@gmail.com', 1),
(47, -1, 111, '1', 'Offline', 65000, 'Net Banking', 'Approved', '417914093814', '2024-07-11', '2024-07-11', '16:35:27', 'yogendra@gmail.com', 1),
(48, -1, 44, '1', 'Offline', 20000, 'Cash', 'Approved', '123', '2024-07-11', '2024-07-11', '16:36:11', 'yogendra@gmail.com', 1),
(49, -1, 105, '31', 'Offline', 50000, 'Net Banking', 'Approved', '418720304176', '2024-07-11', '2024-07-11', '16:37:46', 'yogendra@gmail.com', 1),
(50, -1, 106, '31', 'Offline', 25000, 'Net Banking', 'Approved', 'FESYOUYG8857', '2024-07-11', '2024-07-11', '16:39:07', 'yogendra@gmail.com', 1),
(51, -1, 52, '30', 'Offline', 30000, 'QR Code', 'Approved', '417161749953', '2024-07-11', '2024-07-11', '16:39:56', 'yogendra@gmail.com', 1),
(52, -1, 112, '1', 'Online', 30000, 'Cash', 'Approved', '123', '2024-07-11', '2024-07-11', '16:40:29', 'yogendra@gmail.com', 1),
(53, -1, 42, '1', 'Offline', 40000, 'QR Code', 'Approved', '417477865528 ', '2024-07-11', '2024-07-11', '16:41:50', 'yogendra@gmail.com', 1),
(54, -1, 113, '30', 'Offline', 20000, 'Cash', 'Approved', '123', '2024-07-11', '2024-07-11', '16:42:51', 'yogendra@gmail.com', 1),
(55, -1, 29, '30', 'Offline', 160000, 'Cash', 'Approved', '123', '2024-07-11', '2024-07-11', '16:43:25', 'yogendra@gmail.com', 1),
(56, -1, 110, '1', 'Offline', 100000, 'QR Code', 'Approved', '417788400447 , 418282540109 , 418236031988', '2024-07-11', '2024-07-11', '16:45:01', 'yogendra@gmail.com', 1),
(57, -1, 28, '30', 'Offline', 20000, 'QR Code', 'Approved', '123', '2024-07-11', '2024-07-11', '16:46:02', 'yogendra@gmail.com', 1),
(58, -1, 108, '1', 'Offline', 20000, 'QR Code', 'Approved', '123', '2024-07-11', '2024-07-11', '16:46:43', 'yogendra@gmail.com', 1),
(59, -1, 27, '1', 'Offline', 50000, 'QR Code', 'Approved', '123', '2024-07-11', '2024-07-11', '16:47:47', 'yogendra@gmail.com', 1),
(60, -1, 16, '30', 'Offline', 120000, 'Net Banking', 'Approved', '123', '2024-07-11', '2024-07-11', '16:49:02', 'yogendra@gmail.com', 1),
(61, -1, 30, '30', 'Offline', 30000, 'Cash', 'Approved', '123', '2024-07-11', '2024-07-11', '16:49:48', 'yogendra@gmail.com', 1),
(62, -1, 26, '1', 'Offline', 10000, 'Cash', 'Approved', '123', '2024-07-11', '2024-07-11', '16:52:28', 'yogendra@gmail.com', 1),
(63, -1, 62, '1', 'Offline', 10000, 'QR Code', 'Approved', '417831363081', '2024-07-11', '2024-07-11', '16:54:43', 'yogendra@gmail.com', 1),
(64, -1, 65, '1', 'Offline', 10000, 'Credit Card', 'Approved', 'malhar sir', '2024-07-11', '2024-07-11', '16:56:07', 'yogendra@gmail.com', 1),
(65, -1, 64, '1', 'Offline', 10000, 'QR Code', 'Approved', '1764', '2024-07-11', '2024-07-11', '16:56:48', 'yogendra@gmail.com', 1),
(66, -1, 67, '1', 'Offline', 40000, 'QR Code', 'Approved', '7744', '2024-07-11', '2024-07-11', '16:58:08', 'yogendra@gmail.com', 1),
(67, -1, 68, '1', 'Offline', 25000, 'QR Code', 'Approved', '418688413584', '2024-07-11', '2024-07-11', '17:00:11', 'yogendra@gmail.com', 1),
(68, -1, 66, '31', 'Offline', 5000, 'QR Code', 'Approved', '123', '2024-07-11', '2024-07-11', '17:03:15', 'yogendra@gmail.com', 1),
(69, -1, 104, '1', 'Offline', 5000, 'Cash', 'Approved', '123', '2024-07-11', '2024-07-11', '17:03:40', 'yogendra@gmail.com', 1),
(70, -1, 66, '30', 'Offline', 5000, 'UPI', 'Pending Approval', '', '2024-07-04', '2024-07-11', '17:13:12', 'shagun@gmail.com', 1),
(71, -1, 64, '1', 'Offline', 30000, 'Credit Card', 'Pending Approval', '', '2024-07-10', '2024-07-11', '17:13:59', 'shagun@gmail.com', 1),
(72, -1, 62, '1', 'Offline', 30000, 'UPI', 'Pending Approval', '', '2024-07-11', '2024-07-11', '17:14:31', 'shagun@gmail.com', 1),
(73, -1, 6, '1', 'Offline', 75000, 'UPI', 'Pending Approval', '417135145556', '2024-06-19', '2024-07-11', '17:16:44', 'shagun@gmail.com', 1),
(74, -1, 114, '30', 'Offline', 5000, 'QR Code', 'Approved', '123', '2024-07-11', '2024-07-11', '18:15:51', 'yogendra@gmail.com', 1),
(75, -1, 115, '1', 'Offline', 2000, 'QR Code', 'Approved', '419037602939', '2024-07-11', '2024-07-11', '18:17:15', 'yogendra@gmail.com', 1),
(76, -1, 116, '1', 'Offline', 1, 'Cash', 'Approved', '123', '2024-07-11', '2024-07-11', '18:18:05', 'yogendra@gmail.com', 1),
(77, -1, 41, '1', 'Offline', 500, 'QR Code', 'Approved', '123', '2024-07-11', '2024-07-11', '18:47:48', 'yogendra@gmail.com', 1),
(78, -1, 38, '1', 'Offline', 30000, 'Cash', 'Approved', '123', '2024-07-11', '2024-07-11', '18:49:08', 'yogendra@gmail.com', 1),
(79, -1, 45, '1', 'Offline', 2000, 'QR Code', 'Approved', '414932685550', '2024-07-11', '2024-07-11', '18:50:34', 'yogendra@gmail.com', 1),
(80, -1, 12, '1', 'Offline', 32000, 'QR Code', 'Approved', '415794504210 , 415769597771 ,414557250554', '2024-07-11', '2024-07-11', '18:54:55', 'yogendra@gmail.com', 1),
(81, -1, 46, '33', 'Offline', 12000, 'QR Code', 'Approved', '414976871568', '2024-07-11', '2024-07-11', '18:58:20', 'yogendra@gmail.com', 1),
(82, -1, 40, '1', 'Offline', 47000, 'QR Code', 'Approved', '413949830250 , 414816673671', '2024-07-11', '2024-07-11', '19:02:25', 'yogendra@gmail.com', 1),
(83, -1, 43, '1', 'Offline', 500, 'QR Code', 'Approved', '123', '2024-07-11', '2024-07-11', '19:03:18', 'yogendra@gmail.com', 1),
(84, -1, 13, '30', 'Offline', 175000, 'Cash', 'Approved', '123', '2024-07-11', '2024-07-11', '19:04:40', 'yogendra@gmail.com', 1),
(85, -1, 14, '1', 'Offline', 110000, 'QR Code', 'Approved', '451512749488 , 414985854011', '2024-07-11', '2024-07-11', '19:06:57', 'yogendra@gmail.com', 1),
(86, -1, 19, '1', 'Online', 25000, 'UPI', 'Pending Approval', '419649596493', '2024-07-14', '2024-07-14', '13:35:56', 'shagun@gmail.com', 1),
(87, -1, 66, '30', 'Offline', 40000, 'UPI', 'Pending Approval', '', '2024-07-15', '2024-07-15', '13:12:46', 'shagun@gmail.com', 1),
(88, -1, 113, '30', 'Offline', 30000, 'UPI', 'Pending Approval', '419719207953', '2024-07-15', '2024-07-18', '16:39:00', 'deepika@gmail.com', 1),
(89, -1, 39, '1', 'Offline', 20000, 'Cash', 'Approved', '123', '2024-07-18', '2024-07-18', '18:59:00', 'yogendra@gmail.com', 1),
(90, -1, 117, '1', 'Offline', 5000, 'QR Code', 'Approved', '419520458634', '2024-07-19', '2024-07-19', '14:42:24', 'yogendra@gmail.com', 1),
(91, -1, 113, '30', 'Offline', 40000, 'UPI', 'Pending Approval', '', '2024-07-24', '2024-07-24', '11:38:53', 'deepika@gmail.com', 1),
(92, -1, 30, '30', 'Offline', 10000, 'UPI', 'Pending Approval', '420553941866', '2024-07-23', '2024-07-24', '11:41:30', 'deepika@gmail.com', 1),
(93, -1, 127, '31', 'Offline', 50000, 'UPI', 'Approved', '420658920375', '2024-07-24', '2024-07-24', '16:43:38', 'yogendra@gmail.com', 1),
(94, -1, 122, '1', 'Offline', 5000, 'UPI', 'Approved', '419873142081', '2024-07-24', '2024-07-24', '18:29:18', 'yogendra@gmail.com', 1),
(95, -1, 123, '1', 'Offline', 2000, 'UPI', 'Approved', '456534693982', '2024-07-24', '2024-07-24', '18:32:00', 'yogendra@gmail.com', 1),
(96, -1, 122, '1', 'Offline', 35000, 'UPI', 'Pending Approval', '420167022590', '2024-07-19', '2024-07-25', '10:19:59', 'deepika@gmail.com', 1),
(97, -1, 128, '1', 'Offline', 1000, 'Cash', 'Approved', '444444444444', '2024-07-25', '2024-07-25', '17:23:47', 'admin@praajasv.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `telecaller_leads`
--

CREATE TABLE `telecaller_leads` (
  `ID` int(11) NOT NULL,
  `BranchID` int(11) NOT NULL DEFAULT -1,
  `Name` varchar(200) NOT NULL DEFAULT '',
  `Gender` varchar(200) NOT NULL DEFAULT '',
  `DOB` varchar(256) NOT NULL DEFAULT '',
  `Email` varchar(200) NOT NULL DEFAULT '',
  `PhoneNumber` varchar(200) NOT NULL DEFAULT '',
  `Course` int(11) NOT NULL DEFAULT -1,
  `Mode` varchar(200) NOT NULL DEFAULT '',
  `State` varchar(200) NOT NULL DEFAULT '',
  `City` varchar(200) NOT NULL DEFAULT '',
  `Address` varchar(200) NOT NULL DEFAULT '',
  `AssignedTo` varchar(200) NOT NULL DEFAULT '',
  `Status` varchar(200) NOT NULL DEFAULT 'Created',
  `Remark` varchar(256) NOT NULL DEFAULT '',
  `LeadSource` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `telecaller_leads`
--

INSERT INTO `telecaller_leads` (`ID`, `BranchID`, `Name`, `Gender`, `DOB`, `Email`, `PhoneNumber`, `Course`, `Mode`, `State`, `City`, `Address`, `AssignedTo`, `Status`, `Remark`, `LeadSource`, `CreatedTime`, `CreatedDate`, `CreatedBy`, `IsActive`) VALUES
(1, 3, 'MR BHATT', 'Male', '', '', '3571598520', 17, 'Online', 'Gujarat', 'KHEDA', '', '24', 'Transferred to Counsellor', '', 'Telecaller', '17:51:58', '2024-06-25', 'DIPTI123@PRAAJASV.COM', 1),
(2, 3, 'DHRUVI  CHAUDHARY', 'Female', '', '', '9428199991', 37, 'Offline', 'Telangana', '', 'GANDHINAGAR', '24', 'Transferred to Counsellor', '', 'Telecaller', '08:57:17', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(3, 3, 'MAYA  SUTHAR', 'Female', '', '', '9054941442', 17, 'Offline', '', '', 'GANDHINAGAR', '24', 'Open', '', 'Telecaller', '11:32:11', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(4, 3, 'NIMISHA ', 'Female', '', '', '9825320353', 17, 'Offline', '', '', '', '24', 'Not Interested', '', 'Telecaller', '11:33:30', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(5, 3, 'KRUTIKA', 'Female', '', '', '9904748856', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '11:34:22', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(6, 3, 'MAYUR', 'Male', '', '', '9714412776', 13, 'Offline', '', '', '', '24', 'Not Interested', '', 'Telecaller', '11:35:15', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(7, 3, 'APAL  PATEL', 'Male', '', '', '8638028451', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '11:37:15', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(8, 3, 'CHAUDHARY  DINESH', 'Male', '', '', '9106916286', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '11:38:27', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(9, 3, 'VIRAL  PATEL', 'Male', '', '', '7046600706', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '11:39:12', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(10, 3, 'THAKOR   MONTHAN', 'Male', '', '', '7984772855', 13, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '11:40:00', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(11, 3, 'SAURABH', 'Male', '', '', '9727840031', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '11:40:36', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(12, 3, 'KAVITA', 'Male', '', '', '7043900812', 13, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '11:45:22', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(13, 3, 'HITENDRA   BHATI', 'Male', '', '', '7096953078', 13, 'Online', '', '', '', '24', 'Not Interested', '', 'Telecaller', '11:46:02', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(14, 3, 'INDRAJIT', 'Male', '', '', '9316030199', 16, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '11:51:17', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(15, 3, 'PINAL', 'Female', '', '', '9586385556', 16, 'Offline', '', '', '', '24', 'Not Interested', '', 'Telecaller', '11:52:15', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(16, 3, 'SACHIN', 'Male', '', '', '6352137155', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '11:52:52', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(17, 3, 'PRAJPATI   SAHIL', 'Male', '', '', '7016324758', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '11:55:23', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(18, 3, 'YASHPAL', 'Male', '', '', '9737743495', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '11:55:53', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(19, 3, 'RABARI  ANKITA', 'Female', '', '', '9510415284', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '11:56:26', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(20, 3, 'DHARA', 'Female', '', '', '8511724138', 17, 'Offline', '', '', '', '24', 'Not Interested', '', 'Telecaller', '12:00:33', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(21, 3, 'MRUTUNJAY SINH', 'Male', '', '', '9408377450', 34, 'Online', '', '', '', '24', 'Not Interested', '', 'Telecaller', '12:01:49', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(22, 3, 'ATUL', 'Male', '', '', '7567006681', 34, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '12:03:00', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(23, 3, 'ISHWARI  GADHAVI', 'Female', '', '', '8469311301', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '12:03:43', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(24, 3, 'NIRAJ', 'Male', '', '', '9998350654', 17, 'Offline', '', '', '', '24', 'Not Interested', '', 'Telecaller', '12:11:44', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(25, 3, 'BHAVIN', 'Male', '', '', '9510599649', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '12:12:37', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(26, 3, 'GEETA', 'Male', '', '', '8160393112', 34, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '12:18:32', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(27, 3, 'MITAL  SUTHAR', 'Male', '', '', '9499627391', 35, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '12:20:37', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(28, 3, 'OD   RAJAT', 'Male', '', '', '9023550686', 6, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '12:22:13', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(29, 3, 'DIPJAY   PARMAR', 'Male', '', '', '9016520563', 6, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '12:38:23', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(30, 3, 'JOSHI  NIDHI', 'Female', '', '', '6353288930', 34, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '12:39:23', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(31, 3, 'NAYAN', 'Male', '', '', '9016310192', 16, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '12:42:25', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(32, 3, 'KRISHNA  TUVER', 'Female', '', '', '9687507767', 34, 'Online', '', '', '', '24', 'Open', '', 'Telecaller', '12:43:19', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(33, 3, 'HARSH   MORI', 'Male', '', '', '7624096940', 13, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '12:43:59', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(34, 3, 'CHARCHIL   MEKWNA', 'Male', '', '', '7990254995', 34, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '12:46:35', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(35, 3, 'KRUNAL   SUTHAR', 'Male', '', '', '9725771828', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '12:47:11', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(36, 3, 'NIRAJ', 'Male', '', '', '9909420077', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '12:49:53', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(37, 3, 'YASH  MACHI', 'Male', '', '', '9316557129', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '12:50:28', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(38, 3, 'TEJAL  CHAUHAN', 'Male', '', '', '9316091400', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '14:30:57', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(39, 3, 'RAVALIYA   MESHWA', 'Male', '', '', '9313622436', 18, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '14:35:07', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(40, 3, 'HARVI  PANCHAL', 'Female', '', '', '9316850094', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '14:36:18', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(41, 3, 'DIVYARAJ', 'Male', '', '', '6354293345', 16, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '14:38:33', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(42, 3, 'PARCHI', 'Female', '', '', '6355475272', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '14:39:57', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(43, 3, 'SANDIP', 'Male', '', '', '6353777218', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '14:40:53', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(44, 3, 'SONARA   DHAVL', 'Male', '', '', '9824375812', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '14:41:57', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(45, 3, 'MITUL  TRIVEDI', 'Male', '', '', '9898611363', 35, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '14:44:24', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(46, 3, 'HARDIK', 'Male', '', '', '8320038226', 34, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '14:45:06', '2024-06-28', 'DIPTI123@PRAAJASV.COM', 1),
(47, 3, 'CHAUHAN  VIVEK', 'Male', '', '', '6352138513', 16, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '15:10:54', '2024-06-29', 'DIPTI123@PRAAJASV.COM', 1),
(48, 3, 'SHIVANI', 'Female', '', '', '7567085243', 15, 'Online', '', '', '', '24', 'Open', '', 'Telecaller', '15:14:57', '2024-06-29', 'DIPTI123@PRAAJASV.COM', 1),
(49, 3, 'CHAVDA  SMITH', 'Male', '', '', '9313695915', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '15:16:08', '2024-06-29', 'DIPTI123@PRAAJASV.COM', 1),
(50, 3, 'MANSI', 'Female', '', '', '9426584436', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '15:17:06', '2024-06-29', 'DIPTI123@PRAAJASV.COM', 1),
(51, 3, 'DHARA', 'Male', '', '', '7016833105', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '15:17:48', '2024-06-29', 'DIPTI123@PRAAJASV.COM', 1),
(52, 3, 'ARJUN', 'Female', '', '', '9586339624', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '15:19:29', '2024-06-29', 'DIPTI123@PRAAJASV.COM', 1),
(53, 3, 'VAIBHAV  PATEL', 'Male', '', '', '9409844436', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '15:20:40', '2024-06-29', 'DIPTI123@PRAAJASV.COM', 1),
(54, 3, 'VIVEK', 'Male', '', '', '9510120034', 16, 'Offline', '', '', '', '24', 'Not Interested', '', 'Telecaller', '15:22:01', '2024-06-29', 'DIPTI123@PRAAJASV.COM', 1),
(55, 3, 'DVIYANG', 'Male', '', '', '9909334894', 13, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '15:22:39', '2024-06-29', 'DIPTI123@PRAAJASV.COM', 1),
(56, 3, 'KAVYA', 'Male', '', '', '7046031100', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '15:23:11', '2024-06-29', 'DIPTI123@PRAAJASV.COM', 1),
(57, 3, 'SIDDHARTH', 'Male', '', '', '9925093609', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '15:23:37', '2024-06-29', 'DIPTI123@PRAAJASV.COM', 1),
(58, 3, 'DR. MITAL', 'Male', '', '', '9023190419', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '15:23:59', '2024-06-29', 'DIPTI123@PRAAJASV.COM', 1),
(59, 3, 'PRITI   BAROT', 'Female', '', '', '7600505266', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '08:41:06', '2024-07-01', 'DIPTI123@PRAAJASV.COM', 1),
(60, 3, 'AARTI', 'Female', '', '', '9825629369', 14, 'Online', '', '', '', '24', 'Open', '', 'Telecaller', '08:42:55', '2024-07-01', 'DIPTI123@PRAAJASV.COM', 1),
(61, 3, 'YUVRAJ', 'Male', '', '', '7874743036', 18, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '08:46:33', '2024-07-01', 'DIPTI123@PRAAJASV.COM', 1),
(62, 3, 'PRGNESH', 'Male', '', '', '9979886988', 13, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '08:47:02', '2024-07-01', 'DIPTI123@PRAAJASV.COM', 1),
(63, 3, 'Dhirajtejot', 'Male', '', '', '9193284831', 32, 'Online', 'Gujarat', '', '', '26', 'Open', '', 'Telecaller', '09:36:37', '2024-07-01', 'monika@praajasv.com', 1),
(64, 3, 'BADRESH', 'Male', '', '', '8849102915', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '16:02:38', '2024-07-02', 'DIPTI123@PRAAJASV.COM', 1),
(65, 3, 'DEEPIKA    MAHLA', 'Female', '', '', '8238262965', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '16:04:25', '2024-07-02', 'DIPTI123@PRAAJASV.COM', 1),
(66, 3, 'NIDHI', 'Female', '', '', '7016648827', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '16:06:36', '2024-07-02', 'DIPTI123@PRAAJASV.COM', 1),
(67, 3, 'SNEH', 'Male', '', '', '8530319190', 13, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '16:07:19', '2024-07-02', 'DIPTI123@PRAAJASV.COM', 1),
(68, 3, 'RITISHA', 'Female', '', '', '7203812169', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '16:10:09', '2024-07-02', 'DIPTI123@PRAAJASV.COM', 1),
(69, 3, 'DEVANSHI', 'Female', '', '', '9537580982', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '16:26:57', '2024-07-02', 'DIPTI123@PRAAJASV.COM', 1),
(70, 3, 'PRTIK   SONI', 'Male', '', '', '8000762914', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '16:28:49', '2024-07-02', 'DIPTI123@PRAAJASV.COM', 1),
(71, 3, 'MANISHA', 'Female', '', '', '8128084286', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '16:30:19', '2024-07-02', 'DIPTI123@PRAAJASV.COM', 1),
(72, 3, 'SHAILESH', 'Male', '', '', '9510835667', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '16:32:09', '2024-07-02', 'DIPTI123@PRAAJASV.COM', 1),
(73, 3, 'MAYUR', 'Male', '', '', '9316279342', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '16:33:25', '2024-07-02', 'DIPTI123@PRAAJASV.COM', 1),
(74, 3, 'AKHIL', 'Male', '', '', '8866099144', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '16:34:42', '2024-07-02', 'DIPTI123@PRAAJASV.COM', 1),
(75, 3, 'JAY', 'Male', '', '', '9428977810', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '16:36:59', '2024-07-02', 'DIPTI123@PRAAJASV.COM', 1),
(76, 3, 'NIRMAL', 'Male', '', '', '8160436887', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '16:37:43', '2024-07-02', 'DIPTI123@PRAAJASV.COM', 1),
(77, 3, 'MANISHA', 'Female', '', '', '9638942654', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '16:39:20', '2024-07-02', 'DIPTI123@PRAAJASV.COM', 1),
(78, 3, 'GAMIT   VARNU', 'Male', '', '', '9712794977', 4, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '16:45:18', '2024-07-02', 'DIPTI123@PRAAJASV.COM', 1),
(79, 3, 'ZINKAL', 'Male', '', '', '9924699654', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '16:45:54', '2024-07-02', 'DIPTI123@PRAAJASV.COM', 1),
(80, 3, 'DIVYA', 'Female', '', '', '6352382931', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '16:47:36', '2024-07-02', 'DIPTI123@PRAAJASV.COM', 1),
(81, 3, 'HEMANGINI', 'Female', '', '', '6356237980', 17, 'Offline', '', '', '', '24', 'Not Interested', '', 'Telecaller', '09:32:35', '2024-07-04', 'DIPTI123@PRAAJASV.COM', 1),
(82, 3, 'MAYURI', 'Female', '', '', '7990428266', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '09:33:17', '2024-07-04', 'DIPTI123@PRAAJASV.COM', 1),
(83, 3, 'SANJAY', 'Male', '', '', '9978586757', 13, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '09:34:36', '2024-07-04', 'DIPTI123@PRAAJASV.COM', 1),
(84, 3, 'VIJAY', 'Female', '', '', '8780959600', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '09:38:09', '2024-07-04', 'DIPTI123@PRAAJASV.COM', 1),
(85, 3, 'VISWJEET', 'Male', '', '', '8320617718', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '09:41:49', '2024-07-04', 'DIPTI123@PRAAJASV.COM', 1),
(86, 3, 'SWATI', 'Female', '', '', '8200531013', 16, 'Offline', '', '', '', '', 'Open', '', 'Telecaller', '10:20:25', '2024-07-04', '', 1),
(87, 3, 'MEGHNA', 'Female', '', '', '9328972245', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '10:38:20', '2024-07-04', 'DIPTI123@PRAAJASV.COM', 1),
(88, 3, 'BHOOMIKA', 'Female', '', '', '7778873703', 13, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '10:40:47', '2024-07-04', 'DIPTI123@PRAAJASV.COM', 1),
(89, 3, 'HETAL  VASVA', 'Female', '', '', '9909970766', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '10:42:32', '2024-07-04', 'DIPTI123@PRAAJASV.COM', 1),
(90, 3, 'SISODIYA  PRATAP', 'Male', '', '', '7878019458', 16, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '10:48:02', '2024-07-04', 'DIPTI123@PRAAJASV.COM', 1),
(91, 3, 'KARAN', 'Male', '', '', '8469570541', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '10:49:38', '2024-07-04', 'DIPTI123@PRAAJASV.COM', 1),
(92, 3, 'VISWA', 'Female', '', '', '9099534150', 17, 'Offline', '', '', '', '24', 'Not Interested', '', 'Telecaller', '15:06:07', '2024-07-05', 'DIPTI123@PRAAJASV.COM', 1),
(93, 3, 'RATHOD  NISARG', 'Male', '', '', '8799595144', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '15:07:21', '2024-07-05', 'DIPTI123@PRAAJASV.COM', 1),
(94, 3, 'REETA', 'Female', '', '', '7359984682', 18, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '15:07:58', '2024-07-05', 'DIPTI123@PRAAJASV.COM', 1),
(95, 3, 'VIDHAN  DEASI', 'Male', '', '', '8690074924', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '15:08:34', '2024-07-05', 'DIPTI123@PRAAJASV.COM', 1),
(96, 3, 'AYUSH', 'Male', '', '', '7046612699', 6, 'Offline', '', '', '', '24', 'Not Interested', '', 'Telecaller', '15:09:53', '2024-07-05', 'DIPTI123@PRAAJASV.COM', 1),
(97, 3, 'BAROT   DEVRSHI', 'Male', '', '', '7046665861', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '15:10:37', '2024-07-05', 'DIPTI123@PRAAJASV.COM', 1),
(98, 3, 'ANNIRUDH', 'Male', '', '', '6351108274', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '15:47:59', '2024-07-06', 'DIPTI123@PRAAJASV.COM', 1),
(99, 3, 'AARTI', 'Female', '', '', '9924429885', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '15:49:17', '2024-07-06', 'DIPTI123@PRAAJASV.COM', 1),
(100, 3, 'OMKAR', 'Male', '', '', '8780159282', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '17:11:22', '2024-07-06', 'DIPTI123@PRAAJASV.COM', 1),
(101, 3, 'SHIVANI', 'Female', '', '', '9512857643', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '17:12:36', '2024-07-06', 'DIPTI123@PRAAJASV.COM', 1),
(102, 3, 'APEXA', 'Female', '', '', '9428788495', 17, 'Offline', '', '', '', '24', 'Not Interested', '', 'Telecaller', '17:13:20', '2024-07-06', 'DIPTI123@PRAAJASV.COM', 1),
(103, 3, 'MALI  MANISHA', 'Female', '', '', '9712724724', 18, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '17:18:55', '2024-07-06', 'DIPTI123@PRAAJASV.COM', 1),
(104, 3, 'PATEL  NISHTHA', 'Female', '', '', '9408672541', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '17:20:12', '2024-07-06', 'DIPTI123@PRAAJASV.COM', 1),
(105, 3, 'HARSHAD   CHAVADA', 'Male', '', '', '7600610579', 17, 'Offline', '', '', '', '24', 'Transferred to Counsellor', '', 'Telecaller', '17:21:31', '2024-07-06', 'DIPTI123@PRAAJASV.COM', 1),
(106, 3, 'NIHARIKA', 'Female', '', '', '9979011794', 17, 'Offline', '', '', '', '24', 'Transferred to Counsellor', '', 'Telecaller', '17:22:02', '2024-07-06', 'DIPTI123@PRAAJASV.COM', 1),
(107, 3, 'KUNJ ', 'Male', '', '', '9023946690', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '12:07:22', '2024-07-11', 'Dipti123@praajasv.com', 1),
(108, 3, 'HELI  JOSHI', 'Female', '', '', '9928558584', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '12:25:26', '2024-07-11', 'Dipti123@praajasv.com', 1),
(109, 3, 'RASHMI', 'Female', '', '', '8460842353', 15, 'Online', '', '', '', '24', 'Not Interested', '', 'Telecaller', '12:27:30', '2024-07-11', 'Dipti123@praajasv.com', 1),
(110, 3, 'ASHOK', 'Male', '', '', '9909457085', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '12:28:33', '2024-07-11', 'Dipti123@praajasv.com', 1),
(111, 3, 'DARPAN  JADAV', 'Male', '', '', '7698023075', 35, 'Offline', '', '', '', '24', 'Not Interested', '', 'Telecaller', '12:30:46', '2024-07-11', 'Dipti123@praajasv.com', 1),
(112, 3, 'SAHIL', 'Male', '', '', '9484807958', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '12:31:14', '2024-07-11', 'Dipti123@praajasv.com', 1),
(113, 3, 'JEEL   RADA', 'Female', '', '', '9925409970', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '12:31:54', '2024-07-11', 'Dipti123@praajasv.com', 1),
(114, 3, 'PRUTHVI', 'Male', '', '', '9328710722', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '12:32:26', '2024-07-11', 'Dipti123@praajasv.com', 1),
(115, 3, 'SNEHAL ', 'Female', '', '', '7201868362', 15, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '12:33:20', '2024-07-11', 'Dipti123@praajasv.com', 1),
(116, 3, 'RAVINDRA', 'Male', '', '', '8780716065', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '12:34:59', '2024-07-11', 'Dipti123@praajasv.com', 1),
(117, 3, 'HARDIK  KALIYA', 'Male', '', '', '8866612526', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '12:37:10', '2024-07-11', 'Dipti123@praajasv.com', 1),
(118, 3, 'AVANI', 'Female', '', '', '8799642106', 17, 'Offline', '', '', '', '', 'Open', '', 'Telecaller', '14:32:24', '2024-07-11', '', 1),
(119, 3, 'RAHUL  RATHVA', 'Male', '', '', '9409303965', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '14:41:03', '2024-07-11', 'Dipti123@praajasv.com', 1),
(120, 3, 'AMISH', 'Male', '', '', '9726216716', 4, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '09:17:10', '2024-07-12', 'Dipti123@praajasv.com', 1),
(121, 3, 'ZEEL', 'Female', '', '', '7203085295', 17, 'Offline', '', '', '', '', 'Open', '', 'Telecaller', '10:54:53', '2024-07-12', '', 1),
(122, 3, 'HARDIK', 'Male', '', '', '9712864616', 13, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '11:06:05', '2024-07-12', 'Dipti123@praajasv.com', 1),
(123, 3, 'DHRUVI   FADU', 'Female', '', '', '8980127712', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '11:08:59', '2024-07-12', 'Dipti123@praajasv.com', 1),
(124, 3, 'VIJAY   MODAH', 'Male', '', '', '7016768540', 16, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '11:21:42', '2024-07-12', 'Dipti123@praajasv.com', 1),
(125, 3, 'RUDRA  JOSHI', 'Male', '', '', '7777969545', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '11:22:18', '2024-07-12', 'Dipti123@praajasv.com', 1),
(126, 3, 'DHURVI', 'Female', '', '', '9925462002', 4, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '15:42:43', '2024-07-15', 'Dipti123@praajasv.com', 1),
(127, 3, 'DHAVAL', 'Male', '', '', '8849345858', 4, 'Offline', '', '', '', '24', 'Not Interested', '', 'Telecaller', '15:43:51', '2024-07-15', 'Dipti123@praajasv.com', 1),
(128, 3, 'ANIRRUD', 'Male', '', '', '7433812772', 4, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '15:44:47', '2024-07-15', 'Dipti123@praajasv.com', 1),
(129, 3, 'VIDHI', 'Female', '', '', '7043347752', 4, 'Offline', '', '', '', '24', 'Not Interested', '', 'Telecaller', '15:46:00', '2024-07-15', 'Dipti123@praajasv.com', 1),
(130, 3, 'VISHAL ', 'Male', '', '', '7600445699', 4, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '15:46:58', '2024-07-15', 'Dipti123@praajasv.com', 1),
(131, 3, 'JANAK   ', 'Male', '', '', '9537240955', 4, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '15:48:54', '2024-07-15', 'Dipti123@praajasv.com', 1),
(132, 3, 'GOHIL  JAYDEEP   ', 'Male', '', '', '7600919291', 13, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '16:20:15', '2024-07-15', 'Dipti123@praajasv.com', 1),
(133, 3, 'KASUSHIK   ', 'Male', '', '', '9714534724', 35, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '16:21:42', '2024-07-15', 'Dipti123@praajasv.com', 1),
(134, 3, 'DEVANG', 'Male', '', '', '9924472459', 4, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '16:22:34', '2024-07-15', 'Dipti123@praajasv.com', 1),
(135, 3, 'VASVA   PAYAL', 'Female', '', '', '9725239712', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '16:25:09', '2024-07-15', 'Dipti123@praajasv.com', 1),
(136, 3, 'VIVEK   PATEL ', 'Male', '', '', '9106982114', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '11:15:09', '2024-07-16', 'Dipti123@praajasv.com', 1),
(137, 3, 'AKSHAY   BAROT', 'Male', '', '', '9998132196', 17, 'Offline', '', '', '', '24', 'Not Interested', '', 'Telecaller', '11:15:39', '2024-07-16', 'Dipti123@praajasv.com', 1),
(138, 3, 'ANITA   PARMAR', 'Female', '', '', '9979022360', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '11:27:02', '2024-07-16', 'Dipti123@praajasv.com', 1),
(139, 3, 'RAHUL', 'Male', '', '', '9099181287', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '11:30:48', '2024-07-16', 'Dipti123@praajasv.com', 1),
(140, 3, 'PRIYA  PARJAPATI', 'Female', '', '', '7359832490', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '11:31:59', '2024-07-16', 'Dipti123@praajasv.com', 1),
(141, 3, 'CHINTAN', 'Male', '', '', '8141757603', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '11:33:59', '2024-07-16', 'Dipti123@praajasv.com', 1),
(142, 3, 'Desai Sachin', 'Male', '', '', '9191067085', 10, 'Online', 'Gujarat', '', '', '26', 'Open', '', 'Telecaller', '14:54:49', '2024-07-16', 'monika@praajasv.com', 1),
(143, 3, 'Vignesh Patel', 'Male', '', '', '9195379860', 32, 'Online', 'Gujarat', '', '', '26', 'Open', '', 'Telecaller', '14:55:50', '2024-07-16', 'monika@praajasv.com', 1),
(144, 3, 'Arvind Prajapati', 'Male', '', '', '9199135760', 10, 'Online', 'Gujarat', '', '', '26', 'Not Interested', '', 'Telecaller', '14:57:55', '2024-07-16', 'monika@praajasv.com', 1),
(145, 3, 'Nidhi Patel', 'Female', '', '', '9191064075', 10, 'Online', 'Gujarat', '', '', '26', 'Not Interested', '', 'Telecaller', '14:59:02', '2024-07-16', 'monika@praajasv.com', 1),
(146, 3, 'DINESH', 'Male', '', '', '7046566024', 18, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '09:37:51', '2024-07-18', 'Dipti123@praajasv.com', 1),
(147, 3, 'SOBHNA', 'Female', '', '', '9978717077', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '09:38:34', '2024-07-18', 'Dipti123@praajasv.com', 1),
(148, 3, 'ROSHAN', 'Male', '', '', '9727979057', 16, 'Offline', '', '', '', '24', 'Not Interested', '', 'Telecaller', '09:39:12', '2024-07-18', 'Dipti123@praajasv.com', 1),
(149, 3, 'ASHISH   SUTHAR', 'Male', '', '', '7096695354', 13, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '09:41:16', '2024-07-18', 'Dipti123@praajasv.com', 1),
(150, 3, 'RADA   SARJU', 'Male', '', '', '9725617913', 18, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '09:43:22', '2024-07-18', 'Dipti123@praajasv.com', 1),
(151, 3, 'SAKEH   VASIM', 'Male', '', '', '9974157655', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '09:46:01', '2024-07-18', 'Dipti123@praajasv.com', 1),
(152, 3, 'BHATI   ANMONAL', 'Male', '', '', '8160721398', 4, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '14:37:08', '2024-07-22', 'Dipti123@praajasv.com', 1),
(153, 3, 'JAYARAJ   JADEJA', 'Male', '', '', '8320833125', 16, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '14:38:01', '2024-07-22', 'Dipti123@praajasv.com', 1),
(154, 3, 'SUJAL   GOSWAMI', 'Male', '', '', '6351961630', 18, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '14:39:30', '2024-07-22', 'Dipti123@praajasv.com', 1),
(155, 3, 'GAYATRI', 'Female', '', '', '9898431193', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '14:40:52', '2024-07-22', 'Dipti123@praajasv.com', 1),
(156, 3, 'MITAL ', 'Male', '', '', '8780922126', 17, 'Offline', '', '', '', '24', 'Not Interested', '', 'Telecaller', '14:42:14', '2024-07-22', 'Dipti123@praajasv.com', 1),
(157, 3, 'REENA', 'Female', '', '', '9624703711', 18, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '14:44:57', '2024-07-22', 'Dipti123@praajasv.com', 1),
(158, 3, 'MAYUR', 'Male', '', '', '9428537729', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '14:50:24', '2024-07-22', 'Dipti123@praajasv.com', 1),
(159, 3, 'HARSH RAJ  KHER', 'Male', '', '', '9638122149', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '14:51:32', '2024-07-22', 'Dipti123@praajasv.com', 1),
(160, 3, 'BHOOVNESWARI', 'Female', '', '', '9327272266', 35, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '14:54:38', '2024-07-22', 'Dipti123@praajasv.com', 1),
(161, 3, 'JAYNAM   PATEL', 'Male', '', '', '6359970315', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '14:56:11', '2024-07-22', 'Dipti123@praajasv.com', 1),
(162, 3, 'RIDDHI PATEL', 'Female', '', '', '7861989296', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '14:56:55', '2024-07-22', 'Dipti123@praajasv.com', 1),
(163, 3, 'DASHRATH    CHAUDHARY', 'Female', '', '', '9925637863', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '14:57:47', '2024-07-22', 'Dipti123@praajasv.com', 1),
(164, 3, 'TWINKAL', 'Female', '', '', '8401070756', 18, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '09:10:29', '2024-07-23', 'Dipti123@praajasv.com', 1),
(165, 3, 'SHERYA', 'Female', '', '', '6353383296', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '09:11:46', '2024-07-23', 'Dipti123@praajasv.com', 1),
(166, 3, 'DHURV   PATEL', 'Male', '', '', '6353178798', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '09:12:35', '2024-07-23', 'Dipti123@praajasv.com', 1),
(167, 3, 'DEVANSH ', 'Male', '', '', '7016600283', 18, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '09:13:17', '2024-07-23', 'Dipti123@praajasv.com', 1),
(168, 3, 'PUNIT  CHAUDHARY', 'Male', '', '', '9328089252', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '10:57:22', '2024-07-25', 'Dipti123@praajasv.com', 1),
(169, 3, 'PATEL   PRIYA', 'Female', '', '', '7434943811', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '10:58:04', '2024-07-25', 'Dipti123@praajasv.com', 1),
(170, 3, 'RMAKU', 'Male', '', '', '7096300308', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '10:59:39', '2024-07-25', 'Dipti123@praajasv.com', 1),
(171, 3, 'HETANSHI', 'Female', '', '', '9913135785', 18, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '11:00:18', '2024-07-25', 'Dipti123@praajasv.com', 1),
(172, 3, 'DANSINH', 'Male', '', '', '7984948539', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '11:01:27', '2024-07-25', 'Dipti123@praajasv.com', 1),
(173, 3, 'MUKESH', 'Male', '', '', '8758602893', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '11:01:57', '2024-07-25', 'Dipti123@praajasv.com', 1),
(174, 3, 'DHAVAL   PATEL', 'Male', '', '', '9099693822', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '11:02:28', '2024-07-25', 'Dipti123@praajasv.com', 1),
(175, 3, 'RAJESH', 'Male', '', '', '7383662356', 17, 'Offline', '', '', '', '24', 'Open', '', 'Telecaller', '11:03:03', '2024-07-25', 'Dipti123@praajasv.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `telecaller_lead_assignment_history`
--

CREATE TABLE `telecaller_lead_assignment_history` (
  `ID` int(11) NOT NULL,
  `LeadID` int(11) NOT NULL DEFAULT -1,
  `AssignedTo` int(11) NOT NULL DEFAULT -1,
  `Status` varchar(50) NOT NULL DEFAULT '',
  `Remark` varchar(256) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `telecaller_lead_assignment_history`
--

INSERT INTO `telecaller_lead_assignment_history` (`ID`, `LeadID`, `AssignedTo`, `Status`, `Remark`, `CreatedDate`, `CreatedTime`, `CreatedBy`) VALUES
(1, 1, 24, 'Open', 'Telecaller Lead Created', '2024-06-25', '17:51:58', 'DIPTI123@PRAAJASV.COM'),
(2, 2, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '08:57:17', 'DIPTI123@PRAAJASV.COM'),
(3, 2, 24, 'Open', 'visit done ', '2024-06-28', '09:01:50', 'DIPTI123@PRAAJASV.COM'),
(4, 3, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '11:32:11', 'DIPTI123@PRAAJASV.COM'),
(5, 4, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '11:33:30', 'DIPTI123@PRAAJASV.COM'),
(6, 5, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '11:34:22', 'DIPTI123@PRAAJASV.COM'),
(7, 6, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '11:35:15', 'DIPTI123@PRAAJASV.COM'),
(8, 7, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '11:37:15', 'DIPTI123@PRAAJASV.COM'),
(9, 8, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '11:38:27', 'DIPTI123@PRAAJASV.COM'),
(10, 9, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '11:39:12', 'DIPTI123@PRAAJASV.COM'),
(11, 10, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '11:40:00', 'DIPTI123@PRAAJASV.COM'),
(12, 11, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '11:40:36', 'DIPTI123@PRAAJASV.COM'),
(13, 12, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '11:45:22', 'DIPTI123@PRAAJASV.COM'),
(14, 13, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '11:46:02', 'DIPTI123@PRAAJASV.COM'),
(15, 14, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '11:51:17', 'DIPTI123@PRAAJASV.COM'),
(16, 15, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '11:52:15', 'DIPTI123@PRAAJASV.COM'),
(17, 16, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '11:52:52', 'DIPTI123@PRAAJASV.COM'),
(18, 17, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '11:55:23', 'DIPTI123@PRAAJASV.COM'),
(19, 18, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '11:55:53', 'DIPTI123@PRAAJASV.COM'),
(20, 19, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '11:56:26', 'DIPTI123@PRAAJASV.COM'),
(21, 20, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '12:00:33', 'DIPTI123@PRAAJASV.COM'),
(22, 21, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '12:01:49', 'DIPTI123@PRAAJASV.COM'),
(23, 22, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '12:03:00', 'DIPTI123@PRAAJASV.COM'),
(24, 23, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '12:03:43', 'DIPTI123@PRAAJASV.COM'),
(25, 24, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '12:11:44', 'DIPTI123@PRAAJASV.COM'),
(26, 25, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '12:12:37', 'DIPTI123@PRAAJASV.COM'),
(27, 26, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '12:18:32', 'DIPTI123@PRAAJASV.COM'),
(28, 27, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '12:20:37', 'DIPTI123@PRAAJASV.COM'),
(29, 28, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '12:22:13', 'DIPTI123@PRAAJASV.COM'),
(30, 29, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '12:38:23', 'DIPTI123@PRAAJASV.COM'),
(31, 30, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '12:39:23', 'DIPTI123@PRAAJASV.COM'),
(32, 31, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '12:42:25', 'DIPTI123@PRAAJASV.COM'),
(33, 32, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '12:43:19', 'DIPTI123@PRAAJASV.COM'),
(34, 33, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '12:43:59', 'DIPTI123@PRAAJASV.COM'),
(35, 34, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '12:46:35', 'DIPTI123@PRAAJASV.COM'),
(36, 35, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '12:47:11', 'DIPTI123@PRAAJASV.COM'),
(37, 36, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '12:49:53', 'DIPTI123@PRAAJASV.COM'),
(38, 37, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '12:50:28', 'DIPTI123@PRAAJASV.COM'),
(39, 38, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '14:30:57', 'DIPTI123@PRAAJASV.COM'),
(40, 39, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '14:35:07', 'DIPTI123@PRAAJASV.COM'),
(41, 40, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '14:36:18', 'DIPTI123@PRAAJASV.COM'),
(42, 41, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '14:38:33', 'DIPTI123@PRAAJASV.COM'),
(43, 42, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '14:39:57', 'DIPTI123@PRAAJASV.COM'),
(44, 43, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '14:40:53', 'DIPTI123@PRAAJASV.COM'),
(45, 44, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '14:41:57', 'DIPTI123@PRAAJASV.COM'),
(46, 45, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '14:44:24', 'DIPTI123@PRAAJASV.COM'),
(47, 46, 24, 'Open', 'Telecaller Lead Created', '2024-06-28', '14:45:06', 'DIPTI123@PRAAJASV.COM'),
(48, 2, 24, 'Open', 'OUT OF  COVERAGE', '2024-06-28', '15:21:30', 'DIPTI123@PRAAJASV.COM'),
(49, 3, 24, 'Open', 'N.R', '2024-06-28', '15:22:34', 'DIPTI123@PRAAJASV.COM'),
(50, 4, 24, 'Open', 'EVENING  BATCH MATE CALL KARVO', '2024-06-28', '15:24:00', 'DIPTI123@PRAAJASV.COM'),
(51, 5, 24, 'Open', 'BUSY', '2024-06-28', '15:26:13', 'DIPTI123@PRAAJASV.COM'),
(52, 6, 24, 'Open', 'N.R', '2024-06-28', '15:27:14', 'DIPTI123@PRAAJASV.COM'),
(53, 6, 24, 'Open', 'ONLY B GROUP MATE JOIN KARVU CHE', '2024-06-28', '15:28:33', 'DIPTI123@PRAAJASV.COM'),
(54, 7, 24, 'Open', 'N.R', '2024-06-28', '16:04:50', 'DIPTI123@PRAAJASV.COM'),
(55, 8, 24, 'Open', 'NEXT  BATCH   MA JOIN  KARSE', '2024-06-28', '16:10:04', 'DIPTI123@PRAAJASV.COM'),
(56, 9, 24, 'Open', 'N.R', '2024-06-28', '17:15:37', 'DIPTI123@PRAAJASV.COM'),
(57, 10, 24, 'Open', 'MONDAY   VISIT MATE AVSE', '2024-06-28', '17:19:16', 'DIPTI123@PRAAJASV.COM'),
(58, 11, 24, 'Open', 'N.R', '2024-06-28', '17:20:56', 'DIPTI123@PRAAJASV.COM'),
(59, 12, 24, 'Open', '29  A AVSE  VISIT MATE', '2024-06-28', '17:27:18', 'DIPTI123@PRAAJASV.COM'),
(60, 13, 24, 'Open', 'N .R', '2024-06-28', '17:31:58', 'DIPTI123@PRAAJASV.COM'),
(61, 14, 24, 'Open', 'DEMO MATE AVE CHE', '2024-06-28', '17:35:41', 'DIPTI123@PRAAJASV.COM'),
(62, 15, 24, 'Open', 'OFFLINE MA FEES VADHRE LAGE CHE TO ONLINE NU VICHARSE', '2024-06-28', '17:52:36', 'DIPTI123@PRAAJASV.COM'),
(63, 47, 24, 'Open', 'Telecaller Lead Created', '2024-06-29', '15:10:54', 'DIPTI123@PRAAJASV.COM'),
(64, 48, 24, 'Open', 'Telecaller Lead Created', '2024-06-29', '15:14:57', 'DIPTI123@PRAAJASV.COM'),
(65, 49, 24, 'Open', 'Telecaller Lead Created', '2024-06-29', '15:16:08', 'DIPTI123@PRAAJASV.COM'),
(66, 50, 24, 'Open', 'Telecaller Lead Created', '2024-06-29', '15:17:06', 'DIPTI123@PRAAJASV.COM'),
(67, 51, 24, 'Open', 'Telecaller Lead Created', '2024-06-29', '15:17:48', 'DIPTI123@PRAAJASV.COM'),
(68, 52, 24, 'Open', 'Telecaller Lead Created', '2024-06-29', '15:19:29', 'DIPTI123@PRAAJASV.COM'),
(69, 53, 24, 'Open', 'Telecaller Lead Created', '2024-06-29', '15:20:40', 'DIPTI123@PRAAJASV.COM'),
(70, 54, 24, 'Open', 'Telecaller Lead Created', '2024-06-29', '15:22:01', 'DIPTI123@PRAAJASV.COM'),
(71, 55, 24, 'Open', 'Telecaller Lead Created', '2024-06-29', '15:22:39', 'DIPTI123@PRAAJASV.COM'),
(72, 56, 24, 'Open', 'Telecaller Lead Created', '2024-06-29', '15:23:11', 'DIPTI123@PRAAJASV.COM'),
(73, 57, 24, 'Open', 'Telecaller Lead Created', '2024-06-29', '15:23:37', 'DIPTI123@PRAAJASV.COM'),
(74, 58, 24, 'Open', 'Telecaller Lead Created', '2024-06-29', '15:23:59', 'DIPTI123@PRAAJASV.COM'),
(75, 16, 24, 'Open', 'N.R', '2024-06-29', '15:31:54', 'DIPTI123@PRAAJASV.COM'),
(76, 17, 24, 'Open', 'A\"VAD   JOIN KARSE', '2024-06-29', '15:34:49', 'DIPTI123@PRAAJASV.COM'),
(77, 18, 24, 'Open', 'CALL   ENDED', '2024-06-29', '15:37:57', 'DIPTI123@PRAAJASV.COM'),
(78, 18, 24, 'Open', 'BUSY', '2024-06-29', '16:01:16', 'DIPTI123@PRAAJASV.COM'),
(79, 19, 24, 'Open', 'N.R', '2024-06-29', '16:03:50', 'DIPTI123@PRAAJASV.COM'),
(80, 20, 24, 'Open', 'N.R', '2024-06-29', '16:05:55', 'DIPTI123@PRAAJASV.COM'),
(81, 21, 24, 'Open', 'MAINS LIVE ONLINE DONE', '2024-06-29', '16:06:27', 'DIPTI123@PRAAJASV.COM'),
(82, 22, 24, 'Open', 'BUSY', '2024-06-29', '16:09:08', 'DIPTI123@PRAAJASV.COM'),
(83, 23, 24, 'Open', 'KALE  AVSE ', '2024-06-29', '16:11:27', 'DIPTI123@PRAAJASV.COM'),
(84, 20, 24, 'Not Interested', 'BIJE JOIN KARYU CHE', '2024-06-29', '16:12:16', 'DIPTI123@PRAAJASV.COM'),
(85, 24, 24, 'Not Interested', 'CHAL MA JOIN KARYU CHE', '2024-06-29', '16:18:27', 'DIPTI123@PRAAJASV.COM'),
(86, 25, 24, 'Open', 'N.R', '2024-06-29', '16:20:12', 'DIPTI123@PRAAJASV.COM'),
(87, 26, 24, 'Open', 'N.R', '2024-06-29', '16:22:01', 'DIPTI123@PRAAJASV.COM'),
(88, 27, 24, 'Open', 'MSC. PACHI UPSC KARSE ', '2024-06-29', '16:23:26', 'DIPTI123@PRAAJASV.COM'),
(89, 28, 24, 'Open', 'N.R', '2024-06-29', '16:28:46', 'DIPTI123@PRAAJASV.COM'),
(90, 29, 24, 'Open', 'N.R', '2024-06-29', '16:31:15', 'DIPTI123@PRAAJASV.COM'),
(91, 30, 24, 'Open', 'DEMO MATE AVSE 1 KE 2 DIVAS MATE', '2024-06-29', '16:33:54', 'DIPTI123@PRAAJASV.COM'),
(92, 31, 24, 'Open', 'HIGH COURT PRE MATE', '2024-06-29', '16:40:26', 'DIPTI123@PRAAJASV.COM'),
(93, 32, 24, 'Open', 'MAINS  LIVE  DONE', '2024-06-29', '16:40:58', 'DIPTI123@PRAAJASV.COM'),
(94, 33, 24, 'Open', 'CALL  CUT', '2024-06-29', '16:42:25', 'DIPTI123@PRAAJASV.COM'),
(95, 34, 24, 'Open', 'MAINS OFFLINE 1 DEMO ATTED\r\nVISIT DONE', '2024-06-29', '16:45:10', 'DIPTI123@PRAAJASV.COM'),
(96, 35, 24, 'Open', '30 /6  A  RUBRU  AVSE ', '2024-06-29', '16:46:57', 'DIPTI123@PRAAJASV.COM'),
(97, 36, 24, 'Open', 'JULY MONTH MA JOIN KARSE', '2024-06-29', '16:54:45', 'DIPTI123@PRAAJASV.COM'),
(98, 37, 24, 'Open', 'VISIT DONE \r\nNEXT BATCH MA JOIN KARSE\r\n', '2024-06-29', '17:03:09', 'DIPTI123@PRAAJASV.COM'),
(99, 38, 24, 'Open', '2  &3 DAYS MA VISIT MATE AVSE', '2024-06-29', '17:08:18', 'DIPTI123@PRAAJASV.COM'),
(100, 59, 24, 'Open', 'Telecaller Lead Created', '2024-07-01', '08:41:06', 'DIPTI123@PRAAJASV.COM'),
(101, 60, 24, 'Open', 'Telecaller Lead Created', '2024-07-01', '08:42:55', 'DIPTI123@PRAAJASV.COM'),
(102, 61, 24, 'Open', 'Telecaller Lead Created', '2024-07-01', '08:46:33', 'DIPTI123@PRAAJASV.COM'),
(103, 62, 24, 'Open', 'Telecaller Lead Created', '2024-07-01', '08:47:02', 'DIPTI123@PRAAJASV.COM'),
(104, 63, 26, 'Open', 'Telecaller Lead Created', '2024-07-01', '09:36:37', 'monika@praajasv.com'),
(105, 40, 24, 'Open', 'N.R', '2024-07-01', '17:12:33', 'DIPTI123@PRAAJASV.COM'),
(106, 40, 24, 'Open', 'NEXT  BATCH MA JOIN KARSE', '2024-07-01', '17:13:54', 'DIPTI123@PRAAJASV.COM'),
(107, 41, 24, 'Open', 'N.R', '2024-07-01', '17:18:57', 'DIPTI123@PRAAJASV.COM'),
(108, 42, 24, 'Open', 'VISIT  DONE', '2024-07-01', '17:21:48', 'DIPTI123@PRAAJASV.COM'),
(109, 43, 24, 'Open', 'DONE   GN 10  BATCH', '2024-07-01', '17:24:24', 'DIPTI123@PRAAJASV.COM'),
(110, 44, 24, 'Open', 'FEES  VADHRE LAGE', '2024-07-01', '17:27:10', 'DIPTI123@PRAAJASV.COM'),
(111, 45, 24, 'Open', 'VISIT  MATE AVSE', '2024-07-01', '17:31:11', 'DIPTI123@PRAAJASV.COM'),
(112, 64, 24, 'Open', 'Telecaller Lead Created', '2024-07-02', '16:02:38', 'DIPTI123@PRAAJASV.COM'),
(113, 65, 24, 'Open', 'Telecaller Lead Created', '2024-07-02', '16:04:25', 'DIPTI123@PRAAJASV.COM'),
(114, 66, 24, 'Open', 'Telecaller Lead Created', '2024-07-02', '16:06:36', 'DIPTI123@PRAAJASV.COM'),
(115, 67, 24, 'Open', 'Telecaller Lead Created', '2024-07-02', '16:07:19', 'DIPTI123@PRAAJASV.COM'),
(116, 68, 24, 'Open', 'Telecaller Lead Created', '2024-07-02', '16:10:09', 'DIPTI123@PRAAJASV.COM'),
(117, 69, 24, 'Open', 'Telecaller Lead Created', '2024-07-02', '16:26:57', 'DIPTI123@PRAAJASV.COM'),
(118, 70, 24, 'Open', 'Telecaller Lead Created', '2024-07-02', '16:28:49', 'DIPTI123@PRAAJASV.COM'),
(119, 71, 24, 'Open', 'Telecaller Lead Created', '2024-07-02', '16:30:19', 'DIPTI123@PRAAJASV.COM'),
(120, 72, 24, 'Open', 'Telecaller Lead Created', '2024-07-02', '16:32:09', 'DIPTI123@PRAAJASV.COM'),
(121, 73, 24, 'Open', 'Telecaller Lead Created', '2024-07-02', '16:33:25', 'DIPTI123@PRAAJASV.COM'),
(122, 74, 24, 'Open', 'Telecaller Lead Created', '2024-07-02', '16:34:42', 'DIPTI123@PRAAJASV.COM'),
(123, 75, 24, 'Open', 'Telecaller Lead Created', '2024-07-02', '16:36:59', 'DIPTI123@PRAAJASV.COM'),
(124, 76, 24, 'Open', 'Telecaller Lead Created', '2024-07-02', '16:37:43', 'DIPTI123@PRAAJASV.COM'),
(125, 77, 24, 'Open', 'Telecaller Lead Created', '2024-07-02', '16:39:20', 'DIPTI123@PRAAJASV.COM'),
(126, 78, 24, 'Open', 'Telecaller Lead Created', '2024-07-02', '16:45:18', 'DIPTI123@PRAAJASV.COM'),
(127, 79, 24, 'Open', 'Telecaller Lead Created', '2024-07-02', '16:45:54', 'DIPTI123@PRAAJASV.COM'),
(128, 80, 24, 'Open', 'Telecaller Lead Created', '2024-07-02', '16:47:36', 'DIPTI123@PRAAJASV.COM'),
(129, 50, 24, 'Open', 'KALE   AVSE   ', '2024-07-02', '17:03:01', 'DIPTI123@PRAAJASV.COM'),
(130, 51, 24, 'Open', 'N.R', '2024-07-02', '17:05:04', 'DIPTI123@PRAAJASV.COM'),
(131, 52, 24, 'Open', '1 WEEK  MA  AVSE', '2024-07-02', '17:06:27', 'DIPTI123@PRAAJASV.COM'),
(132, 53, 24, 'Open', 'N.R', '2024-07-02', '17:08:13', 'DIPTI123@PRAAJASV.COM'),
(133, 54, 24, 'Not Interested', 'OTHER  JOIN  ', '2024-07-02', '17:09:35', 'DIPTI123@PRAAJASV.COM'),
(134, 55, 24, 'Open', '1 WEEK  MA AVSE RAJA MALE ATLE', '2024-07-02', '17:11:20', 'DIPTI123@PRAAJASV.COM'),
(135, 56, 24, 'Open', 'N.R', '2024-07-02', '17:12:17', 'DIPTI123@PRAAJASV.COM'),
(136, 57, 24, 'Open', 'N.R', '2024-07-02', '17:13:15', 'DIPTI123@PRAAJASV.COM'),
(137, 58, 24, 'Open', 'N.R', '2024-07-02', '17:16:20', 'DIPTI123@PRAAJASV.COM'),
(138, 59, 24, 'Open', 'BUSY', '2024-07-02', '17:16:55', 'DIPTI123@PRAAJASV.COM'),
(139, 59, 24, 'Open', 'KALE  AVSE  DEMO MATE', '2024-07-02', '17:22:08', 'DIPTI123@PRAAJASV.COM'),
(140, 60, 24, 'Open', 'ONLY  B GROUP MATE J JOIN KARVU CHE', '2024-07-02', '17:24:53', 'DIPTI123@PRAAJASV.COM'),
(141, 61, 24, 'Open', 'MONDAY  AVSE  DEMO MATE', '2024-07-02', '17:25:54', 'DIPTI123@PRAAJASV.COM'),
(142, 62, 24, 'Open', 'BUSY', '2024-07-02', '17:26:56', 'DIPTI123@PRAAJASV.COM'),
(143, 64, 24, 'Open', 'BUSY', '2024-07-02', '17:27:26', 'DIPTI123@PRAAJASV.COM'),
(144, 65, 24, 'Open', 'CALL  FORWORD', '2024-07-02', '17:30:26', 'DIPTI123@PRAAJASV.COM'),
(145, 66, 24, 'Open', '1 ST DEMO GOOD  \r\nVISIT  DONE', '2024-07-02', '17:31:17', 'DIPTI123@PRAAJASV.COM'),
(146, 67, 24, 'Open', 'N.R', '2024-07-02', '17:33:22', 'DIPTI123@PRAAJASV.COM'),
(147, 68, 24, 'Open', 'N.R', '2024-07-02', '17:34:16', 'DIPTI123@PRAAJASV.COM'),
(148, 69, 24, 'Open', 'N.R', '2024-07-02', '17:35:07', 'DIPTI123@PRAAJASV.COM'),
(149, 70, 24, 'Open', 'N.R', '2024-07-02', '17:38:54', 'DIPTI123@PRAAJASV.COM'),
(150, 81, 24, 'Open', 'Telecaller Lead Created', '2024-07-04', '09:32:35', 'DIPTI123@PRAAJASV.COM'),
(151, 82, 24, 'Open', 'Telecaller Lead Created', '2024-07-04', '09:33:17', 'DIPTI123@PRAAJASV.COM'),
(152, 83, 24, 'Open', 'Telecaller Lead Created', '2024-07-04', '09:34:36', 'DIPTI123@PRAAJASV.COM'),
(153, 84, 24, 'Open', 'Telecaller Lead Created', '2024-07-04', '09:38:09', 'DIPTI123@PRAAJASV.COM'),
(154, 85, 24, 'Open', 'Telecaller Lead Created', '2024-07-04', '09:41:49', 'DIPTI123@PRAAJASV.COM'),
(155, 87, 24, 'Open', 'Telecaller Lead Created', '2024-07-04', '10:38:20', 'DIPTI123@PRAAJASV.COM'),
(156, 88, 24, 'Open', 'Telecaller Lead Created', '2024-07-04', '10:40:47', 'DIPTI123@PRAAJASV.COM'),
(157, 89, 24, 'Open', 'Telecaller Lead Created', '2024-07-04', '10:42:32', 'DIPTI123@PRAAJASV.COM'),
(158, 90, 24, 'Open', 'Telecaller Lead Created', '2024-07-04', '10:48:02', 'DIPTI123@PRAAJASV.COM'),
(159, 91, 24, 'Open', 'Telecaller Lead Created', '2024-07-04', '10:49:38', 'DIPTI123@PRAAJASV.COM'),
(160, 92, 24, 'Open', 'Telecaller Lead Created', '2024-07-05', '15:06:07', 'DIPTI123@PRAAJASV.COM'),
(161, 93, 24, 'Open', 'Telecaller Lead Created', '2024-07-05', '15:07:21', 'DIPTI123@PRAAJASV.COM'),
(162, 94, 24, 'Open', 'Telecaller Lead Created', '2024-07-05', '15:07:58', 'DIPTI123@PRAAJASV.COM'),
(163, 95, 24, 'Open', 'Telecaller Lead Created', '2024-07-05', '15:08:34', 'DIPTI123@PRAAJASV.COM'),
(164, 96, 24, 'Open', 'Telecaller Lead Created', '2024-07-05', '15:09:53', 'DIPTI123@PRAAJASV.COM'),
(165, 97, 24, 'Open', 'Telecaller Lead Created', '2024-07-05', '15:10:37', 'DIPTI123@PRAAJASV.COM'),
(166, 87, 24, 'Open', 'N.R', '2024-07-05', '16:08:21', 'DIPTI123@PRAAJASV.COM'),
(167, 85, 24, 'Open', 'DONE   GN 10', '2024-07-05', '16:10:12', 'DIPTI123@PRAAJASV.COM'),
(168, 84, 24, 'Open', 'VADODARA  COLLEGE  CHLU CHE TO ONLINE J KARSE', '2024-07-05', '16:16:46', 'DIPTI123@PRAAJASV.COM'),
(169, 98, 24, 'Open', 'Telecaller Lead Created', '2024-07-06', '15:47:59', 'DIPTI123@PRAAJASV.COM'),
(170, 99, 24, 'Open', 'Telecaller Lead Created', '2024-07-06', '15:49:17', 'DIPTI123@PRAAJASV.COM'),
(171, 100, 24, 'Open', 'Telecaller Lead Created', '2024-07-06', '17:11:22', 'DIPTI123@PRAAJASV.COM'),
(172, 101, 24, 'Open', 'Telecaller Lead Created', '2024-07-06', '17:12:36', 'DIPTI123@PRAAJASV.COM'),
(173, 102, 24, 'Open', 'Telecaller Lead Created', '2024-07-06', '17:13:20', 'DIPTI123@PRAAJASV.COM'),
(174, 103, 24, 'Open', 'Telecaller Lead Created', '2024-07-06', '17:18:55', 'DIPTI123@PRAAJASV.COM'),
(175, 104, 24, 'Open', 'Telecaller Lead Created', '2024-07-06', '17:20:12', 'DIPTI123@PRAAJASV.COM'),
(176, 105, 24, 'Open', 'Telecaller Lead Created', '2024-07-06', '17:21:31', 'DIPTI123@PRAAJASV.COM'),
(177, 106, 24, 'Open', 'Telecaller Lead Created', '2024-07-06', '17:22:02', 'DIPTI123@PRAAJASV.COM'),
(178, 106, 24, 'Open', 'DEMO  MATE AVSE', '2024-07-06', '17:28:53', 'DIPTI123@PRAAJASV.COM'),
(179, 105, 24, 'Open', 'DEMO MATE AVSE', '2024-07-06', '17:29:09', 'DIPTI123@PRAAJASV.COM'),
(180, 104, 26, 'Open', 'SUNAY VISIT MATE AVSE', '2024-07-06', '17:29:34', 'DIPTI123@PRAAJASV.COM'),
(181, 103, 24, 'Open', 'VISIT MATE AVSE', '2024-07-06', '17:29:54', 'DIPTI123@PRAAJASV.COM'),
(182, 102, 24, 'Open', 'A\"VAD VISIT MATE AVSE', '2024-07-06', '17:30:17', 'DIPTI123@PRAAJASV.COM'),
(183, 101, 24, 'Open', 'DEMO MATE AVSE', '2024-07-06', '17:31:47', 'DIPTI123@PRAAJASV.COM'),
(184, 100, 24, 'Open', 'MONDAY  AVSE', '2024-07-06', '17:36:34', 'DIPTI123@PRAAJASV.COM'),
(185, 96, 24, 'Open', '2 TH  DEMO ATTEND  PSI', '2024-07-08', '14:21:43', 'DIPTI123@PRAAJASV.COM'),
(186, 95, 24, 'Not Interested', '1 YEAR  MA CHE ATLE', '2024-07-08', '14:28:58', 'DIPTI123@PRAAJASV.COM'),
(187, 94, 24, 'Open', 'N.R', '2024-07-08', '14:30:01', 'DIPTI123@PRAAJASV.COM'),
(188, 94, 24, 'Open', '11 A GPSC MA DEMO MATE AVSE', '2024-07-08', '14:31:04', 'DIPTI123@PRAAJASV.COM'),
(189, 92, 24, 'Not Interested', 'JUNGADH  THI CHE TO NAHI AVI SHKE', '2024-07-08', '16:52:07', 'DIPTI123@PRAAJASV.COM'),
(190, 91, 24, 'Open', 'N.R', '2024-07-08', '16:53:47', 'DIPTI123@PRAAJASV.COM'),
(191, 107, 24, 'Open', 'Telecaller Lead Created', '2024-07-11', '12:07:22', 'Dipti123@praajasv.com'),
(192, 108, 24, 'Open', 'Telecaller Lead Created', '2024-07-11', '12:25:26', 'Dipti123@praajasv.com'),
(193, 109, 24, 'Open', 'Telecaller Lead Created', '2024-07-11', '12:27:30', 'Dipti123@praajasv.com'),
(194, 110, 24, 'Open', 'Telecaller Lead Created', '2024-07-11', '12:28:33', 'Dipti123@praajasv.com'),
(195, 111, 24, 'Open', 'Telecaller Lead Created', '2024-07-11', '12:30:46', 'Dipti123@praajasv.com'),
(196, 112, 24, 'Open', 'Telecaller Lead Created', '2024-07-11', '12:31:14', 'Dipti123@praajasv.com'),
(197, 113, 24, 'Open', 'Telecaller Lead Created', '2024-07-11', '12:31:54', 'Dipti123@praajasv.com'),
(198, 114, 24, 'Open', 'Telecaller Lead Created', '2024-07-11', '12:32:26', 'Dipti123@praajasv.com'),
(199, 115, 24, 'Open', 'Telecaller Lead Created', '2024-07-11', '12:33:20', 'Dipti123@praajasv.com'),
(200, 116, 24, 'Open', 'Telecaller Lead Created', '2024-07-11', '12:34:59', 'Dipti123@praajasv.com'),
(201, 117, 24, 'Open', 'Telecaller Lead Created', '2024-07-11', '12:37:10', 'Dipti123@praajasv.com'),
(202, 119, 24, 'Open', 'Telecaller Lead Created', '2024-07-11', '14:41:03', 'Dipti123@praajasv.com'),
(203, 3, 24, 'Open', 'BUSY', '2024-07-11', '14:42:49', 'Dipti123@praajasv.com'),
(204, 4, 24, 'Not Interested', 'BIJE ADD LIDHU CHE', '2024-07-11', '14:43:59', 'Dipti123@praajasv.com'),
(205, 5, 24, 'Open', 'N.R', '2024-07-11', '14:45:48', 'Dipti123@praajasv.com'),
(206, 6, 24, 'Not Interested', 'ONLY B GROUP MATE J JOIN KARVNU CHE', '2024-07-11', '14:46:38', 'Dipti123@praajasv.com'),
(207, 7, 24, 'Open', 'ADDMISSON  DONE', '2024-07-11', '15:15:41', 'Dipti123@praajasv.com'),
(208, 8, 24, 'Open', 'AGRICULTURE  BATCH PURCHES  KARSE', '2024-07-11', '15:19:07', 'Dipti123@praajasv.com'),
(209, 9, 24, 'Open', 'N.R', '2024-07-11', '15:20:14', 'Dipti123@praajasv.com'),
(210, 10, 24, 'Open', 'N.R', '2024-07-11', '15:21:33', 'Dipti123@praajasv.com'),
(211, 11, 24, 'Open', 'N.R', '2024-07-11', '15:22:51', 'Dipti123@praajasv.com'),
(212, 12, 24, 'Open', 'CCE  ADMISSION  DONE', '2024-07-11', '15:25:48', 'Dipti123@praajasv.com'),
(213, 13, 24, 'Not Interested', 'NATHI CLASS  KARVA', '2024-07-11', '15:37:45', 'Dipti123@praajasv.com'),
(214, 14, 24, 'Open', 'N.R', '2024-07-11', '15:39:58', 'Dipti123@praajasv.com'),
(215, 14, 24, 'Open', 'N.R', '2024-07-11', '15:45:18', 'Dipti123@praajasv.com'),
(216, 15, 24, 'Open', 'N.R', '2024-07-11', '15:47:08', 'Dipti123@praajasv.com'),
(217, 16, 24, 'Open', 'N.R', '2024-07-11', '16:01:18', 'Dipti123@praajasv.com'),
(218, 15, 24, 'Not Interested', 'FEES  VADHRE  LAGE CHE', '2024-07-11', '16:01:46', 'Dipti123@praajasv.com'),
(219, 17, 24, 'Open', 'ROOM NU SETING THY ATLE  AVI JASE', '2024-07-11', '16:07:52', 'Dipti123@praajasv.com'),
(220, 18, 24, 'Open', 'CALL  CUT', '2024-07-11', '16:14:23', 'Dipti123@praajasv.com'),
(221, 18, 24, 'Open', 'ADMISSION  DONE  GN 11', '2024-07-11', '16:15:56', 'Dipti123@praajasv.com'),
(222, 120, 24, 'Open', 'Telecaller Lead Created', '2024-07-12', '09:17:10', 'Dipti123@praajasv.com'),
(223, 122, 24, 'Open', 'Telecaller Lead Created', '2024-07-12', '11:06:05', 'Dipti123@praajasv.com'),
(224, 123, 24, 'Open', 'Telecaller Lead Created', '2024-07-12', '11:08:59', 'Dipti123@praajasv.com'),
(225, 124, 24, 'Open', 'Telecaller Lead Created', '2024-07-12', '11:21:42', 'Dipti123@praajasv.com'),
(226, 125, 24, 'Open', 'Telecaller Lead Created', '2024-07-12', '11:22:18', 'Dipti123@praajasv.com'),
(227, 19, 24, 'Open', 'BUSY', '2024-07-12', '11:36:50', 'Dipti123@praajasv.com'),
(228, 20, 24, 'Not Interested', 'NOT INTERSTED', '2024-07-12', '11:37:15', 'Dipti123@praajasv.com'),
(229, 21, 24, 'Not Interested', 'REFUND  THI GAYU CHE', '2024-07-12', '11:37:40', 'Dipti123@praajasv.com'),
(230, 22, 24, 'Open', 'N.R', '2024-07-12', '15:12:05', 'Dipti123@praajasv.com'),
(231, 126, 24, 'Open', 'Telecaller Lead Created', '2024-07-15', '15:42:43', 'Dipti123@praajasv.com'),
(232, 127, 24, 'Open', 'Telecaller Lead Created', '2024-07-15', '15:43:51', 'Dipti123@praajasv.com'),
(233, 128, 24, 'Open', 'Telecaller Lead Created', '2024-07-15', '15:44:47', 'Dipti123@praajasv.com'),
(234, 129, 24, 'Open', 'Telecaller Lead Created', '2024-07-15', '15:46:00', 'Dipti123@praajasv.com'),
(235, 130, 24, 'Open', 'Telecaller Lead Created', '2024-07-15', '15:46:58', 'Dipti123@praajasv.com'),
(236, 131, 24, 'Open', 'Telecaller Lead Created', '2024-07-15', '15:48:54', 'Dipti123@praajasv.com'),
(237, 132, 24, 'Open', 'Telecaller Lead Created', '2024-07-15', '16:20:15', 'Dipti123@praajasv.com'),
(238, 133, 24, 'Open', 'Telecaller Lead Created', '2024-07-15', '16:21:42', 'Dipti123@praajasv.com'),
(239, 134, 24, 'Open', 'Telecaller Lead Created', '2024-07-15', '16:22:34', 'Dipti123@praajasv.com'),
(240, 135, 24, 'Open', 'Telecaller Lead Created', '2024-07-15', '16:25:09', 'Dipti123@praajasv.com'),
(241, 135, 24, 'Open', 'N.R', '2024-07-15', '16:27:01', 'Dipti123@praajasv.com'),
(242, 136, 24, 'Open', 'Telecaller Lead Created', '2024-07-16', '11:15:09', 'Dipti123@praajasv.com'),
(243, 137, 24, 'Open', 'Telecaller Lead Created', '2024-07-16', '11:15:39', 'Dipti123@praajasv.com'),
(244, 138, 24, 'Open', 'Telecaller Lead Created', '2024-07-16', '11:27:02', 'Dipti123@praajasv.com'),
(245, 139, 24, 'Open', 'Telecaller Lead Created', '2024-07-16', '11:30:48', 'Dipti123@praajasv.com'),
(246, 140, 24, 'Open', 'Telecaller Lead Created', '2024-07-16', '11:31:59', 'Dipti123@praajasv.com'),
(247, 141, 24, 'Open', 'Telecaller Lead Created', '2024-07-16', '11:33:59', 'Dipti123@praajasv.com'),
(248, 141, 24, 'Open', 'S.W.O', '2024-07-16', '11:48:09', 'Dipti123@praajasv.com'),
(249, 140, 24, 'Open', 'N.R', '2024-07-16', '11:49:28', 'Dipti123@praajasv.com'),
(250, 139, 24, 'Open', '2 KE  3 DIWAS MA AVSE', '2024-07-16', '11:54:49', 'Dipti123@praajasv.com'),
(251, 138, 24, 'Open', 'N.R', '2024-07-16', '11:56:12', 'Dipti123@praajasv.com'),
(252, 137, 24, 'Open', '1 WEEK  MA AVSE', '2024-07-16', '11:57:36', 'Dipti123@praajasv.com'),
(253, 136, 24, 'Open', 'BUSY', '2024-07-16', '11:58:44', 'Dipti123@praajasv.com'),
(254, 135, 24, 'Open', 'N.R', '2024-07-16', '12:05:00', 'Dipti123@praajasv.com'),
(255, 134, 24, 'Open', 'TOMORROW   ACDEMY   VISIT', '2024-07-16', '12:17:20', 'Dipti123@praajasv.com'),
(256, 133, 24, 'Open', 'N.R', '2024-07-16', '12:18:27', 'Dipti123@praajasv.com'),
(257, 132, 24, 'Open', 'N.R', '2024-07-16', '12:19:21', 'Dipti123@praajasv.com'),
(258, 131, 24, 'Open', 'BUSY', '2024-07-16', '12:28:16', 'Dipti123@praajasv.com'),
(259, 130, 24, 'Open', 'N.R', '2024-07-16', '12:29:16', 'Dipti123@praajasv.com'),
(260, 129, 24, 'Open', 'TODAY   ACDEMY  VISIT', '2024-07-16', '12:30:52', 'Dipti123@praajasv.com'),
(261, 128, 24, 'Open', 'N.R', '2024-07-16', '12:32:02', 'Dipti123@praajasv.com'),
(262, 127, 24, 'Not Interested', 'CALL  CUT', '2024-07-16', '12:33:11', 'Dipti123@praajasv.com'),
(263, 126, 24, 'Open', 'DEMO ATTEND  KARE  CHE', '2024-07-16', '12:35:08', 'Dipti123@praajasv.com'),
(264, 125, 24, 'Open', 'INVALID  NUMBER', '2024-07-16', '12:42:35', 'Dipti123@praajasv.com'),
(265, 124, 24, 'Open', 'KALE AVSE  VISIT MATE', '2024-07-16', '12:45:24', 'Dipti123@praajasv.com'),
(266, 123, 24, 'Open', 'VICHARI NE KESE', '2024-07-16', '12:47:04', 'Dipti123@praajasv.com'),
(267, 122, 24, 'Open', 'N.R', '2024-07-16', '12:48:16', 'Dipti123@praajasv.com'),
(268, 120, 24, 'Open', '1 WEEK  MA AVSE COLLAGE NU KAM CHE', '2024-07-16', '12:55:30', 'Dipti123@praajasv.com'),
(269, 142, 26, 'Open', 'Telecaller Lead Created', '2024-07-16', '14:54:49', 'monika@praajasv.com'),
(270, 143, 26, 'Open', 'Telecaller Lead Created', '2024-07-16', '14:55:50', 'monika@praajasv.com'),
(271, 142, 24, 'Open', 'CALL NOT RECEIVED', '2024-07-16', '14:56:19', 'monika@praajasv.com'),
(272, 143, 24, 'Open', 'AGRICULTURE OFFLINE INTRESTED', '2024-07-16', '14:57:13', 'monika@praajasv.com'),
(273, 144, 26, 'Open', 'Telecaller Lead Created', '2024-07-16', '14:57:55', 'monika@praajasv.com'),
(274, 144, 24, 'Not Interested', 'NOT INTRESTED', '2024-07-16', '14:58:13', 'monika@praajasv.com'),
(275, 145, 26, 'Open', 'Telecaller Lead Created', '2024-07-16', '14:59:02', 'monika@praajasv.com'),
(276, 145, 24, 'Not Interested', 'NOT INTRESTED\r\n', '2024-07-16', '14:59:14', 'monika@praajasv.com'),
(277, 63, 24, 'Open', 'AGRICULTURE PURCHASED', '2024-07-16', '15:02:37', 'monika@praajasv.com'),
(278, 119, 24, 'Open', 'N.R', '2024-07-16', '16:40:43', 'Dipti123@praajasv.com'),
(279, 117, 24, 'Open', 'N.R', '2024-07-16', '16:41:50', 'Dipti123@praajasv.com'),
(280, 117, 24, 'Open', 'C.B  KARVO', '2024-07-16', '16:46:32', 'Dipti123@praajasv.com'),
(281, 117, 24, 'Open', 'BUSY', '2024-07-16', '16:47:16', 'Dipti123@praajasv.com'),
(282, 114, 24, 'Open', '2 TH  DEMO', '2024-07-16', '16:48:14', 'Dipti123@praajasv.com'),
(283, 113, 24, 'Open', 'CALL  ENDED', '2024-07-16', '16:49:03', 'Dipti123@praajasv.com'),
(284, 112, 24, 'Open', 'N.R', '2024-07-16', '16:50:06', 'Dipti123@praajasv.com'),
(285, 111, 24, 'Not Interested', 'GIR SOMNATH COLLAGE MA ADMISSION THI GYU CHE', '2024-07-16', '16:52:31', 'Dipti123@praajasv.com'),
(286, 110, 24, 'Open', 'N.R', '2024-07-16', '17:13:01', 'Dipti123@praajasv.com'),
(287, 109, 24, 'Open', 'N.R', '2024-07-17', '12:01:12', 'Dipti123@praajasv.com'),
(288, 109, 24, 'Not Interested', 'FEES  VADHRE LAGE CHE', '2024-07-17', '12:21:35', 'Dipti123@praajasv.com'),
(289, 108, 24, 'Open', 'WRONG   NUMBER', '2024-07-17', '12:24:25', 'Dipti123@praajasv.com'),
(290, 107, 24, 'Open', 'N.R', '2024-07-17', '12:26:11', 'Dipti123@praajasv.com'),
(291, 104, 26, 'Open', 'VICHARI NE KESE', '2024-07-17', '12:41:05', 'Dipti123@praajasv.com'),
(292, 103, 24, 'Open', 'KALE  UPSC  MA DEMO MATE AVSE', '2024-07-17', '14:21:09', 'Dipti123@praajasv.com'),
(293, 102, 24, 'Not Interested', 'GAYAN LIVE  MA JOINKARYU CHE', '2024-07-17', '14:22:59', 'Dipti123@praajasv.com'),
(294, 101, 24, 'Open', 'N.R', '2024-07-17', '14:25:58', 'Dipti123@praajasv.com'),
(295, 100, 24, 'Open', 'N.R', '2024-07-17', '14:27:51', 'Dipti123@praajasv.com'),
(296, 99, 24, 'Open', 'CALL KARSE', '2024-07-17', '14:30:20', 'Dipti123@praajasv.com'),
(297, 98, 24, 'Open', '2  DAYS  MA FEES  PAY KARSE', '2024-07-17', '14:32:59', 'Dipti123@praajasv.com'),
(298, 97, 24, 'Open', 'CALL   CUT', '2024-07-17', '14:35:23', 'Dipti123@praajasv.com'),
(299, 96, 24, 'Not Interested', 'RAJKOT CLASS KARYA CHE TO IDEA NATHI AVTO', '2024-07-17', '14:38:01', 'Dipti123@praajasv.com'),
(300, 95, 24, 'Open', 'N.R', '2024-07-17', '14:39:05', 'Dipti123@praajasv.com'),
(301, 94, 24, 'Open', 'VISIT DONE   & FRI AVSE  VISIT MATE', '2024-07-17', '14:42:15', 'Dipti123@praajasv.com'),
(302, 93, 24, 'Open', 'GN 11  ADMISSION   DONE', '2024-07-17', '14:45:30', 'Dipti123@praajasv.com'),
(303, 92, 24, 'Not Interested', 'NOT  INTERSTED', '2024-07-17', '14:46:37', 'Dipti123@praajasv.com'),
(304, 91, 24, 'Not Interested', 'DEMO MATE  AVSE', '2024-07-17', '14:51:27', 'Dipti123@praajasv.com'),
(305, 91, 24, 'Open', 'KALE DEMO  MATE  AVSE', '2024-07-17', '14:56:11', 'Dipti123@praajasv.com'),
(306, 90, 24, 'Open', 'N.R', '2024-07-17', '14:59:04', 'Dipti123@praajasv.com'),
(307, 89, 24, 'Open', 'NEXT MONTH MA AVSE', '2024-07-17', '15:03:35', 'Dipti123@praajasv.com'),
(308, 88, 24, 'Open', 'CCE  ADMISSON  DONE', '2024-07-17', '15:06:00', 'Dipti123@praajasv.com'),
(309, 87, 24, 'Open', 'N.R', '2024-07-17', '15:07:13', 'Dipti123@praajasv.com'),
(310, 85, 24, 'Open', 'N.R', '2024-07-17', '15:08:16', 'Dipti123@praajasv.com'),
(311, 84, 24, 'Open', 'NEXT YEAR  JOIN KARSE', '2024-07-17', '15:09:28', 'Dipti123@praajasv.com'),
(312, 83, 24, 'Open', 'N.R', '2024-07-17', '16:12:58', 'Dipti123@praajasv.com'),
(313, 82, 24, 'Open', 'N.R', '2024-07-17', '16:14:16', 'Dipti123@praajasv.com'),
(314, 81, 24, 'Not Interested', 'A\"VAD VISIT MATE JASE', '2024-07-17', '16:16:56', 'Dipti123@praajasv.com'),
(315, 146, 24, 'Open', 'Telecaller Lead Created', '2024-07-18', '09:37:51', 'Dipti123@praajasv.com'),
(316, 147, 24, 'Open', 'Telecaller Lead Created', '2024-07-18', '09:38:34', 'Dipti123@praajasv.com'),
(317, 148, 24, 'Open', 'Telecaller Lead Created', '2024-07-18', '09:39:12', 'Dipti123@praajasv.com'),
(318, 149, 24, 'Open', 'Telecaller Lead Created', '2024-07-18', '09:41:16', 'Dipti123@praajasv.com'),
(319, 150, 24, 'Open', 'Telecaller Lead Created', '2024-07-18', '09:43:22', 'Dipti123@praajasv.com'),
(320, 151, 24, 'Open', 'Telecaller Lead Created', '2024-07-18', '09:46:01', 'Dipti123@praajasv.com'),
(321, 152, 24, 'Open', 'Telecaller Lead Created', '2024-07-22', '14:37:08', 'Dipti123@praajasv.com'),
(322, 153, 24, 'Open', 'Telecaller Lead Created', '2024-07-22', '14:38:01', 'Dipti123@praajasv.com'),
(323, 154, 24, 'Open', 'Telecaller Lead Created', '2024-07-22', '14:39:30', 'Dipti123@praajasv.com'),
(324, 155, 24, 'Open', 'Telecaller Lead Created', '2024-07-22', '14:40:52', 'Dipti123@praajasv.com'),
(325, 156, 24, 'Open', 'Telecaller Lead Created', '2024-07-22', '14:42:14', 'Dipti123@praajasv.com'),
(326, 157, 24, 'Open', 'Telecaller Lead Created', '2024-07-22', '14:44:57', 'Dipti123@praajasv.com'),
(327, 158, 24, 'Open', 'Telecaller Lead Created', '2024-07-22', '14:50:24', 'Dipti123@praajasv.com'),
(328, 159, 24, 'Open', 'Telecaller Lead Created', '2024-07-22', '14:51:32', 'Dipti123@praajasv.com'),
(329, 160, 24, 'Open', 'Telecaller Lead Created', '2024-07-22', '14:54:38', 'Dipti123@praajasv.com'),
(330, 161, 24, 'Open', 'Telecaller Lead Created', '2024-07-22', '14:56:11', 'Dipti123@praajasv.com'),
(331, 162, 24, 'Open', 'Telecaller Lead Created', '2024-07-22', '14:56:55', 'Dipti123@praajasv.com'),
(332, 163, 24, 'Open', 'Telecaller Lead Created', '2024-07-22', '14:57:47', 'Dipti123@praajasv.com'),
(333, 163, 24, 'Open', 'N.R', '2024-07-22', '14:59:46', 'Dipti123@praajasv.com'),
(334, 162, 24, 'Open', 'KALE  AVSE DEMO MATE', '2024-07-22', '15:02:36', 'Dipti123@praajasv.com'),
(335, 161, 24, 'Open', 'N.R', '2024-07-22', '15:03:40', 'Dipti123@praajasv.com'),
(336, 160, 24, 'Open', 'N.R', '2024-07-22', '15:15:16', 'Dipti123@praajasv.com'),
(337, 159, 24, 'Open', 'KALE AVSE DEMO MATE', '2024-07-22', '15:17:23', 'Dipti123@praajasv.com'),
(338, 158, 24, 'Open', 'N.R', '2024-07-22', '15:19:29', 'Dipti123@praajasv.com'),
(339, 157, 24, 'Open', 'KALE AVSE DEMO MATE', '2024-07-22', '15:23:34', 'Dipti123@praajasv.com'),
(340, 156, 24, 'Open', 'N.R', '2024-07-22', '15:24:38', 'Dipti123@praajasv.com'),
(341, 156, 24, 'Not Interested', 'JUST  JOVA MATE AYI TI', '2024-07-22', '15:25:59', 'Dipti123@praajasv.com'),
(342, 155, 24, 'Open', 'CALL  ENDED', '2024-07-22', '15:28:33', 'Dipti123@praajasv.com'),
(343, 154, 24, 'Open', 'N.R', '2024-07-22', '15:30:16', 'Dipti123@praajasv.com'),
(344, 153, 24, 'Open', 'N.R', '2024-07-22', '15:38:06', 'Dipti123@praajasv.com'),
(345, 152, 24, 'Open', '1  WEEK MA AVSE', '2024-07-22', '15:43:20', 'Dipti123@praajasv.com'),
(346, 148, 24, 'Not Interested', '1 MONTH  THI GAYO CHE ', '2024-07-22', '15:46:14', 'Dipti123@praajasv.com'),
(347, 151, 24, 'Open', 'N.R', '2024-07-22', '15:47:42', 'Dipti123@praajasv.com'),
(348, 141, 24, 'Open', '2 KE 3 DIWS MA AVSE', '2024-07-22', '15:49:57', 'Dipti123@praajasv.com'),
(349, 150, 24, 'Open', '3 TH  DEMO  UPSC MA', '2024-07-22', '16:01:48', 'Dipti123@praajasv.com'),
(350, 149, 24, 'Open', '2 DAYS MA AVSE DEMO MATE', '2024-07-22', '16:03:50', 'Dipti123@praajasv.com'),
(351, 147, 24, 'Open', 'BUSY', '2024-07-22', '16:06:14', 'Dipti123@praajasv.com'),
(352, 146, 24, 'Open', 'N.R', '2024-07-22', '16:07:10', 'Dipti123@praajasv.com'),
(353, 141, 24, 'Open', '3 KE 4DAYS MA AVSE', '2024-07-22', '16:16:15', 'Dipti123@praajasv.com'),
(354, 154, 24, 'Open', 'ONLY ANSWER WRITING MATE', '2024-07-22', '16:19:22', 'Dipti123@praajasv.com'),
(355, 139, 24, 'Open', '2 KE  3 DIWAS  MA  AVSE', '2024-07-22', '16:37:30', 'Dipti123@praajasv.com'),
(356, 138, 24, 'Open', 'N.R', '2024-07-22', '16:49:30', 'Dipti123@praajasv.com'),
(357, 137, 24, 'Not Interested', 'N.R', '2024-07-22', '16:50:48', 'Dipti123@praajasv.com'),
(358, 136, 24, 'Open', 'N.R', '2024-07-22', '16:51:38', 'Dipti123@praajasv.com'),
(359, 135, 24, 'Open', 'N.R', '2024-07-22', '16:52:50', 'Dipti123@praajasv.com'),
(360, 134, 24, 'Open', 'VISIT KARI GAYA CHE', '2024-07-22', '16:57:53', 'Dipti123@praajasv.com'),
(361, 133, 24, 'Open', '1  WEEK  MA   AVSE', '2024-07-22', '17:11:04', 'Dipti123@praajasv.com'),
(362, 132, 24, 'Open', 'N.R', '2024-07-22', '17:15:30', 'Dipti123@praajasv.com'),
(363, 131, 24, 'Open', 'N.R', '2024-07-22', '17:19:33', 'Dipti123@praajasv.com'),
(364, 130, 24, 'Open', 'BUSY', '2024-07-22', '17:24:44', 'Dipti123@praajasv.com'),
(365, 120, 24, 'Open', 'N.R', '2024-07-22', '17:25:40', 'Dipti123@praajasv.com'),
(366, 119, 24, 'Open', 'N.R', '2024-07-22', '17:26:57', 'Dipti123@praajasv.com'),
(367, 158, 24, 'Open', 'N.R', '2024-07-22', '17:27:47', 'Dipti123@praajasv.com'),
(368, 124, 24, 'Open', 'SELF PERPRATION  KARE CHE', '2024-07-22', '17:29:19', 'Dipti123@praajasv.com'),
(369, 128, 24, 'Open', 'ONLINE   LECTURE MATE', '2024-07-22', '17:41:49', 'Dipti123@praajasv.com'),
(370, 129, 24, 'Not Interested', 'AGAD   VAT THAI GAYI CHE', '2024-07-22', '17:47:48', 'Dipti123@praajasv.com'),
(371, 126, 24, 'Open', 'N.R', '2024-07-22', '17:49:11', 'Dipti123@praajasv.com'),
(372, 122, 24, 'Open', 'N.R', '2024-07-22', '17:50:55', 'Dipti123@praajasv.com'),
(373, 117, 24, 'Open', 'NEXT BATCH', '2024-07-22', '17:52:51', 'Dipti123@praajasv.com'),
(374, 116, 24, 'Open', 'N.R', '2024-07-22', '17:53:48', 'Dipti123@praajasv.com'),
(375, 115, 24, 'Open', 'N.R', '2024-07-22', '17:55:39', 'Dipti123@praajasv.com'),
(376, 114, 24, 'Open', 'KALE  FEES PAY  KARSE', '2024-07-22', '17:59:49', 'Dipti123@praajasv.com'),
(377, 113, 24, 'Open', 'FEES PAY KARVNI CHE', '2024-07-22', '18:01:59', 'Dipti123@praajasv.com'),
(378, 112, 24, 'Open', 'N.R', '2024-07-22', '18:03:59', 'Dipti123@praajasv.com'),
(379, 110, 24, 'Open', 'S.W.O', '2024-07-22', '18:05:24', 'Dipti123@praajasv.com'),
(380, 164, 24, 'Open', 'Telecaller Lead Created', '2024-07-23', '09:10:29', 'Dipti123@praajasv.com'),
(381, 165, 24, 'Open', 'Telecaller Lead Created', '2024-07-23', '09:11:46', 'Dipti123@praajasv.com'),
(382, 166, 24, 'Open', 'Telecaller Lead Created', '2024-07-23', '09:12:35', 'Dipti123@praajasv.com'),
(383, 167, 24, 'Open', 'Telecaller Lead Created', '2024-07-23', '09:13:17', 'Dipti123@praajasv.com'),
(384, 110, 24, 'Open', 'FRIDAY   DEMO MATE AVSE', '2024-07-23', '11:04:28', 'Dipti123@praajasv.com'),
(385, 108, 24, 'Open', 'WRONG   NUMBER', '2024-07-23', '11:05:58', 'Dipti123@praajasv.com'),
(386, 107, 24, 'Open', 'NEXT  BATCH  MA JOIN KARSE', '2024-07-23', '11:07:33', 'Dipti123@praajasv.com'),
(387, 104, 26, 'Open', 'NEXT  YEAR  ADD LESE', '2024-07-23', '11:09:33', 'Dipti123@praajasv.com'),
(388, 103, 24, 'Open', 'N.R', '2024-07-23', '11:10:40', 'Dipti123@praajasv.com'),
(389, 168, 24, 'Open', 'Telecaller Lead Created', '2024-07-25', '10:57:22', 'Dipti123@praajasv.com'),
(390, 169, 24, 'Open', 'Telecaller Lead Created', '2024-07-25', '10:58:04', 'Dipti123@praajasv.com'),
(391, 170, 24, 'Open', 'Telecaller Lead Created', '2024-07-25', '10:59:39', 'Dipti123@praajasv.com'),
(392, 171, 24, 'Open', 'Telecaller Lead Created', '2024-07-25', '11:00:18', 'Dipti123@praajasv.com'),
(393, 172, 24, 'Open', 'Telecaller Lead Created', '2024-07-25', '11:01:27', 'Dipti123@praajasv.com'),
(394, 173, 24, 'Open', 'Telecaller Lead Created', '2024-07-25', '11:01:57', 'Dipti123@praajasv.com'),
(395, 174, 24, 'Open', 'Telecaller Lead Created', '2024-07-25', '11:02:28', 'Dipti123@praajasv.com'),
(396, 175, 24, 'Open', 'Telecaller Lead Created', '2024-07-25', '11:03:03', 'Dipti123@praajasv.com'),
(397, 145, 24, 'Not Interested', 'ttt', '2025-06-07', '17:42:23', 'admin@praajasv.com');

-- --------------------------------------------------------

--
-- Table structure for table `telecaller_lead_remarks`
--

CREATE TABLE `telecaller_lead_remarks` (
  `ID` int(11) NOT NULL,
  `LeadID` int(11) NOT NULL DEFAULT -1,
  `Remark` varchar(256) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `telecaller_lead_remarks`
--

INSERT INTO `telecaller_lead_remarks` (`ID`, `LeadID`, `Remark`, `CreatedDate`, `CreatedTime`, `CreatedBy`, `IsActive`) VALUES
(1, 2, 'visit done ', '2024-06-28', '09:01:50', 'DIPTI123@PRAAJASV.COM', 1),
(2, 2, 'OUT OF  COVERAGE', '2024-06-28', '15:21:30', 'DIPTI123@PRAAJASV.COM', 1),
(3, 3, 'N.R', '2024-06-28', '15:22:34', 'DIPTI123@PRAAJASV.COM', 1),
(4, 4, 'EVENING  BATCH MATE CALL KARVO', '2024-06-28', '15:24:00', 'DIPTI123@PRAAJASV.COM', 1),
(5, 5, 'BUSY', '2024-06-28', '15:26:13', 'DIPTI123@PRAAJASV.COM', 1),
(6, 6, 'N.R', '2024-06-28', '15:27:14', 'DIPTI123@PRAAJASV.COM', 1),
(7, 6, 'ONLY B GROUP MATE JOIN KARVU CHE', '2024-06-28', '15:28:33', 'DIPTI123@PRAAJASV.COM', 1),
(8, 7, 'N.R', '2024-06-28', '16:04:50', 'DIPTI123@PRAAJASV.COM', 1),
(9, 8, 'NEXT  BATCH   MA JOIN  KARSE', '2024-06-28', '16:10:04', 'DIPTI123@PRAAJASV.COM', 1),
(10, 9, 'N.R', '2024-06-28', '17:15:37', 'DIPTI123@PRAAJASV.COM', 1),
(11, 10, 'MONDAY   VISIT MATE AVSE', '2024-06-28', '17:19:16', 'DIPTI123@PRAAJASV.COM', 1),
(12, 11, 'N.R', '2024-06-28', '17:20:56', 'DIPTI123@PRAAJASV.COM', 1),
(13, 12, '29  A AVSE  VISIT MATE', '2024-06-28', '17:27:18', 'DIPTI123@PRAAJASV.COM', 1),
(14, 13, 'N .R', '2024-06-28', '17:31:58', 'DIPTI123@PRAAJASV.COM', 1),
(15, 14, 'DEMO MATE AVE CHE', '2024-06-28', '17:35:41', 'DIPTI123@PRAAJASV.COM', 1),
(16, 15, 'OFFLINE MA FEES VADHRE LAGE CHE TO ONLINE NU VICHARSE', '2024-06-28', '17:52:36', 'DIPTI123@PRAAJASV.COM', 1),
(17, 16, 'N.R', '2024-06-29', '15:31:54', 'DIPTI123@PRAAJASV.COM', 1),
(18, 17, 'A\"VAD   JOIN KARSE', '2024-06-29', '15:34:49', 'DIPTI123@PRAAJASV.COM', 1),
(19, 18, 'CALL   ENDED', '2024-06-29', '15:37:57', 'DIPTI123@PRAAJASV.COM', 1),
(20, 18, 'BUSY', '2024-06-29', '16:01:16', 'DIPTI123@PRAAJASV.COM', 1),
(21, 19, 'N.R', '2024-06-29', '16:03:50', 'DIPTI123@PRAAJASV.COM', 1),
(22, 20, 'N.R', '2024-06-29', '16:05:55', 'DIPTI123@PRAAJASV.COM', 1),
(23, 21, 'MAINS LIVE ONLINE DONE', '2024-06-29', '16:06:27', 'DIPTI123@PRAAJASV.COM', 1),
(24, 22, 'BUSY', '2024-06-29', '16:09:08', 'DIPTI123@PRAAJASV.COM', 1),
(25, 23, 'KALE  AVSE ', '2024-06-29', '16:11:27', 'DIPTI123@PRAAJASV.COM', 1),
(26, 20, 'BIJE JOIN KARYU CHE', '2024-06-29', '16:12:16', 'DIPTI123@PRAAJASV.COM', 1),
(27, 24, 'CHAL MA JOIN KARYU CHE', '2024-06-29', '16:18:27', 'DIPTI123@PRAAJASV.COM', 1),
(28, 25, 'N.R', '2024-06-29', '16:20:12', 'DIPTI123@PRAAJASV.COM', 1),
(29, 26, 'N.R', '2024-06-29', '16:22:01', 'DIPTI123@PRAAJASV.COM', 1),
(30, 27, 'MSC. PACHI UPSC KARSE ', '2024-06-29', '16:23:26', 'DIPTI123@PRAAJASV.COM', 1),
(31, 28, 'N.R', '2024-06-29', '16:28:46', 'DIPTI123@PRAAJASV.COM', 1),
(32, 29, 'N.R', '2024-06-29', '16:31:15', 'DIPTI123@PRAAJASV.COM', 1),
(33, 30, 'DEMO MATE AVSE 1 KE 2 DIVAS MATE', '2024-06-29', '16:33:54', 'DIPTI123@PRAAJASV.COM', 1),
(34, 31, 'HIGH COURT PRE MATE', '2024-06-29', '16:40:26', 'DIPTI123@PRAAJASV.COM', 1),
(35, 32, 'MAINS  LIVE  DONE', '2024-06-29', '16:40:58', 'DIPTI123@PRAAJASV.COM', 1),
(36, 33, 'CALL  CUT', '2024-06-29', '16:42:25', 'DIPTI123@PRAAJASV.COM', 1),
(37, 34, 'MAINS OFFLINE 1 DEMO ATTED\r\nVISIT DONE', '2024-06-29', '16:45:10', 'DIPTI123@PRAAJASV.COM', 1),
(38, 35, '30 /6  A  RUBRU  AVSE ', '2024-06-29', '16:46:57', 'DIPTI123@PRAAJASV.COM', 1),
(39, 36, 'JULY MONTH MA JOIN KARSE', '2024-06-29', '16:54:45', 'DIPTI123@PRAAJASV.COM', 1),
(40, 37, 'VISIT DONE \r\nNEXT BATCH MA JOIN KARSE\r\n', '2024-06-29', '17:03:09', 'DIPTI123@PRAAJASV.COM', 1),
(41, 38, '2  &3 DAYS MA VISIT MATE AVSE', '2024-06-29', '17:08:18', 'DIPTI123@PRAAJASV.COM', 1),
(42, 40, 'N.R', '2024-07-01', '17:12:33', 'DIPTI123@PRAAJASV.COM', 1),
(43, 40, 'NEXT  BATCH MA JOIN KARSE', '2024-07-01', '17:13:54', 'DIPTI123@PRAAJASV.COM', 1),
(44, 41, 'N.R', '2024-07-01', '17:18:57', 'DIPTI123@PRAAJASV.COM', 1),
(45, 42, 'VISIT  DONE', '2024-07-01', '17:21:48', 'DIPTI123@PRAAJASV.COM', 1),
(46, 43, 'DONE   GN 10  BATCH', '2024-07-01', '17:24:24', 'DIPTI123@PRAAJASV.COM', 1),
(47, 44, 'FEES  VADHRE LAGE', '2024-07-01', '17:27:10', 'DIPTI123@PRAAJASV.COM', 1),
(48, 45, 'VISIT  MATE AVSE', '2024-07-01', '17:31:11', 'DIPTI123@PRAAJASV.COM', 1),
(49, 50, 'KALE   AVSE   ', '2024-07-02', '17:03:01', 'DIPTI123@PRAAJASV.COM', 1),
(50, 51, 'N.R', '2024-07-02', '17:05:04', 'DIPTI123@PRAAJASV.COM', 1),
(51, 52, '1 WEEK  MA  AVSE', '2024-07-02', '17:06:27', 'DIPTI123@PRAAJASV.COM', 1),
(52, 53, 'N.R', '2024-07-02', '17:08:13', 'DIPTI123@PRAAJASV.COM', 1),
(53, 54, 'OTHER  JOIN  ', '2024-07-02', '17:09:35', 'DIPTI123@PRAAJASV.COM', 1),
(54, 55, '1 WEEK  MA AVSE RAJA MALE ATLE', '2024-07-02', '17:11:20', 'DIPTI123@PRAAJASV.COM', 1),
(55, 56, 'N.R', '2024-07-02', '17:12:17', 'DIPTI123@PRAAJASV.COM', 1),
(56, 57, 'N.R', '2024-07-02', '17:13:15', 'DIPTI123@PRAAJASV.COM', 1),
(57, 58, 'N.R', '2024-07-02', '17:16:20', 'DIPTI123@PRAAJASV.COM', 1),
(58, 59, 'BUSY', '2024-07-02', '17:16:55', 'DIPTI123@PRAAJASV.COM', 1),
(59, 59, 'KALE  AVSE  DEMO MATE', '2024-07-02', '17:22:08', 'DIPTI123@PRAAJASV.COM', 1),
(60, 60, 'ONLY  B GROUP MATE J JOIN KARVU CHE', '2024-07-02', '17:24:53', 'DIPTI123@PRAAJASV.COM', 1),
(61, 61, 'MONDAY  AVSE  DEMO MATE', '2024-07-02', '17:25:54', 'DIPTI123@PRAAJASV.COM', 1),
(62, 62, 'BUSY', '2024-07-02', '17:26:56', 'DIPTI123@PRAAJASV.COM', 1),
(63, 64, 'BUSY', '2024-07-02', '17:27:26', 'DIPTI123@PRAAJASV.COM', 1),
(64, 65, 'CALL  FORWORD', '2024-07-02', '17:30:26', 'DIPTI123@PRAAJASV.COM', 1),
(65, 66, '1 ST DEMO GOOD  \r\nVISIT  DONE', '2024-07-02', '17:31:17', 'DIPTI123@PRAAJASV.COM', 1),
(66, 67, 'N.R', '2024-07-02', '17:33:22', 'DIPTI123@PRAAJASV.COM', 1),
(67, 68, 'N.R', '2024-07-02', '17:34:16', 'DIPTI123@PRAAJASV.COM', 1),
(68, 69, 'N.R', '2024-07-02', '17:35:07', 'DIPTI123@PRAAJASV.COM', 1),
(69, 70, 'N.R', '2024-07-02', '17:38:54', 'DIPTI123@PRAAJASV.COM', 1),
(70, 87, 'N.R', '2024-07-05', '16:08:21', 'DIPTI123@PRAAJASV.COM', 1),
(71, 85, 'DONE   GN 10', '2024-07-05', '16:10:12', 'DIPTI123@PRAAJASV.COM', 1),
(72, 84, 'VADODARA  COLLEGE  CHLU CHE TO ONLINE J KARSE', '2024-07-05', '16:16:46', 'DIPTI123@PRAAJASV.COM', 1),
(73, 106, 'DEMO  MATE AVSE', '2024-07-06', '17:28:53', 'DIPTI123@PRAAJASV.COM', 1),
(74, 105, 'DEMO MATE AVSE', '2024-07-06', '17:29:09', 'DIPTI123@PRAAJASV.COM', 1),
(75, 104, 'SUNAY VISIT MATE AVSE', '2024-07-06', '17:29:34', 'DIPTI123@PRAAJASV.COM', 1),
(76, 103, 'VISIT MATE AVSE', '2024-07-06', '17:29:54', 'DIPTI123@PRAAJASV.COM', 1),
(77, 102, 'A\"VAD VISIT MATE AVSE', '2024-07-06', '17:30:17', 'DIPTI123@PRAAJASV.COM', 1),
(78, 101, 'DEMO MATE AVSE', '2024-07-06', '17:31:47', 'DIPTI123@PRAAJASV.COM', 1),
(79, 100, 'MONDAY  AVSE', '2024-07-06', '17:36:34', 'DIPTI123@PRAAJASV.COM', 1),
(80, 96, '2 TH  DEMO ATTEND  PSI', '2024-07-08', '14:21:43', 'DIPTI123@PRAAJASV.COM', 1),
(81, 95, '1 YEAR  MA CHE ATLE', '2024-07-08', '14:28:58', 'DIPTI123@PRAAJASV.COM', 1),
(82, 94, 'N.R', '2024-07-08', '14:30:01', 'DIPTI123@PRAAJASV.COM', 1),
(83, 94, '11 A GPSC MA DEMO MATE AVSE', '2024-07-08', '14:31:04', 'DIPTI123@PRAAJASV.COM', 1),
(84, 92, 'JUNGADH  THI CHE TO NAHI AVI SHKE', '2024-07-08', '16:52:07', 'DIPTI123@PRAAJASV.COM', 1),
(85, 91, 'N.R', '2024-07-08', '16:53:47', 'DIPTI123@PRAAJASV.COM', 1),
(86, 3, 'BUSY', '2024-07-11', '14:42:49', 'Dipti123@praajasv.com', 1),
(87, 4, 'BIJE ADD LIDHU CHE', '2024-07-11', '14:43:59', 'Dipti123@praajasv.com', 1),
(88, 5, 'N.R', '2024-07-11', '14:45:48', 'Dipti123@praajasv.com', 1),
(89, 6, 'ONLY B GROUP MATE J JOIN KARVNU CHE', '2024-07-11', '14:46:38', 'Dipti123@praajasv.com', 1),
(90, 7, 'ADDMISSON  DONE', '2024-07-11', '15:15:41', 'Dipti123@praajasv.com', 1),
(91, 8, 'AGRICULTURE  BATCH PURCHES  KARSE', '2024-07-11', '15:19:07', 'Dipti123@praajasv.com', 1),
(92, 9, 'N.R', '2024-07-11', '15:20:14', 'Dipti123@praajasv.com', 1),
(93, 10, 'N.R', '2024-07-11', '15:21:33', 'Dipti123@praajasv.com', 1),
(94, 11, 'N.R', '2024-07-11', '15:22:51', 'Dipti123@praajasv.com', 1),
(95, 12, 'CCE  ADMISSION  DONE', '2024-07-11', '15:25:48', 'Dipti123@praajasv.com', 1),
(96, 13, 'NATHI CLASS  KARVA', '2024-07-11', '15:37:45', 'Dipti123@praajasv.com', 1),
(97, 14, 'N.R', '2024-07-11', '15:39:58', 'Dipti123@praajasv.com', 1),
(98, 14, 'N.R', '2024-07-11', '15:45:18', 'Dipti123@praajasv.com', 1),
(99, 15, 'N.R', '2024-07-11', '15:47:08', 'Dipti123@praajasv.com', 1),
(100, 16, 'N.R', '2024-07-11', '16:01:18', 'Dipti123@praajasv.com', 1),
(101, 15, 'FEES  VADHRE  LAGE CHE', '2024-07-11', '16:01:46', 'Dipti123@praajasv.com', 1),
(102, 17, 'ROOM NU SETING THY ATLE  AVI JASE', '2024-07-11', '16:07:52', 'Dipti123@praajasv.com', 1),
(103, 18, 'CALL  CUT', '2024-07-11', '16:14:23', 'Dipti123@praajasv.com', 1),
(104, 18, 'ADMISSION  DONE  GN 11', '2024-07-11', '16:15:56', 'Dipti123@praajasv.com', 1),
(105, 19, 'BUSY', '2024-07-12', '11:36:50', 'Dipti123@praajasv.com', 1),
(106, 20, 'NOT INTERSTED', '2024-07-12', '11:37:15', 'Dipti123@praajasv.com', 1),
(107, 21, 'REFUND  THI GAYU CHE', '2024-07-12', '11:37:40', 'Dipti123@praajasv.com', 1),
(108, 22, 'N.R', '2024-07-12', '15:12:05', 'Dipti123@praajasv.com', 1),
(109, 135, 'N.R', '2024-07-15', '16:27:01', 'Dipti123@praajasv.com', 1),
(110, 141, 'S.W.O', '2024-07-16', '11:48:09', 'Dipti123@praajasv.com', 1),
(111, 140, 'N.R', '2024-07-16', '11:49:28', 'Dipti123@praajasv.com', 1),
(112, 139, '2 KE  3 DIWAS MA AVSE', '2024-07-16', '11:54:49', 'Dipti123@praajasv.com', 1),
(113, 138, 'N.R', '2024-07-16', '11:56:12', 'Dipti123@praajasv.com', 1),
(114, 137, '1 WEEK  MA AVSE', '2024-07-16', '11:57:36', 'Dipti123@praajasv.com', 1),
(115, 136, 'BUSY', '2024-07-16', '11:58:44', 'Dipti123@praajasv.com', 1),
(116, 135, 'N.R', '2024-07-16', '12:05:00', 'Dipti123@praajasv.com', 1),
(117, 134, 'TOMORROW   ACDEMY   VISIT', '2024-07-16', '12:17:20', 'Dipti123@praajasv.com', 1),
(118, 133, 'N.R', '2024-07-16', '12:18:27', 'Dipti123@praajasv.com', 1),
(119, 132, 'N.R', '2024-07-16', '12:19:21', 'Dipti123@praajasv.com', 1),
(120, 131, 'BUSY', '2024-07-16', '12:28:16', 'Dipti123@praajasv.com', 1),
(121, 130, 'N.R', '2024-07-16', '12:29:16', 'Dipti123@praajasv.com', 1),
(122, 129, 'TODAY   ACDEMY  VISIT', '2024-07-16', '12:30:52', 'Dipti123@praajasv.com', 1),
(123, 128, 'N.R', '2024-07-16', '12:32:02', 'Dipti123@praajasv.com', 1),
(124, 127, 'CALL  CUT', '2024-07-16', '12:33:11', 'Dipti123@praajasv.com', 1),
(125, 126, 'DEMO ATTEND  KARE  CHE', '2024-07-16', '12:35:08', 'Dipti123@praajasv.com', 1),
(126, 125, 'INVALID  NUMBER', '2024-07-16', '12:42:35', 'Dipti123@praajasv.com', 1),
(127, 124, 'KALE AVSE  VISIT MATE', '2024-07-16', '12:45:24', 'Dipti123@praajasv.com', 1),
(128, 123, 'VICHARI NE KESE', '2024-07-16', '12:47:04', 'Dipti123@praajasv.com', 1),
(129, 122, 'N.R', '2024-07-16', '12:48:16', 'Dipti123@praajasv.com', 1),
(130, 120, '1 WEEK  MA AVSE COLLAGE NU KAM CHE', '2024-07-16', '12:55:30', 'Dipti123@praajasv.com', 1),
(131, 142, 'CALL NOT RECEIVED', '2024-07-16', '14:56:19', 'monika@praajasv.com', 1),
(132, 143, 'AGRICULTURE OFFLINE INTRESTED', '2024-07-16', '14:57:13', 'monika@praajasv.com', 1),
(133, 144, 'NOT INTRESTED', '2024-07-16', '14:58:13', 'monika@praajasv.com', 1),
(134, 145, 'NOT INTRESTED\r\n', '2024-07-16', '14:59:14', 'monika@praajasv.com', 1),
(135, 63, 'AGRICULTURE PURCHASED', '2024-07-16', '15:02:37', 'monika@praajasv.com', 1),
(136, 119, 'N.R', '2024-07-16', '16:40:43', 'Dipti123@praajasv.com', 1),
(137, 117, 'N.R', '2024-07-16', '16:41:50', 'Dipti123@praajasv.com', 1),
(138, 117, 'C.B  KARVO', '2024-07-16', '16:46:32', 'Dipti123@praajasv.com', 1),
(139, 117, 'BUSY', '2024-07-16', '16:47:16', 'Dipti123@praajasv.com', 1),
(140, 114, '2 TH  DEMO', '2024-07-16', '16:48:14', 'Dipti123@praajasv.com', 1),
(141, 113, 'CALL  ENDED', '2024-07-16', '16:49:03', 'Dipti123@praajasv.com', 1),
(142, 112, 'N.R', '2024-07-16', '16:50:06', 'Dipti123@praajasv.com', 1),
(143, 111, 'GIR SOMNATH COLLAGE MA ADMISSION THI GYU CHE', '2024-07-16', '16:52:31', 'Dipti123@praajasv.com', 1),
(144, 110, 'N.R', '2024-07-16', '17:13:01', 'Dipti123@praajasv.com', 1),
(145, 109, 'N.R', '2024-07-17', '12:01:12', 'Dipti123@praajasv.com', 1),
(146, 109, 'FEES  VADHRE LAGE CHE', '2024-07-17', '12:21:35', 'Dipti123@praajasv.com', 1),
(147, 108, 'WRONG   NUMBER', '2024-07-17', '12:24:25', 'Dipti123@praajasv.com', 1),
(148, 107, 'N.R', '2024-07-17', '12:26:11', 'Dipti123@praajasv.com', 1),
(149, 104, 'VICHARI NE KESE', '2024-07-17', '12:41:05', 'Dipti123@praajasv.com', 1),
(150, 103, 'KALE  UPSC  MA DEMO MATE AVSE', '2024-07-17', '14:21:09', 'Dipti123@praajasv.com', 1),
(151, 102, 'GAYAN LIVE  MA JOINKARYU CHE', '2024-07-17', '14:22:59', 'Dipti123@praajasv.com', 1),
(152, 101, 'N.R', '2024-07-17', '14:25:58', 'Dipti123@praajasv.com', 1),
(153, 100, 'N.R', '2024-07-17', '14:27:51', 'Dipti123@praajasv.com', 1),
(154, 99, 'CALL KARSE', '2024-07-17', '14:30:20', 'Dipti123@praajasv.com', 1),
(155, 98, '2  DAYS  MA FEES  PAY KARSE', '2024-07-17', '14:32:59', 'Dipti123@praajasv.com', 1),
(156, 97, 'CALL   CUT', '2024-07-17', '14:35:23', 'Dipti123@praajasv.com', 1),
(157, 96, 'RAJKOT CLASS KARYA CHE TO IDEA NATHI AVTO', '2024-07-17', '14:38:01', 'Dipti123@praajasv.com', 1),
(158, 95, 'N.R', '2024-07-17', '14:39:05', 'Dipti123@praajasv.com', 1),
(159, 94, 'VISIT DONE   & FRI AVSE  VISIT MATE', '2024-07-17', '14:42:15', 'Dipti123@praajasv.com', 1),
(160, 93, 'GN 11  ADMISSION   DONE', '2024-07-17', '14:45:30', 'Dipti123@praajasv.com', 1),
(161, 92, 'NOT  INTERSTED', '2024-07-17', '14:46:37', 'Dipti123@praajasv.com', 1),
(162, 91, 'DEMO MATE  AVSE', '2024-07-17', '14:51:27', 'Dipti123@praajasv.com', 1),
(163, 91, 'KALE DEMO  MATE  AVSE', '2024-07-17', '14:56:11', 'Dipti123@praajasv.com', 1),
(164, 90, 'N.R', '2024-07-17', '14:59:04', 'Dipti123@praajasv.com', 1),
(165, 89, 'NEXT MONTH MA AVSE', '2024-07-17', '15:03:35', 'Dipti123@praajasv.com', 1),
(166, 88, 'CCE  ADMISSON  DONE', '2024-07-17', '15:06:00', 'Dipti123@praajasv.com', 1),
(167, 87, 'N.R', '2024-07-17', '15:07:13', 'Dipti123@praajasv.com', 1),
(168, 85, 'N.R', '2024-07-17', '15:08:16', 'Dipti123@praajasv.com', 1),
(169, 84, 'NEXT YEAR  JOIN KARSE', '2024-07-17', '15:09:28', 'Dipti123@praajasv.com', 1),
(170, 83, 'N.R', '2024-07-17', '16:12:58', 'Dipti123@praajasv.com', 1),
(171, 82, 'N.R', '2024-07-17', '16:14:16', 'Dipti123@praajasv.com', 1),
(172, 81, 'A\"VAD VISIT MATE JASE', '2024-07-17', '16:16:56', 'Dipti123@praajasv.com', 1),
(173, 163, 'N.R', '2024-07-22', '14:59:46', 'Dipti123@praajasv.com', 1),
(174, 162, 'KALE  AVSE DEMO MATE', '2024-07-22', '15:02:36', 'Dipti123@praajasv.com', 1),
(175, 161, 'N.R', '2024-07-22', '15:03:40', 'Dipti123@praajasv.com', 1),
(176, 160, 'N.R', '2024-07-22', '15:15:16', 'Dipti123@praajasv.com', 1),
(177, 159, 'KALE AVSE DEMO MATE', '2024-07-22', '15:17:23', 'Dipti123@praajasv.com', 1),
(178, 158, 'N.R', '2024-07-22', '15:19:29', 'Dipti123@praajasv.com', 1),
(179, 157, 'KALE AVSE DEMO MATE', '2024-07-22', '15:23:34', 'Dipti123@praajasv.com', 1),
(180, 156, 'N.R', '2024-07-22', '15:24:38', 'Dipti123@praajasv.com', 1),
(181, 156, 'JUST  JOVA MATE AYI TI', '2024-07-22', '15:25:59', 'Dipti123@praajasv.com', 1),
(182, 155, 'CALL  ENDED', '2024-07-22', '15:28:33', 'Dipti123@praajasv.com', 1),
(183, 154, 'N.R', '2024-07-22', '15:30:16', 'Dipti123@praajasv.com', 1),
(184, 153, 'N.R', '2024-07-22', '15:38:06', 'Dipti123@praajasv.com', 1),
(185, 152, '1  WEEK MA AVSE', '2024-07-22', '15:43:20', 'Dipti123@praajasv.com', 1),
(186, 148, '1 MONTH  THI GAYO CHE ', '2024-07-22', '15:46:14', 'Dipti123@praajasv.com', 1),
(187, 151, 'N.R', '2024-07-22', '15:47:42', 'Dipti123@praajasv.com', 1),
(188, 141, '2 KE 3 DIWS MA AVSE', '2024-07-22', '15:49:57', 'Dipti123@praajasv.com', 1),
(189, 150, '3 TH  DEMO  UPSC MA', '2024-07-22', '16:01:48', 'Dipti123@praajasv.com', 1),
(190, 149, '2 DAYS MA AVSE DEMO MATE', '2024-07-22', '16:03:50', 'Dipti123@praajasv.com', 1),
(191, 147, 'BUSY', '2024-07-22', '16:06:14', 'Dipti123@praajasv.com', 1),
(192, 146, 'N.R', '2024-07-22', '16:07:10', 'Dipti123@praajasv.com', 1),
(193, 141, '3 KE 4DAYS MA AVSE', '2024-07-22', '16:16:15', 'Dipti123@praajasv.com', 1),
(194, 154, 'ONLY ANSWER WRITING MATE', '2024-07-22', '16:19:22', 'Dipti123@praajasv.com', 1),
(195, 139, '2 KE  3 DIWAS  MA  AVSE', '2024-07-22', '16:37:30', 'Dipti123@praajasv.com', 1),
(196, 138, 'N.R', '2024-07-22', '16:49:30', 'Dipti123@praajasv.com', 1),
(197, 137, 'N.R', '2024-07-22', '16:50:48', 'Dipti123@praajasv.com', 1),
(198, 136, 'N.R', '2024-07-22', '16:51:38', 'Dipti123@praajasv.com', 1),
(199, 135, 'N.R', '2024-07-22', '16:52:50', 'Dipti123@praajasv.com', 1),
(200, 134, 'VISIT KARI GAYA CHE', '2024-07-22', '16:57:53', 'Dipti123@praajasv.com', 1),
(201, 133, '1  WEEK  MA   AVSE', '2024-07-22', '17:11:04', 'Dipti123@praajasv.com', 1),
(202, 132, 'N.R', '2024-07-22', '17:15:30', 'Dipti123@praajasv.com', 1),
(203, 131, 'N.R', '2024-07-22', '17:19:33', 'Dipti123@praajasv.com', 1),
(204, 130, 'BUSY', '2024-07-22', '17:24:44', 'Dipti123@praajasv.com', 1),
(205, 120, 'N.R', '2024-07-22', '17:25:40', 'Dipti123@praajasv.com', 1),
(206, 119, 'N.R', '2024-07-22', '17:26:57', 'Dipti123@praajasv.com', 1),
(207, 158, 'N.R', '2024-07-22', '17:27:47', 'Dipti123@praajasv.com', 1),
(208, 124, 'SELF PERPRATION  KARE CHE', '2024-07-22', '17:29:19', 'Dipti123@praajasv.com', 1),
(209, 128, 'ONLINE   LECTURE MATE', '2024-07-22', '17:41:49', 'Dipti123@praajasv.com', 1),
(210, 129, 'AGAD   VAT THAI GAYI CHE', '2024-07-22', '17:47:48', 'Dipti123@praajasv.com', 1),
(211, 126, 'N.R', '2024-07-22', '17:49:11', 'Dipti123@praajasv.com', 1),
(212, 122, 'N.R', '2024-07-22', '17:50:55', 'Dipti123@praajasv.com', 1),
(213, 117, 'NEXT BATCH', '2024-07-22', '17:52:51', 'Dipti123@praajasv.com', 1),
(214, 116, 'N.R', '2024-07-22', '17:53:48', 'Dipti123@praajasv.com', 1),
(215, 115, 'N.R', '2024-07-22', '17:55:39', 'Dipti123@praajasv.com', 1),
(216, 114, 'KALE  FEES PAY  KARSE', '2024-07-22', '17:59:49', 'Dipti123@praajasv.com', 1),
(217, 113, 'FEES PAY KARVNI CHE', '2024-07-22', '18:01:59', 'Dipti123@praajasv.com', 1),
(218, 112, 'N.R', '2024-07-22', '18:03:59', 'Dipti123@praajasv.com', 1),
(219, 110, 'S.W.O', '2024-07-22', '18:05:24', 'Dipti123@praajasv.com', 1),
(220, 110, 'FRIDAY   DEMO MATE AVSE', '2024-07-23', '11:04:28', 'Dipti123@praajasv.com', 1),
(221, 108, 'WRONG   NUMBER', '2024-07-23', '11:05:58', 'Dipti123@praajasv.com', 1),
(222, 107, 'NEXT  BATCH  MA JOIN KARSE', '2024-07-23', '11:07:33', 'Dipti123@praajasv.com', 1),
(223, 104, 'NEXT  YEAR  ADD LESE', '2024-07-23', '11:09:33', 'Dipti123@praajasv.com', 1),
(224, 103, 'N.R', '2024-07-23', '11:10:40', 'Dipti123@praajasv.com', 1),
(225, 145, 'ttt', '2025-06-07', '17:42:23', 'admin@praajasv.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `telecaller_lead_status`
--

CREATE TABLE `telecaller_lead_status` (
  `ID` int(11) NOT NULL,
  `Status` varchar(50) NOT NULL DEFAULT '',
  `DefaultStatus` int(11) NOT NULL DEFAULT 0,
  `NotInterestedStatus` int(11) NOT NULL DEFAULT 0,
  `FinalStatus` int(11) NOT NULL DEFAULT 0,
  `LeadColor` varchar(50) NOT NULL DEFAULT '#d49e12',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `telecaller_lead_status`
--

INSERT INTO `telecaller_lead_status` (`ID`, `Status`, `DefaultStatus`, `NotInterestedStatus`, `FinalStatus`, `LeadColor`, `CreatedDate`, `CreatedTime`, `CreatedBy`, `IsActive`) VALUES
(1, 'Open', 1, 0, 0, '#cc4141', '', '', '', 1),
(2, 'Not Interested', 0, 1, 0, '#807e7e', '', '', '', 1),
(3, 'Transferred to BDE', 0, 0, 1, '#387d7b', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `type_of_business`
--

CREATE TABLE `type_of_business` (
  `ID` int(11) NOT NULL,
  `BusinessName` varchar(255) NOT NULL DEFAULT '',
  `IsActive` tinyint(1) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `type_of_business`
--

INSERT INTO `type_of_business` (`ID`, `BusinessName`, `IsActive`) VALUES
(1, 'Travel & Tourism', 1),
(2, 'e-Commerce', 1),
(3, 'Real Estate-> Builder', 1),
(4, 'E-Commerce-> Boutique ', 1),
(5, 'Healthcare-> Hospital', 1),
(6, 'Healthcare-> Clinic', 1),
(7, 'Healthcare-> Diagnostic Lab', 1),
(8, 'E-Commerce-> Electronics', 1),
(9, 'E-Commerce-> Clothing', 1),
(10, 'E-Commerce-> FMCG', 1),
(11, 'Services-> Plastic Manufacturing', 1),
(12, 'Author-> Book Writer', 1),
(13, 'Real Estate-> Dealer', 1),
(14, 'Automobile', 1),
(15, 'Finance', 1),
(16, 'Finance-> Fintech', 1),
(17, 'e-Commerce-> Skin Care', 1),
(18, 'Services-> Construction & Interiors ', 1),
(19, 'Education', 1),
(20, 'Education-> Edtech', 1),
(21, 'Education-> Consulting', 1),
(22, 'Education-> Study Abroad Consulting', 1),
(23, 'Education-> School, College & University', 1),
(24, 'IT & Software', 1),
(25, 'Others', 1),
(26, 'Hospitality ', 1),
(27, 'Hospitality-> Cafe & Restaurant ', 1),
(28, 'Hospitality-> Hotels & Resorts', 1),
(29, 'Agriculture', 1),
(30, 'Astrology', 1),
(31, 'Finance-> Trading', 1),
(32, 'Services-> Recruitment & Staffing', 1),
(33, 'Services-> Industrial', 1),
(34, 'e-Commerce-> Jewellary', 1),
(35, 'Politicians', 1),
(36, 'TV & Entertainment', 1),
(37, 'Arts & Entertainment', 1),
(38, 'Health & Fitness', 1),
(39, 'Health & Fitness-> Gym', 1),
(40, 'e-Commerce-> Nutrition & Supplements', 1),
(41, 'Medical Technology & Equipments', 1),
(42, 'e-Commerce-> Medicine', 1),
(43, 'e-Commerce-> Ayurveda', 1),
(44, 'e-Commerce-> Home Decor', 1),
(45, 'Legal & Consulting', 1),
(46, 'Services-> Event Planner', 1),
(47, 'NGO', 1),
(48, 'Health & Fitness-> Yoga', 1),
(49, 'Services-> Makeup Artist', 1),
(50, 'Delivery & Logistics', 1),
(51, 'Real Estate-> Co-Working', 1),
(52, 'Pet & Animals', 1),
(53, 'e-Commerce-> Stationary', 1),
(54, 'Education-> Coaching Institutes', 1),
(55, 'e-Commerce-> Bags & Handbags', 1),
(56, 'e-Commerce-> Shoes', 1),
(57, 'Hardware & Building Material', 1),
(58, 'Services-> Marketing Agency ', 1),
(59, 'B2B Collaboration', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `BranchID` int(11) NOT NULL DEFAULT -1,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(256) NOT NULL,
  `UserType` varchar(50) NOT NULL,
  `DeviceID` varchar(256) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL,
  `CreatedTime` varchar(50) NOT NULL,
  `IsActive` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `BranchID`, `Email`, `Password`, `UserType`, `DeviceID`, `CreatedDate`, `CreatedTime`, `IsActive`) VALUES
(1, -1, 'admin@digidir.com', '71f27a64fd6a16b52b31d22ec10710b1', 'System Admin', '5a026a221f5aca4a33ff3b268a4779f7d5348cb31c4eaad625d535bc0ecf261b', '', '', 1),
(2, 1, 'it@digidir.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Center Manager', 'deba09abb925f44ff21c50d59499dd11262be8986fac8c4a7918ced50546c1ce', '2025-09-18', '18:07:04', 1),
(3, 1, 'telecaller@digidir.com', '81dc9bdb52d04dc20036dbd8313ed055', 'BDE', '', '2025-11-18', '17:57:37', 0),
(4, 1, 'saurabh@digidir.com', '4184e1c09d05a0a262e87b56a8259652', 'Center Manager', 'c2f41d568a6936ef0b5b844ad7b59f82de5b83c9ed5f4f57826e3f037daf2263', '2026-01-10', '16:35:59', 1),
(5, 1, 'naina.gupta@digidir.com', 'e35af0c73f4fb32ffc002825f1053e0b', 'BDE', '', '2026-01-10', '16:37:06', 1),
(6, 1, 'ujala@digidir.com', '595e9a55331c770b0e33a691961d75ab', 'BDE', '', '2026-01-10', '16:38:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `ID` int(11) NOT NULL,
  `BranchID` int(11) NOT NULL DEFAULT -1,
  `Name` varchar(100) NOT NULL DEFAULT '',
  `Mobile` varchar(50) NOT NULL DEFAULT '',
  `Email` varchar(50) NOT NULL DEFAULT '',
  `UserType` varchar(100) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`ID`, `BranchID`, `Name`, `Mobile`, `Email`, `UserType`, `CreatedDate`, `CreatedBy`, `IsActive`) VALUES
(1, -1, 'Admin', '7428806298', 'admin@digidir.com', 'System Admin', '', '', 1),
(2, 1, 'IT', '8433098391', 'it@digidir.com', 'Center Manager', '2025-09-18', 'admin@digidir.com', 1),
(3, 1, 'Digi Telecaller', '8433098395', 'telecaller@digidir.com', 'BDE', '2025-11-18', 'admin@digidir.com', 0),
(4, 1, 'Saurabh Chhabra', '9999340468', 'saurabh@digidir.com', 'Center Manager', '2026-01-10', 'admin@digidir.com', 1),
(5, 1, 'Naina Gupta', '9958086628', 'naina.gupta@digidir.com', 'BDE', '2026-01-10', 'admin@digidir.com', 1),
(6, 1, 'Ujala Lawrence', '7428837378', 'ujala@digidir.com', 'BDE', '2026-01-10', 'admin@digidir.com', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_lead`
--
ALTER TABLE `all_lead`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `company_details`
--
ALTER TABLE `company_details`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `courses_fee`
--
ALTER TABLE `courses_fee`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `courses_for_display`
--
ALTER TABLE `courses_for_display`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `course_batch`
--
ALTER TABLE `course_batch`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `course_book`
--
ALTER TABLE `course_book`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `course_cordinator`
--
ALTER TABLE `course_cordinator`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `course_counsellor`
--
ALTER TABLE `course_counsellor`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `current_affairs`
--
ALTER TABLE `current_affairs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `educator`
--
ALTER TABLE `educator`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `educator_essay`
--
ALTER TABLE `educator_essay`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `invoice_no`
--
ALTER TABLE `invoice_no`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `lead_assignment`
--
ALTER TABLE `lead_assignment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `lead_assignment_history`
--
ALTER TABLE `lead_assignment_history`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `lead_remarks`
--
ALTER TABLE `lead_remarks`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `lead_source`
--
ALTER TABLE `lead_source`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `lead_status`
--
ALTER TABLE `lead_status`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `login_history`
--
ALTER TABLE `login_history`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `magazine`
--
ALTER TABLE `magazine`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mentorship_session`
--
ALTER TABLE `mentorship_session`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mentorship_session_notes`
--
ALTER TABLE `mentorship_session_notes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `monthly_affairs`
--
ALTER TABLE `monthly_affairs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `parsed_serial_number`
--
ALTER TABLE `parsed_serial_number`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student_admission`
--
ALTER TABLE `student_admission`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student_book`
--
ALTER TABLE `student_book`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student_enrollment`
--
ALTER TABLE `student_enrollment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student_fee`
--
ALTER TABLE `student_fee`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student_fee_reminder`
--
ALTER TABLE `student_fee_reminder`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student_payment`
--
ALTER TABLE `student_payment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student_remark`
--
ALTER TABLE `student_remark`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student_transaction`
--
ALTER TABLE `student_transaction`
  ADD PRIMARY KEY (`ID`);
ALTER TABLE `student_transaction` ADD FULLTEXT KEY `CreatedDate` (`CreatedDate`);

--
-- Indexes for table `telecaller_leads`
--
ALTER TABLE `telecaller_leads`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `telecaller_lead_assignment_history`
--
ALTER TABLE `telecaller_lead_assignment_history`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `telecaller_lead_remarks`
--
ALTER TABLE `telecaller_lead_remarks`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `telecaller_lead_status`
--
ALTER TABLE `telecaller_lead_status`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `type_of_business`
--
ALTER TABLE `type_of_business`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_lead`
--
ALTER TABLE `all_lead`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_details`
--
ALTER TABLE `company_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses_fee`
--
ALTER TABLE `courses_fee`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `courses_for_display`
--
ALTER TABLE `courses_for_display`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `course_batch`
--
ALTER TABLE `course_batch`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `course_book`
--
ALTER TABLE `course_book`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `course_cordinator`
--
ALTER TABLE `course_cordinator`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_counsellor`
--
ALTER TABLE `course_counsellor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `current_affairs`
--
ALTER TABLE `current_affairs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `educator`
--
ALTER TABLE `educator`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `educator_essay`
--
ALTER TABLE `educator_essay`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_no`
--
ALTER TABLE `invoice_no`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lead_assignment`
--
ALTER TABLE `lead_assignment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `lead_assignment_history`
--
ALTER TABLE `lead_assignment_history`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;

--
-- AUTO_INCREMENT for table `lead_remarks`
--
ALTER TABLE `lead_remarks`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `lead_source`
--
ALTER TABLE `lead_source`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `lead_status`
--
ALTER TABLE `lead_status`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `login_history`
--
ALTER TABLE `login_history`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `magazine`
--
ALTER TABLE `magazine`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mentorship_session`
--
ALTER TABLE `mentorship_session`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `mentorship_session_notes`
--
ALTER TABLE `mentorship_session_notes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `monthly_affairs`
--
ALTER TABLE `monthly_affairs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parsed_serial_number`
--
ALTER TABLE `parsed_serial_number`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `student_admission`
--
ALTER TABLE `student_admission`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `student_book`
--
ALTER TABLE `student_book`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_details`
--
ALTER TABLE `student_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_enrollment`
--
ALTER TABLE `student_enrollment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `student_fee`
--
ALTER TABLE `student_fee`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_fee_reminder`
--
ALTER TABLE `student_fee_reminder`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_payment`
--
ALTER TABLE `student_payment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_remark`
--
ALTER TABLE `student_remark`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `student_transaction`
--
ALTER TABLE `student_transaction`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `telecaller_leads`
--
ALTER TABLE `telecaller_leads`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `telecaller_lead_assignment_history`
--
ALTER TABLE `telecaller_lead_assignment_history`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=398;

--
-- AUTO_INCREMENT for table `telecaller_lead_remarks`
--
ALTER TABLE `telecaller_lead_remarks`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `telecaller_lead_status`
--
ALTER TABLE `telecaller_lead_status`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `type_of_business`
--
ALTER TABLE `type_of_business`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
