-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 25, 2024 at 12:14 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ojha_ims`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_lead`
--

DROP TABLE IF EXISTS `all_lead`;
CREATE TABLE IF NOT EXISTS `all_lead` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BranchID` int(11) NOT NULL DEFAULT '-1',
  `Name` varchar(200) NOT NULL DEFAULT '',
  `Gender` varchar(200) NOT NULL DEFAULT '',
  `DOB` varchar(256) NOT NULL DEFAULT '',
  `Email` varchar(200) NOT NULL DEFAULT '',
  `PhoneNumber` varchar(200) NOT NULL DEFAULT '',
  `Course` int(11) NOT NULL DEFAULT '-1',
  `Mode` varchar(200) NOT NULL DEFAULT '',
  `State` varchar(200) NOT NULL DEFAULT '',
  `City` varchar(200) NOT NULL DEFAULT '',
  `Address` varchar(200) NOT NULL DEFAULT '',
  `HighestQualification` varchar(256) NOT NULL DEFAULT '',
  `AssignedTo` varchar(200) NOT NULL DEFAULT '',
  `Status` varchar(200) NOT NULL DEFAULT 'Created',
  `Remark` varchar(256) NOT NULL DEFAULT '',
  `LeadSource` varchar(50) NOT NULL DEFAULT '',
  `TelecallerLeadID` int(11) NOT NULL DEFAULT '-1',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=477 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `all_lead`
--

INSERT INTO `all_lead` (`ID`, `BranchID`, `Name`, `Gender`, `DOB`, `Email`, `PhoneNumber`, `Course`, `Mode`, `State`, `City`, `Address`, `HighestQualification`, `AssignedTo`, `Status`, `Remark`, `LeadSource`, `TelecallerLeadID`, `CreatedTime`, `CreatedDate`, `CreatedBy`, `IsActive`) VALUES
(6, 3, 'utsav shah', 'Male', '', '', '9409286519', 16, 'Offline', 'Gujarat', 'ahmedabad', 'bodakdev', '', '16', 'not interested', '', 'walk In', -1, '13:20:13', '2024-06-08', 'bhaumik@praajasv.com', 1),
(5, 3, 'SOLANKI  SAJJAN', 'Male', '', '', '6354278918', 17, 'Offline', 'Gujarat', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '15:07:20', '2024-06-15', '', 1),
(3, 3, 'malhar', 'Male', '', '', '8000614931', 2, 'Offline', 'Gujarat', 'gandhinagar', '', '', '10', 'Open 4', '', 'walk In', -1, '15:41:04', '2024-06-07', 'rahul@praajasv.com', 1),
(4, 3, 'ghjk', 'Male', '', '', '1236547890', 2, 'Offline', 'Gujarat', 'asdfgf', '', '', '15', 'admission close', '', 'walk In', -1, '15:44:14', '2024-06-07', 'rahul@praajasv.com', 1),
(7, 3, 'komal', 'Female', '', '', '9080706050', 15, 'Online', 'Gujarat', 'ahmedabad', '', '', '10', 'Open 4', '', 'Google Ads', -1, '13:50:20', '2024-06-10', 'rahul@praajasv.com', 1),
(8, 2, 'Chopada Hiren Rameshbhai', 'Male', '', '', '7621830293', 19, 'Offline', 'Gujarat', 'Ahmedabad', 'Neelkamal Socity , Gurukul Road', '', '18', 'Open 3', '', 'reference', -1, '14:07:42', '2024-06-10', 'bhavi@praajasv.com', 1),
(9, 2, 'komal', 'Female', '', '', '9080706051', 26, 'Offline', 'Gujarat', 'ahmedbad', '', '', '18', 'admission close', '', 'walk In', -1, '14:12:00', '2024-06-10', 'bhavi@praajasv.com', 1),
(10, 2, 'xyz', 'Male', '', '', '1234567899', 19, 'Offline', 'Gujarat', 'gandhinagar', '', '', '18', 'admission close', '', 'reference', -1, '15:28:49', '2024-06-10', 'bhavi@praajasv.com', 1),
(11, 2, 'JAHANVI DESAI', 'Female', '', '', '8401234961', 28, 'Offline', 'Gujarat', 'ahmedbad', '', '', '18', 'Open 4', '', 'youtube', -1, '17:23:51', '2024-06-10', 'malhar@praajasv.com', 1),
(12, 1, 'Vishnu Sharma', 'Male', '', '', '6261445720', 1, 'Online', 'Madhya Pradesh', '', '', '', '8', 'Open 1', '', 'reference', -1, '11:56:57', '2024-06-11', 'shagun@gmail.com', 1),
(13, 1, 'Ankit Kumar', 'Male', '', '', '7234965727', 1, 'Offline', 'Uttar Pradesh', '', '', '', '8', 'admission close', '', 'reference', -1, '11:58:31', '2024-06-11', 'shagun@gmail.com', 1),
(14, 1, 'AYUSH VERMA', 'Male', '', '', '9212621866', 31, 'Offline', 'Haryana', 'HARYANA', 'ROHTAK ROAD HARYANA', '', '6', 'Open 4', '', 'reference', -1, '15:17:30', '2024-06-11', '', 1),
(15, 1, 'Talha', 'Male', '', '', '7651982773', 1, 'Offline', '', '', '', '', '8', 'Open 1', '', 'reference', -1, '15:45:19', '2024-06-11', 'shagun@gmail.com', 1),
(16, 1, 'Nirdosh Kumar', 'Male', '', '', '8392865320', 1, 'Offline', '', '', '', '', '8', 'admission close', '', 'reference', -1, '15:53:34', '2024-06-11', 'shagun@gmail.com', 1),
(17, 1, 'Yash Chaurasia', 'Male', '', 'ychaurasia052@gmail.com', '7458962163', 30, 'Offline', 'Uttar Pradesh', 'baliya', 'baliya', '', '8', 'Open 1', '', 'reference', -1, '15:59:49', '2024-06-11', 'shagun@gmail.com', 1),
(18, 1, 'PANKAJ', 'Male', '', '', '7307102224', 1, 'Offline', 'Madhya Pradesh', 'BHOPAL', 'GTB NAGAR', '', '7', 'Open 1', '', 'walk In', -1, '16:00:09', '2024-06-11', 'anjali@gmail.com', 1),
(19, 2, 'KULDEP D. KHATANA', 'Male', '', 'kuldeepkhatana6064@gmail.com', '9974071001', 27, 'Offline', 'Gujarat', 'ahmedbad', 'VASTRAPUR', '', '18', 'ADMISSION CLOSE', '', 'reference', -1, '16:10:31', '2024-06-11', '', 1),
(20, 1, 'NISHANT KUMAR', 'Male', '', '', '8882024623', 1, 'Offline', 'Delhi', 'DELHI', '', '', '6', 'Open 1', '', 'walk In', -1, '16:07:30', '2024-06-11', 'dipika@gmail.com', 1),
(21, 2, 'SATISH VALODARA', 'Male', '', 'satish.vala2189@gmail.com', '9825921989', 27, 'Offline', 'Gujarat', 'ahmedbad', 'NARODA', '', '18', 'Open 4', '', 'reference', -1, '16:08:37', '2024-06-11', 'bhavi@praajasv.com', 1),
(22, 1, 'Vivek', 'Male', '', 'vrrakhonde318@gmail.com', '7666536910', 1, 'Online', 'Maharashtra', 'bhurwal', '', '', '8', 'Open 1', '', 'walk In', -1, '16:08:41', '2024-06-11', 'shagun@gmail.com', 1),
(23, 1, 'Vishnu Bishnoi', 'Male', '', '', '7073643829', 1, 'Online', 'Rajasthan', 'Bikaner', '', '', '8', 'Open 1', '', 'walk In', -1, '16:11:42', '2024-06-11', 'shagun@gmail.com', 1),
(24, 1, 'MUSKAN', 'Male', '', '', '9907635645', 1, 'Offline', 'West Bengal', 'WEST BENGAL', 'WEST BENGAL', '', '6', 'not interested', '', 'walk In', -1, '16:13:05', '2024-06-11', 'dipika@gmail.com', 1),
(25, 2, 'AKSHAY PANDYA', 'Male', '', 'akshaypandya723@gmail.com', '8577480382', 24, 'Offline', 'Gujarat', 'BHAVNAGAR', 'BHAVNAGAR', '', '18', 'Open 1', '', 'reference', -1, '16:13:06', '2024-06-11', 'bhavi@praajasv.com', 1),
(26, 1, ' VIKRANT ', 'Male', '', '', '9128512481', 1, 'Offline', 'Delhi', 'DELHI', '', '', '6', 'not interested', '', 'walk In', -1, '16:16:00', '2024-06-11', 'dipika@gmail.com', 1),
(27, 2, 'DHRUVI SONI', 'Female', '', 'sdhruvi338@gmail.com', '8849660861', 19, 'Offline', 'Gujarat', 'ahmedbad', 'ahmedabad', '', '18', 'admission close', '', 'reference', -1, '16:16:10', '2024-06-11', 'bhavi@praajasv.com', 1),
(28, 1, 'TAMEESHAM', 'Male', '', '', '9407187933', 1, 'Offline', 'Madhya Pradesh', 'BHOPAL', '', '', '7', 'not interested', '', 'walk In', -1, '16:17:30', '2024-06-11', 'anjali@gmail.com', 1),
(29, 1, 'CHHAVI TOMAR', 'Male', '', '', '8871199200', 1, 'Offline', 'Delhi', 'MADHYA PRADESH', '', '', '6', 'not interested', '', 'walk In', -1, '16:19:06', '2024-06-11', 'dipika@gmail.com', 1),
(30, 1, 'SATYA PRAKASH SHARMA', 'Male', '', '', '8579977579', 1, 'Offline', 'Jharkhand', 'JHARKHAND', '', '', '6', 'admission close', '', 'walk In', -1, '16:21:35', '2024-06-11', 'dipika@gmail.com', 1),
(31, 2, 'GOPAL RATHOD', 'Male', '', 'rathodgopal70.gr@gmail.com', '7990170345', 29, 'Offline', 'Gujarat', 'ahmedbad', 'ODHAV', '', '18', 'admission close', '', 'Telephonic', -1, '16:21:47', '2024-06-11', 'bhavi@praajasv.com', 1),
(32, 1, 'MEGHA', 'Female', '', '', '9911802130', 1, 'Offline', '', '', '', '', '7', 'not interested', '', 'walk In', -1, '16:21:49', '2024-06-11', 'anjali@gmail.com', 1),
(33, 1, 'AYUSH RANGARE', 'Male', '', '', '8889319412', 1, 'Online', 'Madhya Pradesh', 'balaghat ', '', '', '7', 'not interested', '', 'walk In', -1, '16:28:24', '2024-06-11', 'anjali@gmail.com', 1),
(34, 2, 'KHUSHI THAKKAR', 'Female', '', '', '8866193110', 19, 'Offline', 'Gujarat', 'KUTCHH', '', '', '18', 'Open 4', '', 'reference', -1, '16:28:47', '2024-06-11', 'bhavi@praajasv.com', 1),
(35, 1, 'nikhil kumar ', 'Male', '', '', '7579119366', 1, 'Offline', 'Uttarakhand', '', '', '', '7', 'Open 1', '', 'walk In', -1, '16:30:25', '2024-06-11', 'anjali@gmail.com', 1),
(36, 1, 'Kuldeep Bishnoi', 'Male', '', 'kuldeepbishnoi', '8278661861', 1, 'Offline', 'Rajasthan', 'jodhpur', '', '', '8', 'Open 1', '', 'walk In', -1, '16:30:42', '2024-06-11', 'shagun@gmail.com', 1),
(37, 1, 'SAMEER BAIRA', 'Male', '', '', '7877621624', 1, 'Online', 'Rajasthan', 'JAIPUR', 'JAIPUR', '', '6', 'not interested', '', 'walk In', -1, '16:30:44', '2024-06-11', 'dipika@gmail.com', 1),
(38, 1, 'radhika', 'Male', '', '', '9599690325', 1, 'Offline', 'Delhi', 'new delhi shahdra', '', '', '7', 'not interested', '', 'walk In', -1, '16:31:54', '2024-06-11', 'anjali@gmail.com', 1),
(39, 1, 'HUDA SOFI', 'Female', '', '', '8595375772', 1, 'Online', '', 'DELHI', 'DELHI', '', '6', 'not interested', '', 'walk In', -1, '16:32:44', '2024-06-11', 'dipika@gmail.com', 1),
(40, 1, 'Bhawna Meena', 'Female', '', '', '9784647201', 1, 'Offline', 'Delhi', 'delhi', '', '', '8', 'Open 1', '', 'walk In', -1, '16:34:42', '2024-06-11', 'shagun@gmail.com', 1),
(41, 1, 'SUJAL PAWAR', 'Male', '', '', '7974575167', 1, 'Online', 'Madhya Pradesh', 'MADHYA PRADESH', 'MADHYA PRADESH', '', '6', 'Open 1', '', 'walk In', -1, '16:36:36', '2024-06-11', 'dipika@gmail.com', 1),
(42, 1, 'hitesh', 'Male', '', '', '9821940433', 1, 'Online', 'Maharashtra', 'mumbai', '', '', '7', 'not interested', '', 'walk In', -1, '16:36:55', '2024-06-11', 'anjali@gmail.com', 1),
(43, 1, 'Vishesh Pathak', 'Male', '', 'visheshpathak2004@gmail.com', '9336561793', 1, 'Offline', 'Uttar Pradesh', 'noida', '', '', '8', 'Open 1', '', 'walk In', -1, '16:37:06', '2024-06-11', 'shagun@gmail.com', 1),
(44, 1, 'SAHIL', 'Male', '', '', '8103496730', 1, 'Offline', 'Delhi', 'DELHI', 'DELHI', '', '6', 'Open 1', '', 'walk In', -1, '16:38:55', '2024-06-11', 'dipika@gmail.com', 1),
(45, 1, 'harsh raj', 'Male', '', '', '7903709330', 1, 'Offline', '', 'deoriya', '', '', '7', 'not interested', '', 'walk In', -1, '16:39:48', '2024-06-11', '', 1),
(46, 1, 'ASHUDEEP UPADHAY', 'Male', '', '', '9082509530', 1, 'Online', 'Delhi', 'DELHI', 'DELHI', '', '6', 'not interested', '', 'walk In', -1, '16:40:43', '2024-06-11', 'dipika@gmail.com', 1),
(47, 1, 'Kanhaiyalal Suthar', 'Male', '', 'kanhaiyalalsuthar520@gmail.com', '8955489259', 1, 'Online', 'Rajasthan', 'churu', '', '', '8', 'Open 1', '', 'walk In', -1, '16:41:36', '2024-06-11', 'shagun@gmail.com', 1),
(48, 1, 'RAJNEESH RAJ', 'Male', '', '', '9262573882', 1, 'Online', '', 'DELHI', 'DELHI', '', '6', 'not interested', '', 'walk In', -1, '16:42:13', '2024-06-11', 'dipika@gmail.com', 1),
(49, 1, 'GAURAV BHATI', 'Male', '', '', '8750089401', 1, 'Offline', 'Uttar Pradesh', 'NOT KNOWN', '', '', '7', 'not interested', '', 'walk In', -1, '16:43:54', '2024-06-11', 'anjali@gmail.com', 1),
(50, 1, 'SAHIL', 'Male', '', '', '6005443016', 1, 'Online', 'Jammu and Kashmir', 'NOT KNOWN', '', '', '7', 'not interested', '', 'walk In', -1, '16:45:14', '2024-06-11', 'anjali@gmail.com', 1),
(51, 1, 'SHASHANK SIROLI', 'Male', '', '', '9354476823', 1, 'Offline', 'Delhi', 'DELHI', 'DELHI', '', '6', 'Open 1', '', 'walk In', -1, '16:46:24', '2024-06-11', 'dipika@gmail.com', 1),
(52, 1, 'SACHIN PARASAR ', 'Male', '', '', '8287535958', 1, 'Offline', 'Bihar', 'CHHAPRAULA', '', '', '7', 'not interested', '', 'walk In', -1, '16:47:04', '2024-06-11', 'anjali@gmail.com', 1),
(53, 1, 'OM KAUSHIK', 'Male', '', '', '7417100265', 1, 'Offline', 'Delhi', 'DELHI', 'DELHI', '', '6', 'Open 1', '', 'walk In', -1, '16:47:42', '2024-06-11', 'dipika@gmail.com', 1),
(54, 1, 'Naitik', 'Male', '', 'naitikpahwa3@gmail.com', '7210423000', 1, 'Offline', 'Punjab', 'amohar', '', '', '8', 'Open 1', '', 'walk In', -1, '16:48:19', '2024-06-11', 'shagun@gmail.com', 1),
(55, 1, 'ABHISHEK MALIK ', 'Male', '', '', '9690558132', 1, 'Offline', 'Uttar Pradesh', 'BAGPAT', '', '', '7', 'not interested', '', 'walk In', -1, '16:48:32', '2024-06-11', 'anjali@gmail.com', 1),
(56, 1, 'CHAHANA KANDPAL', 'Male', '', '', '9312223089', 1, 'Online', 'Delhi', 'DELHI', 'DELHI', '', '6', 'Open 1', '', 'walk In', -1, '16:49:02', '2024-06-11', 'dipika@gmail.com', 1),
(57, 1, 'SATISH ', 'Male', '', '', '9685478722', 1, 'Offline', 'Madhya Pradesh', 'BHOPAL', '', '', '7', 'not interested', '', 'walk In', -1, '16:50:05', '2024-06-11', 'anjali@gmail.com', 1),
(58, 1, 'Yash Mishra', 'Male', '', 'meetyash07@gmail.com', '8130826181', 1, 'Offline', 'Uttar Pradesh', 'gaziabad', '', '', '8', 'Open 1', '', 'walk In', -1, '16:51:04', '2024-06-11', 'shagun@gmail.com', 1),
(59, 1, 'ATIF', 'Male', '', '', '9560708401', 1, 'Offline', 'Delhi', 'SOUTH DELHI', '', '', '7', 'admission close', '', 'walk In', -1, '16:51:22', '2024-06-11', 'anjali@gmail.com', 1),
(60, 1, 'KOSHIV UIKEY', 'Male', '', '', '8770115920', 1, 'Offline', 'Madhya Pradesh', 'MADHYA PRADESH', 'MADHYA PRADESH', '', '6', 'Open 1', '', 'walk In', -1, '16:51:52', '2024-06-11', 'dipika@gmail.com', 1),
(61, 1, 'SONU KUMAR', 'Male', '', '', '9905346919', 1, 'Offline', 'Bihar', 'BIHAR', 'BIHAR', '', '6', 'Open 1', '', 'walk In', -1, '16:53:38', '2024-06-11', 'dipika@gmail.com', 1),
(62, 1, 'Vivek Patel', 'Male', '', '', '9458029004', 1, 'Offline', 'Uttar Pradesh', 'barailey', '', '', '8', 'Open 1', '', 'walk In', -1, '16:55:11', '2024-06-11', 'shagun@gmail.com', 1),
(63, 1, 'ANJALI', 'Female', '', '', '9873228252', 30, 'Online', 'Delhi', 'DELHI', 'POLICE LINE VIKASPURI,DELHI', '', '6', 'Open 1', '', 'walk In', -1, '16:55:37', '2024-06-11', 'dipika@gmail.com', 1),
(64, 1, 'ASIF ANSARI', 'Male', '', '', '9955203273', 30, 'Offline', 'Jharkhand', 'JHARKHAND', 'JHARKHAND', '', '6', 'admission close', '', 'walk In', -1, '16:57:31', '2024-06-11', 'dipika@gmail.com', 1),
(65, 1, 'Enayat', 'Female', '', 'r.kundu2012@gmail.com', '8295956628', 30, 'Offline', 'Haryana', 'hisar', '', '', '8', 'Open 1', '', 'walk In', -1, '16:58:33', '2024-06-11', 'shagun@gmail.com', 1),
(66, 1, 'Mohd. Anas', 'Male', '', 'anas444444@gmail.com', '9837873089', 1, 'Offline', 'Uttar Pradesh', 'Moradabad', '', '', '8', 'Open 1', '', 'walk In', -1, '17:01:07', '2024-06-11', 'shagun@gmail.com', 1),
(67, 1, 'Shivam Tiwari', 'Male', '', 'shivam22092002', '7398870466', 1, 'Online', 'Uttar Pradesh', 'Lucknow', '', '', '8', 'Open 1', '', 'walk In', -1, '17:04:12', '2024-06-11', 'shagun@gmail.com', 1),
(68, 1, 'Dev Raj', 'Male', '', 'devhrc3583@gmail.com', '9355684796', 1, 'Offline', 'Delhi', '', '', '', '8', 'Open 1', '', 'walk In', -1, '17:06:30', '2024-06-11', 'shagun@gmail.com', 1),
(69, 1, 'Aakash', 'Male', '', 'soniaakash162@gmail.com', '7056685842', 1, 'Offline', 'Delhi', 'delhi', 'lajpat nagar', '', '8', 'Open 1', '', 'Website', -1, '17:08:50', '2024-06-11', 'shagun@gmail.com', 1),
(70, 1, 'Abhinav Mishra', 'Male', '', 'anubhavmishra4448@gmail.com', '7460912959', 1, 'Offline', 'Uttar Pradesh', 'lucknow', '', '', '8', 'Open 1', '', 'walk In', -1, '17:11:26', '2024-06-11', 'shagun@gmail.com', 1),
(71, 1, 'Aditya Raj Singh', 'Male', '', 'adityathakurbjs224@gmail.com', '8354903118', 1, 'Offline', 'Uttar Pradesh', 'prayagraj', '', '', '8', 'Open 1', '', 'walk In', -1, '17:15:30', '2024-06-11', 'shagun@gmail.com', 1),
(72, 1, 'Aryan Shukla', 'Male', '', '9981411045', '9981411045', 1, 'Offline', 'Chhattisgarh', 'Durg', '', '', '8', 'Open 1', '', 'walk In', -1, '17:19:01', '2024-06-11', 'shagun@gmail.com', 1),
(73, 1, 'Khitesh', 'Male', '', '', '6263426674', 1, 'Offline', '', '', '', '', '8', 'Open 1', '', 'walk In', -1, '17:25:23', '2024-06-11', 'shagun@gmail.com', 1),
(74, 1, 'PRIYANSHU KUMAR', 'Male', '', '', '9968760690', 30, 'Offline', 'Delhi', 'DELHI', '17/153,STREET NO 5,THAN SINGH NAGAR,NEW DELHI', '', '6', 'Open 1', '', 'walk In', -1, '17:32:42', '2024-06-11', 'dipika@gmail.com', 1),
(75, 2, 'ANJANI KAMLESHBHAI JAYSWAL', 'Female', '', 'anjanijayswal99@gmail.com', '8128549736', 19, 'Offline', 'Gujarat', 'ahmedbad', 'gurukul', '', '18', 'Open 4', '', 'reference', -1, '18:03:41', '2024-06-11', 'bhavi@praajasv.com', 1),
(76, 2, 'DHRUVISH GANDHI', 'Male', '', 'gandhidhruvish62@gmail.com', '9737355545', 20, 'Offline', 'Gujarat', 'ahmedabad', 'shyamal', '', '18', 'admission close', '', 'reference', -1, '18:09:24', '2024-06-11', '', 1),
(77, 3, 'JIGNESHBHAI RATHAVA ', 'Male', '', 'jigneshbhairathva@gmail.com', '9537955278', 17, 'Online', 'Gujarat', '', 'bodeli', '', '20', 'Open 1', '', 'walk In', -1, '18:58:55', '2024-06-11', 'KRUPALI1@PRAAJASV.COM', 1),
(78, 3, 'HINAL CHHAIYA', 'Female', '', '', '9510111507', 17, 'Offline', 'Gujarat', 'JUNAGADH', 'JUNAGADH', '', '20', 'admission close', '', 'walk In', -1, '19:00:58', '2024-06-11', 'KRUPALI1@PRAAJASV.COM', 1),
(79, 3, 'RIDDHI PATEL', 'Male', '', '', '8780392718', 17, 'Offline', 'Gujarat', 'KAPDVANG', '14-AKSHRDHAM NAGAR SOCIETY', '', '20', 'Open 2', '', 'walk In', -1, '19:36:56', '2024-06-11', 'KRUPALI1@PRAAJASV.COM', 1),
(80, 3, 'PRITESH PATEL', 'Male', '', 'pritupaa@gmail.com', '8200422007', 17, 'Offline', 'Gujarat', 'dakor', '39/dharati residence', '', '10', 'not interested', '', 'walk In', -1, '11:19:25', '2024-06-12', 'krupali1@praajasv.com', 1),
(81, 3, 'vaidehaiba chvda ', 'Female', '', '', '9924557536', 17, 'Offline', 'Gujarat', 'GANDHINAGAR', 'Gandhinagar', '', '20', 'Open 2', '', 'walk In', -1, '11:25:15', '2024-06-12', 'krupali1@praajasv.com', 1),
(82, 3, 'POOJA RAJNIKANT TAILOR', 'Female', '', '', '9998973340', 17, 'Offline', 'Gujarat', 'AHMEDABAD', '', '', '20', 'admission close', '', 'walk In', -1, '11:31:51', '2024-06-12', 'krupali1@praajasv.com', 1),
(83, 3, 'yogi', 'Male', '', '', '1234569870', 17, 'Offline', 'Gujarat', 'mehesana', '', '', '11', 'Open 3', '', 'Telephonic', -1, '11:41:34', '2024-06-12', 'dipti@praajasv.com', 1),
(84, 3, 'divya prahladbhai agrwal', 'Female', '', '', '9328697361', 17, 'Offline', 'Gujarat', 'dahod', 'LAL BUNGLOW ROAD ,DEV BARIYA DAHOD', '', '20', 'Open 1', '', 'walk In', -1, '12:43:15', '2024-06-12', 'KRUPALI1@PRAAJASV.COM', 1),
(85, 3, 'JYOTI ARVINDBHAI RATHVA ', 'Female', '', 'RATHAVAJYOTI43@GMAIL.COM', '9313440853', 17, 'Offline', 'Gujarat', 'CHHOTAUDAIPUR', 'MITHIBOR', '', '20', 'Open 1', '', 'walk In', -1, '12:46:16', '2024-06-12', 'KRUPALI1@PRAAJASV.COM', 1),
(86, 3, 'JAIMINABEN SARDARBHAI BATIYA', 'Female', '', 'jaminabati9575@gmail.com', '9320770234', 17, 'Offline', 'Gujarat', 'DAHOD', 'DEVGADH BARIYA', '', '20', 'Open 1', '', 'walk In', -1, '12:50:28', '2024-06-12', 'KRUPALI1@PRAAJASV.COM', 1),
(87, 3, 'Harshivkumar nileshbhai patel', 'Male', '', 'harshivptl87@gmail.com', '8758323415', 17, 'Online', 'Gujarat', '', '', '', '20', 'Open 4', '', 'walk In', -1, '12:53:30', '2024-06-12', 'KRUPALI1@PRAAJASV.COM', 1),
(88, 3, 'DHRUV THUSARGIRI SWAMI ', 'Female', '', '', '7383720776', 18, 'Offline', 'Gujarat', 'GANDHINAGAR', 'D-403,SATVAM PARKLANE, OPPOSITE SAMARTH 56,BEHAND AASHKA HOSPITAL ', '', '20', 'Open 4', '', 'walk In', -1, '12:57:37', '2024-06-12', 'KRUPALI1@PRAAJASV.COM', 1),
(89, 3, 'MINAXI VAZA ', 'Male', '', 'minaxivaza91@gmail.com ', '9909882309', 17, 'Offline', 'Gujarat', 'kadi', 'kadi', '', '20', 'not interested', '', 'walk In', -1, '13:00:27', '2024-06-12', 'KRUPALI1@PRAAJASV.COM', 1),
(90, 3, 'SONAL PANKAJBHAI PATEL', 'Female', '', '', '6355126056', 17, 'Online', 'Gujarat', 'VADALI', 'THERASNA', '', '20', 'Open 4', '', 'walk In', -1, '13:05:37', '2024-06-12', 'KRUPALI1@PRAAJASV.COM', 1),
(91, 3, 'TANVI VINOD PATEL', 'Female', '', 'tanvipatel1439@gmail.com', '6359644153', 17, 'Offline', '', 'VALSAD', '108/2A SONA PLOT', '', '20', 'Open 4', '', 'walk In', -1, '13:07:34', '2024-06-12', 'KRUPALI1@PRAAJASV.COM', 1),
(92, 3, 'HARSHRAJSINH MORI', 'Male', '', '', '9313261571', 17, 'Offline', '', 'SURENDRANAGAR', 'JALRAM-2 NEW 80 FEET ROAD ', '', '20', 'Open 2', '', 'walk In', -1, '13:09:41', '2024-06-12', 'KRUPALI1@PRAAJASV.COM', 1),
(93, 2, 'SAHDEVSINH JADAV', 'Male', '', '', '9601039661', 19, 'Offline', '', '', '', '', '18', 'admission close', '', 'reference', -1, '13:24:19', '2024-06-12', 'bhavi@praajasv.com', 1),
(107, 1, 'VIRAJ  KAUSHIK', 'Male', '', '', '8670844175', 1, 'Online', 'West Bengal', 'WEST BENGAL', 'WEST BENGAL', '', '6', 'Open 1', '', 'walk In', -1, '10:13:10', '2024-06-13', 'deepika@gmail.com', 1),
(95, 3, 'DAKSHIBEN AAHIR', 'Female', '', 'vijay14486.vc@gmail.com', '8160315495', 17, 'Offline', 'Gujarat', 'NAVSARI', 'AAMDHRA GAM', '', '20', 'Open 4', '', 'walk In', -1, '14:14:48', '2024-06-12', 'KRUPALI1@PRAAJASV.COM', 1),
(96, 1, 'arunima patel ', 'Male', '', '', '7889227232', 1, 'Offline', 'Uttar Pradesh', 'south delhi', '', '', '7', 'not interested', '', 'walk In', -1, '14:43:46', '2024-06-12', 'anjali@gmail.com', 1),
(97, 1, 'vineet gonna ', 'Male', '', '', '8860810812', 1, 'Offline', '', '', '', '', '7', 'not interested', '', 'walk In', -1, '14:45:03', '2024-06-12', 'anjali@gmail.com', 1),
(98, 2, 'SUMITSINH CHAUHAN', 'Male', '', '', '8780899582', 26, 'Offline', 'Gujarat', 'AHMEDABAD', 'NEAR AMA', '', '12', 'admission close', '', 'walk In', -1, '14:45:07', '2024-06-12', 'KHUSHBU@GMAIL.COM', 1),
(99, 1, 'shivani singh ', 'Male', '', '', '8860493814', 1, 'Online', '', '', '', '', '7', 'not interested', '', 'walk In', -1, '14:46:00', '2024-06-12', 'anjali@gmail.com', 1),
(100, 1, 'lochna', 'Female', '', '', '9434293396', 1, 'Offline', '', '', '', '', '7', 'not interested', '', 'walk In', -1, '14:48:54', '2024-06-12', 'anjali@gmail.com', 1),
(101, 1, 'ankush shrivas', 'Male', '', '', '9522709327', 1, 'Offline', 'Madhya Pradesh', '', '', '', '7', 'admission close', '', 'walk In', -1, '14:50:32', '2024-06-12', 'anjali@gmail.com', 1),
(102, 2, 'MUKESH RATHOD', 'Male', '', '', '8469761448', 26, 'Online', '', '', '', '', '12', 'Open 2', '', 'Telephonic', -1, '15:13:35', '2024-06-12', 'khushbu@gmail.com', 1),
(103, 3, 'AESHA', 'Female', '', '', '9173312038', 17, 'Offline', 'Gujarat', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '17:56:53', '2024-06-12', 'dipti@praajasv.com', 1),
(104, 2, 'YASHPAL PUROHIT', 'Male', '', 'ankitpurohit0000@gmail.com', '8200298381', 20, 'Offline', 'Gujarat', 'vapi', '', '', '18', 'Open 1', '', 'Google Ads', -1, '18:16:26', '2024-06-12', 'bhavi@praajasv.com', 1),
(105, 2, 'BHAVIN VADHER', 'Male', '', '', '9106781058', 20, 'Offline', '', '', '', '', '18', 'Open 1', '', 'youtube', -1, '18:29:46', '2024-06-12', 'bhavi@praajasv.com', 1),
(106, 1, 'ayush shukla', 'Male', '', '', '7355015695', 1, 'Offline', 'Uttar Pradesh', 'lucknow', '', '', '7', 'Open 4', '', 'walk In', -1, '18:53:07', '2024-06-12', 'anjali@gmail.com', 1),
(108, 1, 'KESHAV', 'Male', '', '', '9818809149', 1, 'Online', 'Delhi', 'DELHI', 'DWARKA SEC 10 DELHI', '', '6', 'not interested', '', 'walk In', -1, '10:15:19', '2024-06-13', 'deepika@gmail.com', 1),
(109, 1, 'ANSHU YADAV', 'Male', '', '', '8826730501', 1, 'Online', 'Delhi', 'DELHI', 'DELHI', '', '6', 'not interested', '', 'walk In', -1, '10:21:42', '2024-06-13', 'deepika@gmail.com', 1),
(110, 1, 'ALOK RAJ', 'Male', '', '', '9798876282', 1, 'Online', 'Bihar', 'BIHAR', 'BIHAR', '', '6', 'not interested', '', 'walk In', -1, '10:23:45', '2024-06-13', 'deepika@gmail.com', 1),
(111, 1, 'SWATI PRIYA', 'Male', '', '', '7667315867', 1, 'Online', '', 'DELHI', 'DELHI', '', '6', 'Open 1', '', 'walk In', -1, '10:25:05', '2024-06-13', 'deepika@gmail.com', 1),
(112, 1, 'SHASHANK RAJ PRIYA', 'Male', '', '', '7903907787', 1, 'Online', 'Bihar', 'BIHAR', 'BIHAR', '', '6', 'Open 1', '', 'walk In', -1, '10:27:15', '2024-06-13', 'deepika@gmail.com', 1),
(113, 1, 'PRITAM PRINCE YADAV', 'Male', '', '', '9142115250', 1, 'Online', 'Bihar', 'BIHAR', 'BIHAR', '', '6', 'not interested', '', 'walk In', -1, '10:30:35', '2024-06-13', 'deepika@gmail.com', 1),
(114, 1, 'GAUTAM JAISWAL', 'Male', '', '', '8851864860', 1, 'Online', 'Delhi', 'DELHI', 'DELHI', '', '6', 'Open 1', '', 'walk In', -1, '10:32:08', '2024-06-13', 'deepika@gmail.com', 1),
(115, 3, 'HETAL ASHVINBHAI CHAUHAN', 'Female', '', '', '9624002994', 18, 'Offline', 'Gujarat', 'BAVDA', 'CHAUHAN SOCIETY BEHIND KUMARSHALA', '', '20', 'Open 1', '', 'walk In', -1, '16:18:21', '2024-06-13', 'KRUPALI1@PRAAJASV.COM', 1),
(116, 1, 'Divya Kaushik', 'Female', '', 'dpmkaushik@gmail.com', '7982955591', 1, 'Offline', 'Delhi', 'delhi', '', '', '8', 'Open 1', '', 'walk In', -1, '16:24:51', '2024-06-13', '', 1),
(117, 3, 'MEET BAROT ', 'Male', '', 'meetbrahmbhatt003@gmail.com', '9978912696', 18, 'Offline', 'Gujarat', 'AHMEDABAD', 'UTTAMNAGAE SOCIETY NIKOL', '', '20', 'Open 1', '', 'walk In', -1, '16:30:32', '2024-06-13', 'KRUPALI1@PRAAJASV.COM', 1),
(118, 1, 'Kehkasha', 'Female', '', 'kahkashakahkasha79@gmail.com', '8865851400', 1, 'Online', 'Uttar Pradesh', 'Saharanpur', '', '', '8', 'Open 1', '', 'walk In', -1, '16:37:32', '2024-06-13', 'shagun@gmail.com', 1),
(119, 1, 'Sumit Pandey', 'Male', '', 'isumitpandey08@gmail.com', '9646205240', 1, 'Online', 'Haryana', 'Amroha', '', '', '8', 'admission close', '', 'walk In', -1, '16:41:26', '2024-06-13', 'shagun@gmail.com', 1),
(120, 1, 'akash verma', 'Male', '', '', '8871039224', 1, 'Offline', 'Madhya Pradesh', 'gwalior', 'd d nagar gwalior', '', '6', 'Open 1', '', 'walk In', -1, '17:29:01', '2024-06-13', 'deepika@gmail.com', 1),
(121, 1, 'varun mishra', 'Male', '', '', '9973980959', 1, 'Offline', 'Bihar', 'bihar', 'bihar', '', '6', 'Open 1', '', 'walk In', -1, '17:30:40', '2024-06-13', 'deepika@gmail.com', 1),
(122, 1, 'niraj alam', 'Male', '', '', '9821969890', 1, 'Online', 'Bihar', 'champaran', 'ghoraja, dist e champaran bihar', '', '6', 'Open 1', '', 'walk In', -1, '17:32:39', '2024-06-13', 'deepika@gmail.com', 1),
(123, 2, 'MUKUND SOLANKI', 'Male', '', '', '9033872614', 20, 'Offline', '', '', '', '', '18', 'Open 4', '', 'Telephonic', -1, '18:45:24', '2024-06-13', 'bhavi@praajasv.com', 1),
(124, 2, 'UNNATI SOLANKI', 'Female', '', '', '9924652887', 20, 'Offline', '', '', '', '', '18', 'Open 4', '', 'Telephonic', -1, '18:46:06', '2024-06-13', 'bhavi@praajasv.com', 1),
(125, 3, 'YASH SITAPRA ', 'Male', '', '', '8780276250', 17, 'Offline', 'Gujarat', 'HALVAD', 'TIKAR', '', '20', 'not interested', '', 'walk In', -1, '12:00:57', '2024-06-14', 'krupali1@praajasv.com', 1),
(126, 3, 'SATYAKI PATHAK ', 'Male', '', '', '8320389206', 17, 'Offline', 'Gujarat', 'gandhinagar', 'B-702 VRUNDAVAN HILLS RAYSAN ', '', '16', 'Open 1', '', 'walk In', -1, '12:11:25', '2024-06-14', 'krupali1@praajasv.com', 1),
(127, 3, 'DIMPLE .H. GOSWAMI ', 'Female', '', 'dimple9796@gmail.com', '9424778203', 16, 'Offline', 'Gujarat', '', '', '', '15', 'Open 1', '', 'walk In', -1, '12:13:19', '2024-06-14', 'krupali1@praajasv.com', 1),
(128, 3, 'BHARGAV MEHTA ', 'Male', '', '', '9316369514', 17, 'Online', 'Gujarat', 'AHMEDABAD', '', '', '16', 'Open 1', '', 'walk In', -1, '12:16:00', '2024-06-14', 'krupali1@praajasv.com', 1),
(129, 3, 'JIGAR PATEL', 'Male', '', '', '8141676315', 17, 'Offline', 'Gujarat', 'PANCHMAHAL', 'GODHARA', '', '20', 'Open 1', '', 'walk In', -1, '12:21:05', '2024-06-14', 'krupali1@praajasv.com', 1),
(130, 3, 'SANJAY PADHIYAR', 'Male', '', '', '9099014685', 17, 'Offline', 'Gujarat', 'AHEMDABAD', 'C1/505 PUSHKAR RESI, NEAR BARODA EXPRESS  HIGHWAY', '', '20', 'Open 1', '', 'walk In', -1, '12:23:25', '2024-06-14', 'krupali1@praajasv.com', 1),
(131, 3, 'ANNIRUDHHA SINH BIHOLA ', 'Male', '', '', '7016767995', 17, 'Offline', 'Gujarat', 'GODHRA', 'SRP-G 5 GOHARA', '', '20', 'not interested', '', 'walk In', -1, '12:25:44', '2024-06-14', 'krupali1@praajasv.com', 1),
(132, 3, 'DHRUVAL BARIA ', 'Male', '', 'dhruvalbaria3630@gmail.com', '8140619717', 17, 'Offline', 'Gujarat', 'saragasan', 'pramukh trinity', '', '20', 'Open 1', '', 'walk In', -1, '12:29:03', '2024-06-14', 'krupali1@praajasv.com', 1),
(133, 3, 'SAJJAN SOLANKI', 'Male', '', 'SAJJANI SOLANKI', '6354278918', 17, 'Offline', 'Gujarat', 'KHEDA', 'CHHIPADI  KATHALAL KHEDA ', '', '20', 'Open 1', '', 'walk In', -1, '12:29:52', '2024-06-14', 'krupali1@praajasv.com', 1),
(134, 3, 'DEEP SONI', 'Male', '', '', '6364114146', 17, 'Offline', 'Gujarat', 'GANDHINAGAR', 'HARIZON-2 SARGASAN', '', '20', 'Open 1', '', 'walk In', -1, '12:32:06', '2024-06-14', 'krupali1@praajasv.com', 1),
(135, 3, 'vivek ahir ', 'Male', '', 'vivekahir15@gamil.com', '8929690043', 17, 'Offline', 'Gujarat', 'jamnagar', 'sekhpat ', '', '20', 'Open 1', '', 'walk In', -1, '12:36:02', '2024-06-14', 'krupali1@praajasv.com', 1),
(136, 3, 'chaudhari hemanykumar', 'Male', '', '', '8469848246', 17, 'Offline', 'Gujarat', 'abc ', 'abcd ', '', '20', 'Open 4', '', 'walk In', -1, '12:40:40', '2024-06-14', 'krupali1@praajasv.com', 1),
(137, 3, 'aryan patel', 'Male', '', '', '9023934531', 17, 'Offline', 'Gujarat', 'gandhinagar', 'kadmedra, dahegam', '', '20', 'Open 1', '', 'walk In', -1, '12:44:48', '2024-06-14', 'krupali1@praajasv.com', 1),
(138, 3, 'darshan goswami ', 'Male', '', 'darshangoswami2511@gmail.com', '9016596562', 17, 'Offline', 'Gujarat', '', 'abcd', '', '20', 'Open 1', '', 'walk In', -1, '12:49:05', '2024-06-14', 'krupali1@praajasv.com', 1),
(139, 3, 'deep gajjar', 'Male', '', '', '9157469985', 17, 'Offline', 'Gujarat', '', 'imdeepgajjar@gmail.com', '', '20', 'Open 1', '', 'walk In', -1, '12:52:56', '2024-06-14', 'krupali1@praajasv.com', 1),
(140, 3, 'NIDHIBA CHAUHAN', 'Female', '', 'xyz@gmail.com', '9824688680', 17, 'Offline', 'Gujarat', 'GANDHINAGAR', 'shreeji swastik sargasan gandhinagar', '', '20', 'admission open', '', 'walk In', -1, '13:08:03', '2024-06-14', 'krupali1@praajasv.com', 1),
(141, 3, 'BANSARI PATEL', 'Female', '', '', '9023358910', 17, 'Offline', 'Gujarat', 'DEHGAM', '152,SHRINATH BUNGLOWS OPP NAYRA PETROL PUMP ,AHMEDABAD', '', '20', 'Open 1', '', 'walk In', -1, '13:11:38', '2024-06-14', 'krupali1@praajasv.com', 1),
(142, 3, 'AJAY SING', 'Male', '', '', '7778046697', 17, 'Offline', 'Gujarat', 'PORBANDAR', 'PORBANDAR', '', '20', 'Open 1', '', 'walk In', -1, '13:13:16', '2024-06-14', 'krupali1@praajasv.com', 1),
(143, 3, 'KARAN MANAV RAMESHBHAI ', 'Male', '', '', '9313783992', 17, 'Offline', 'Gujarat', 'NAVSARI', 'NAVSARI', '', '20', 'Open 1', '', 'walk In', -1, '13:14:57', '2024-06-14', 'krupali1@praajasv.com', 1),
(144, 3, 'JAY RAJESHKUMAR PARMAR', 'Male', '', '', '9428977810', 17, 'Offline', 'Gujarat', 'PALNPUR', 'PALANPUR', '', '20', 'Open 1', '', 'walk In', -1, '13:16:34', '2024-06-14', 'krupali1@praajasv.com', 1),
(145, 3, 'GOPAL KUMAR RATHOD', 'Male', '', 'rathodgopal7093@gmail.com ', '9913936934', 17, 'Offline', 'Gujarat', 'AHMEDABAD', 'ODHAV POLICE STATION ', '', '20', 'not interested', '', 'walk In', -1, '13:18:58', '2024-06-14', 'krupali1@praajasv.com', 1),
(146, 3, 'KHYATI DIXIT', 'Female', '', 'JEETDIXIT@GMAIL.COM', '7600652495', 17, 'Online', 'Gujarat', 'GANDHINAGAR', 'UVARSAD', '', '20', 'Open 1', '', 'walk In', -1, '13:24:27', '2024-06-14', 'krupali1@praajasv.com', 1),
(147, 3, 'SAHIL VIJAYBHAI PATEL', 'Male', '', '', '7096303206', 17, 'Offline', 'Gujarat', 'VALSAD', 'NAVERA BAVISAFALIYA VALSAD', '', '20', 'Open 1', '', 'walk In', -1, '13:30:47', '2024-06-14', 'krupali1@praajasv.com', 1),
(148, 3, 'MANAV SUTHAR ', 'Male', '', 'manavsuthar2004@gmail.com', '7984259174', 17, 'Online', 'Gujarat', 'gandhinagar', 'A-103 SILICON LA VISTA PDPU GANDHINAGAR', '', '20', 'Open 1', '', 'walk In', -1, '13:33:09', '2024-06-14', 'krupali1@praajasv.com', 1),
(149, 3, 'DIVYANSHI PATEL', 'Male', '', 'DIVANSHI PATEL@GMAIL.COM', '8849924712', 17, 'Offline', 'Gujarat', 'VALSAD', 'NAVERA BAVISHA FALIYA VALSAD', '', '20', 'Open 1', '', 'walk In', -1, '13:35:23', '2024-06-14', 'krupali1@praajasv.com', 1),
(150, 3, 'SAHIL SAMA', 'Male', '', '', '6351616680', 17, 'Online', 'Gujarat', 'GANDHINAGAR', 'KARGIL PETROL PUMP ,CHANKYAPURI SEC-5', '', '20', 'Open 1', '', 'walk In', -1, '13:36:49', '2024-06-14', 'krupali1@praajasv.com', 1),
(151, 3, 'NILESH GOJIYA', 'Male', '', '', '9328009221', 17, 'Online', 'Gujarat', 'DWARKA ', 'DWARKA', '', '20', 'Open 1', '', 'walk In', -1, '13:41:00', '2024-06-14', 'krupali1@praajasv.com', 1),
(152, 3, 'JYOTI MAKWANA ', 'Female', '', 'KISHORBHAIMAKWANA932@GMAIL.COM ', '9879880010', 17, 'Offline', 'Gujarat', 'MORBI', 'CITY PPOLICE LINE ', '', '20', 'Open 1', '', 'walk In', -1, '13:44:58', '2024-06-14', 'krupali1@praajasv.com', 1),
(153, 2, 'URVI SHUKLA', 'Female', '', '', '7096306845', 19, 'Offline', '', '', '', '', '18', 'Open 4', '', 'reference', -1, '14:02:29', '2024-06-14', '', 1),
(154, 3, 'MINA G. CHAUDHARY', 'Female', '', 'minachaudhary1512@gmail.com', '8141651237', 13, 'Online', 'Gujarat', 'THARAD, BANASKANTHA', 'AT&PO: RAMPAR,TA: THARAD ,DIST: B.K', '', '22', 'Confirmation Done', '', 'walk In', -1, '14:42:30', '2024-06-14', 'gayatri@praajasv.com', 1),
(155, 3, 'NISARTA HITKUMAR ', 'Female', '', '', '8849691011', 17, 'Offline', 'Gujarat', 'GANDHINAGAR', 'SEC-7C ', '', '20', 'not interested', '', 'walk In', -1, '14:43:39', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1),
(156, 3, 'RAM BHARVAD ', 'Male', '', '', '9316830919', 17, 'Offline', 'Gujarat', 'GANDHINAGAR', 'SEC 7-A ', '', '20', 'Open 1', '', 'walk In', -1, '14:45:35', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1),
(157, 3, 'MANSHI MER ', 'Female', '', '', '8426584436', 17, 'Offline', 'Gujarat', 'BOTAD', 'RANPUR', '', '20', 'Open 1', '', 'walk In', -1, '14:47:18', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1),
(158, 3, 'KRUNALDEEP A. GAMETI', 'Male', '', 'gameti.krunaldeep431@gmail.com', '7229003098', 13, 'Offline', 'Gujarat', 'AHMEDABAD', '', '', '22', 'Open 3', '', 'walk In', -1, '14:47:48', '2024-06-14', 'gayatri@praajasv.com', 1),
(159, 3, 'DEV CHAVDA ', 'Male', '', 'CHAVDADIVYAM16@GMAIL.COM ', '9157669459', 17, 'Offline', 'Gujarat', 'AHMEDABAD', '235-1393GHB GAYTRINAGAR CHADKHEDA ', '', '20', 'Open 1', '', 'walk In', -1, '14:50:50', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1),
(160, 3, 'SHIVANGIBEN MEHTA ', 'Female', '', '', '9328579535', 17, 'Online', 'Gujarat', 'NAVSARI', 'CHIKHALI', '', '20', 'Open 1', '', 'walk In', -1, '14:52:45', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1),
(161, 3, 'BHAVINI PATEL', 'Female', '', 'BHAVINI02PATEL@GMAIL.COM', '9328211303', 16, 'Offline', 'Gujarat', 'SURAT ', 'MAHUAA , SURAT', '', '20', 'Open 1', '', 'walk In', -1, '14:54:18', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1),
(162, 3, 'JEYESH DESAI', 'Male', '', 'DESAIJAY382@GMAIL.COM', '8980100608', 17, 'Online', 'Gujarat', '', 'VRUVANDAVAN APPRTMENT SARGASAN ', '', '20', 'Open 4', '', 'walk In', -1, '14:56:54', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1),
(163, 3, 'om koradiya ', 'Male', '', '', '9725185885', 17, 'Offline', 'Gujarat', 'gandhinagar', 'sect- 25', '', '20', 'Open 1', '', 'walk In', -1, '14:58:26', '2024-06-14', '', 1),
(164, 3, 'JAYDEEPSINH RAJPUT', 'Male', '', 'JAYDEEPR55555@GMAIL.COM', '9081614277', 17, 'Offline', 'Gujarat', 'GANDHINAGAR', '320/102 GREENWOOD APPREMENT SEC-23 GANDHINAGAR', '', '20', 'Open 4', '', 'walk In', -1, '14:59:38', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1),
(165, 3, 'RUSHI BHARTIYA ', 'Male', '', 'BHARTIYARUSHI485@GMAIL.COM', '7802807483', 17, 'Online', 'Gujarat', 'AHMEDABAD ', 'B-501 SUKAN HOMES NEW RANIP AH,MEDABAD ', '', '20', 'Open 1', '', 'walk In', -1, '15:02:07', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1),
(166, 1, 'Shashank Sharma', 'Male', '', 'spshashanksharma@gmail.com', '9760206313', 1, 'Offline', 'Uttar Pradesh', '', '', '', '8', 'Open 1', '', 'walk In', -1, '15:02:49', '2024-06-14', 'shagun@gmail.com', 1),
(167, 1, 'Prince', 'Male', '', 'prince000267@gmail.com', '9718224047', 1, 'Offline', 'Uttar Pradesh', '', '', '', '8', 'Open 1', '', 'walk In', -1, '15:04:49', '2024-06-14', 'shagun@gmail.com', 1),
(168, 3, 'ABHISHEK BAMANIA ', 'Male', '', 'abishekbamania007@gmail.com', '9909997522', 17, 'Offline', 'Gujarat', 'AHEMDABAD', 'GOTA ', '', '20', 'Open 1', '', 'walk In', -1, '15:06:06', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1),
(169, 3, 'DEVANG PANERA ', 'Male', '', '', '6358151516', 17, 'Offline', 'Gujarat', 'JUNAGADH', 'SHREEJI DIPANJALI 2 JUNAGADH', '', '20', 'Open 1', '', 'walk In', -1, '15:07:54', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1),
(170, 3, 'KEYUR ALPESHBHAI PATEL', 'Male', '', 'KEYURPRJAPTI5640789@GMAIL.COM', '8320014517', 17, 'Offline', 'Gujarat', 'PATAN ', '6/B RUDHESHYAM SOCIETY PATAN ', '', '20', 'Open 4', '', 'walk In', -1, '15:11:43', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1),
(171, 3, 'MITAL BHATTI', 'Female', '', 'MITALBHATTI18@GMAIL.COM', '8758955227', 17, 'Online', 'Gujarat', 'RAJKOT', 'LAXMI NAGAR 517, NANA MAVA ROAD', '', '20', 'Open 1', '', 'walk In', -1, '15:12:11', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1),
(172, 3, 'HETAL VARUNDHE', 'Female', '', 'HETAVARUDE@GMAIL.COM', '7862929763', 17, 'Offline', 'Gujarat', '', 'A-14 GOPIGEET SOCIETY VADODARA ', '', '20', 'Open 2', '', 'walk In', -1, '15:14:32', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1),
(173, 3, 'MAYURI CHAUDHARY', 'Male', '', '', '6354284565', 17, 'Offline', 'Gujarat', 'ABCD', 'ABCD', '', '20', 'Open 1', '', 'walk In', -1, '15:15:02', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1),
(174, 3, 'KAIZER DAVE ', 'Male', '', '', '7405227497', 17, 'Offline', 'Gujarat', 'GANDHINAGAR', 'ADALAJ', '', '20', 'Open 1', '', 'walk In', -1, '15:18:30', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1),
(175, 3, 'krutika', 'Female', '', '', '9227396945', 17, 'Offline', '', '', '', '', '11', 'admission open', '', 'Telephonic', -1, '15:24:27', '2024-06-14', 'dipti@praajasv.com', 1),
(176, 2, 'RADHIKA SOLANKI	', 'Female', '', '', '9824893141', 28, 'Offline', '', '', '', '', '12', 'Open 1', '', 'Telephonic', -1, '15:25:36', '2024-06-14', 'khushbu@gmail.com', 1),
(177, 2, 'KINJAL DESAI	', 'Female', '', '', '9925982392', 26, 'Offline', '', '', '', '', '12', 'Open 4', '', 'Telephonic', -1, '15:27:00', '2024-06-14', 'khushbu@gmail.com', 1),
(178, 3, 'MATKA ARYAN ', 'Male', '', 'matkaaryan@gmail.com', '9662059108', 17, 'Offline', 'Gujarat', 'odhav', 'b-71 krushnkunj society', '', '20', 'Open 1', '', 'walk In', -1, '15:27:03', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1),
(179, 3, 'ABHIJEETSINH JADEJA ', 'Male', '', '', '9265225321', 17, 'Offline', 'Gujarat', 'AHMEDABAD ', 'AHMEDABAD ', '', '20', 'Open 1', '', 'walk In', -1, '15:27:06', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1),
(180, 3, 'JEEL GOSWAMI', 'Male', '', '', '9081137676', 17, 'Offline', 'Gujarat', 'KAPADVANJ', '', '', '20', 'Open 1', '', 'walk In', -1, '15:30:00', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1),
(181, 3, 'USHA SAMAD ', 'Female', '', 'USHABEN@GMAIL.COM ', '8160433034', 18, 'Offline', 'Gujarat', 'SURENDRANAGAR', 'AASTHA HOSTEL SEC-6 B  SURENDRANAGAR ', '', '20', 'Open 4', '', 'walk In', -1, '15:31:28', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1),
(182, 3, 'UMA DANUBHAI MOBH', 'Female', '', 'umamobh@gmail.com', '9099969885', 14, 'Online', 'Gujarat', 'BHARUCH', 'BLOCK NO 204,19-A,POLICE HEAD QUATER,BHARUCH', '', '22', 'admission close', '', 'Telephonic', -1, '15:32:23', '2024-06-14', 'gayatri@praajasv.com', 1),
(183, 1, 'GARVIT DHOOT', 'Male', '', 'dhootgarvit22@gmail.com', '9990011169', 30, 'Online', 'Delhi', 'DELHI', 'ZANSKAR HOSTEL, IIT DELHI', '', '6', 'Open 1', '', 'walk In', -1, '15:48:04', '2024-06-14', '', 1),
(184, 3, 'HARSH CHAUDHARY ', 'Male', '', '', '8799201990', 17, 'Offline', 'Gujarat', '', 'N/6 REVUNE QUATRS SUB JAIL SABARKANTHA ', '', '20', 'Open 4', '', 'walk In', -1, '16:06:39', '2024-06-14', 'krupali1@praajasv.com', 1),
(185, 3, 'JIGNA  SHRIMALI ', 'Female', '', '', '9499513058', 17, 'Offline', 'Gujarat', 'GANDHINAGAR', 'PETHAPUR ', '', '20', 'Open 4', '', 'walk In', -1, '16:07:58', '2024-06-14', 'krupali1@praajasv.com', 1),
(186, 3, 'JAYSHREEBEN DAMOER ', 'Female', '', '', '9875293642', 17, 'Offline', 'Gujarat', 'ARVALLI ', 'BHILODA ARVALLI ', '', '15', 'Open 1', '', 'walk In', -1, '16:09:33', '2024-06-14', 'krupali1@praajasv.com', 1),
(187, 3, 'KRUTIKA DODIYA ', 'Male', '', '', '9228798098', 17, 'Offline', 'Gujarat', 'GANDHINAGAR', 'SEC-26 GANDHINAGAR', '', '20', 'Confirmation Done', '', 'walk In', -1, '16:12:09', '2024-06-14', 'krupali1@praajasv.com', 1),
(188, 3, 'RAHUL PATEL ', 'Male', '', 'RIKIRAHUL242@GMAIL.COM', '9839809898', 17, 'Offline', 'Gujarat', 'NAVSARI ', 'VELANPUR CHIKHALI NAVSARI ', '', '20', 'Open 1', '', 'walk In', -1, '16:14:32', '2024-06-14', 'krupali1@praajasv.com', 1),
(189, 3, 'ANIKET  BHORSAD ', 'Male', '', 'ANIKETBHORSAD@GMAIL.COM ', '9099216576', 17, 'Offline', 'Gujarat', '', '', '', '20', 'Open 1', '', 'walk In', -1, '16:15:53', '2024-06-14', 'krupali1@praajasv.com', 1),
(190, 3, 'CHIRAG RAVAT ', 'Male', '', '', '7572978193', 17, 'Offline', 'Gujarat', 'AHMEDABAD', 'MEGANINAGAR RANIP AHMEDABAD ', '', '20', 'not interested', '', 'walk In', -1, '16:17:08', '2024-06-14', 'krupali1@praajasv.com', 1),
(191, 3, 'CHINTAN MER', 'Male', '', 'MERCHINTAN3@GMAIL.COM ', '9664930866', 17, 'Offline', 'Gujarat', 'GIRSOMNATH', 'VERAVAL ', '', '20', 'Open 4', '', 'walk In', -1, '16:18:28', '2024-06-14', 'krupali1@praajasv.com', 1),
(192, 3, 'JINAL DESAI', 'Female', '', 'jinal585@gmail.com', '8734065858', 17, 'Offline', 'Gujarat', 'vavol', 'panjury palace , c-701  new vavol', '', '20', 'Open 3', '', 'walk In', -1, '16:22:13', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1),
(193, 3, 'ANISH PATEL ', 'Male', '', 'ANISHPATEL855@GMAIL.COM', '9099853273', 17, 'Offline', 'Gujarat', 'SURAT', 'D 302 RAMESHWRAM CAMPUS NEAR GAJERA GLOBAL SCHOOL SURAT', '', '20', 'Open 3', '', 'walk In', -1, '16:22:35', '2024-06-14', 'krupali1@praajasv.com', 1),
(194, 3, 'solanki yash', 'Male', '', '', '6352137155', 17, 'Offline', 'Gujarat', 'prantiya', 'prantiya', '', '20', 'Open 1', '', 'walk In', -1, '16:25:28', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1),
(195, 3, 'MAHI RASANIYA ', 'Female', '', '', '9909908194', 17, 'Offline', 'Gujarat', 'MORBI ', 'TANKARA MORBI', '', '20', 'Open 1', '', 'walk In', -1, '16:35:22', '2024-06-14', 'krupali1@praajasv.com', 1),
(196, 3, 'DARSHAN SOLANKI', 'Male', '', 'DARSHANSOLANKI1123@GMAI.COM', '7572909006', 17, 'Offline', 'Gujarat', 'VADODARA', 'VADODRA  ', '', '20', 'not interested', '', 'walk In', -1, '16:37:13', '2024-06-14', 'krupali1@praajasv.com', 1),
(197, 3, 'PARIKH SAMIR', 'Male', '', '', '7698613845', 17, 'Offline', 'Gujarat', 'KALOL', '32, NIRNARAYAN SOCIEY, HIGH SCHOOL', '', '20', 'Open 1', '', 'walk In', -1, '16:41:13', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1),
(198, 3, 'MANSI', 'Female', '', '', '9825756824', 14, 'Online', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '16:41:47', '2024-06-14', 'dipti@praajasv.com', 1),
(199, 3, 'PRSHANT  CHVDA ', 'Male', '', '', '9998099797', 15, 'Online', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '16:43:14', '2024-06-14', 'dipti@praajasv.com', 1),
(200, 3, 'HETVI SHAH ', 'Male', '', '', '9409083627', 17, 'Offline', 'Gujarat', 'VISNAGAR', 'A-37 MEHUL PARK SOCIETY, MEHSANA  ', '', '20', 'Open 1', '', 'walk In', -1, '16:43:25', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1),
(201, 3, 'PREKSHA RODADIYA', 'Female', '', '', '9054859054', 17, 'Offline', 'Gujarat', 'GIR SOMNATH', 'TALAJA', '', '20', 'not interested', '', 'walk In', -1, '16:49:52', '2024-06-14', 'krupali1@praajasv.com', 1),
(202, 3, 'KINJAL ', 'Female', '', '', '9904647287', 17, 'Online', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '16:52:17', '2024-06-14', 'dipti@praajasv.com', 1),
(203, 3, 'DAKSHA ', 'Female', '', '', '6353509942', 14, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '16:54:06', '2024-06-14', 'dipti@praajasv.com', 1),
(204, 3, 'DARSHAN   RAVAL', 'Male', '', '', '9574521481', 15, 'Online', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '16:56:02', '2024-06-14', 'dipti@praajasv.com', 1),
(205, 3, 'AKSHAY PANDYA ', 'Male', '', 'AKSHAYPANDYA123@GMAIL.COM', '8511480382', 17, 'Offline', 'Gujarat', 'BHAVNAGAR', 'BHAVNAGAR', '', '20', 'Open 4', '', 'walk In', -1, '17:16:38', '2024-06-14', 'krupali1@praajasv.com', 1),
(206, 3, 'ZAKIRHUSEN MANSURI', 'Male', '', '', '9428405806', 17, 'Online', 'Gujarat', 'GANDHINAGAR', 'VAVOL', '', '20', 'Open 1', '', 'walk In', -1, '17:18:23', '2024-06-14', 'krupali1@praajasv.com', 1),
(207, 1, 'Rashi Shah', 'Female', '', 'rashishah2910@gmail.com', '7607968901', 1, 'Offline', '', '', '', '', '8', 'Open 1', '', 'Website', -1, '17:28:51', '2024-06-14', '', 1),
(208, 1, 'Paridhi Yadav', 'Female', '', 'paridhiy902@gmail.com', '8586864375', 1, 'Offline', '', '', '', '', '8', 'Open 1', '', 'walk In', -1, '17:32:15', '2024-06-14', 'shagun@gmail.com', 1),
(209, 1, 'Amit Shrivastav', 'Male', '', '', '7697543019', 1, 'Offline', '', '', '', '', '8', 'Open 1', '', 'walk In', -1, '17:33:13', '2024-06-14', 'shagun@gmail.com', 1),
(210, 3, 'URVASHI CHAUHAN ', 'Male', '', '', '8799609199', 17, 'Offline', 'Gujarat', 'SURENDRNAGAR', 'SUBHAM NAGAR FATSAR VADHVAN ', '', '20', 'Open 1', '', 'walk In', -1, '17:40:14', '2024-06-14', 'krupali1@praajasv.com', 1),
(211, 3, 'PIYUSH CHAUDHARI ', 'Female', '', '', '6353307840', 17, 'Offline', 'Gujarat', 'BANASKANTHA ', 'NANA MEDA DHANERAB.K ', '', '20', 'Open 4', '', 'walk In', -1, '17:42:43', '2024-06-14', 'krupali1@praajasv.com', 1),
(212, 3, 'AADITYA PANDYA ', 'Male', '', 'AADIPANDYA4298@GMAIL.COM ', '9624698982', 17, 'Offline', 'Gujarat', 'SURENDRANAGAR ', 'GAYTRI PARK 60FEET ROAD SURENDRANAGAR ', '', '20', 'Open 1', '', 'walk In', -1, '17:44:54', '2024-06-14', 'krupali1@praajasv.com', 1),
(213, 3, 'RAVAL AARTI', 'Female', '', 'MISSAARTISRAVAL005@GMAIL.COM', '8200563073', 17, 'Offline', 'Gujarat', 'VISNAGAR', '01, UPHAR SOCIETY', '', '20', 'Open 1', '', 'walk In', -1, '17:45:07', '2024-06-14', '', 1),
(214, 3, 'MAN CHAUDHARI ', 'Male', '', '', '6353113847', 17, 'Offline', 'Gujarat', 'MEHSANA ', 'BAMOSANA MEHSANA ', '', '20', 'Open 1', '', 'walk In', -1, '17:48:13', '2024-06-14', 'krupali1@praajasv.com', 1),
(215, 3, 'HADIYA MAHENDHRA ', 'Male', '', 'MAHENDHRA2002@GMAIL.COM', '7359972375', 17, 'Offline', 'Gujarat', '', 'MUKTIDHAM', '', '20', 'Open 1', '', 'walk In', -1, '17:54:44', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1),
(216, 3, 'NIRALI VANKAR ', 'Male', '', '', '8141835431', 17, 'Offline', 'Gujarat', 'KHEDA ', 'RELIYA KAPDVANG KHEDA ', '', '20', 'Open 1', '', 'walk In', -1, '17:55:28', '2024-06-14', 'krupali1@praajasv.com', 1),
(217, 3, 'RAJ KANABAR', 'Male', '', 'rajkanabar1997@gmail.com', '8200042990', 13, 'Online', 'Gujarat', 'KESHOD, JUNAGADGH', 'RAO JAGNNTAH PARK,KESHOD DIST: JUNAGADH', '', '22', 'Open 3', '', 'walk In', -1, '18:01:24', '2024-06-14', 'gayatri@praajasv.com', 1),
(218, 3, 'GOSWAMI PREM', 'Male', '', '', '6375887839', 17, 'Offline', 'Gujarat', 'AHEMDABAD', 'VASTRAL', '', '20', 'Open 1', '', 'walk In', -1, '18:02:04', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1),
(219, 3, 'KAUSTUBH DAVE', 'Male', '', 'rajkanabar1997@gmail.com', '9998791915', 13, 'Offline', 'Gujarat', 'JUNAGADH', 'DAVE STREET ,KESHOD DIST: JUMAGADH', '', '22', 'Open 3', '', 'walk In', -1, '18:04:18', '2024-06-14', 'gayatri@praajasv.com', 1),
(220, 1, 'aditi', 'Male', '', '', '7781903922', 1, 'Online', 'Jharkhand', 'jharkhand', 'jharkhand', '', '6', 'not interested', '', 'walk In', -1, '18:05:05', '2024-06-14', 'deepika@gmail.com', 1),
(221, 3, 'ABHAY SINDHAL', 'Male', '', '', '9016414183', 17, 'Online', '', 'JUNAGADH', 'JUNAGADH', '', '20', 'Open 1', '', 'walk In', -1, '18:05:41', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1),
(222, 3, 'VIVEKKUMAR RATILAL SOLANKI', 'Male', '', 'viveksolanki:510@gmail.com', '9033484925', 13, 'Offline', 'Gujarat', 'AHMEDABAD', '797,ROHITWAS,LAMBHAGAAM,,AHMEDABAD', '', '22', 'Open 1', '', 'walk In', -1, '18:10:41', '2024-06-14', 'gayatri@praajasv.com', 1),
(223, 3, 'NAYAN GORANIYA ', 'Male', '', '', '9409548529', 17, 'Offline', 'Gujarat', '', '', '', '20', 'ADMISSION CLOSE', '', 'walk In', -1, '18:13:02', '2024-06-14', 'krupali1@praajasv.com', 1),
(224, 3, 'DIXIT SURESHBHAI PARMAR', 'Male', '', 'dsp212212@gmail.com', '7043982390', 13, 'Online', 'Gujarat', 'AHMEDABAD', '20/SHIVSHAKTI SOC, IOC ROAD,CHANDKHEDA,AHMEDABAD', '', '22', 'Open 3', '', 'walk In', -1, '18:14:13', '2024-06-14', 'gayatri@praajasv.com', 1),
(225, 3, 'SWATI PARMAR ', 'Male', '', '', '9427454897', 17, 'Offline', 'Gujarat', 'AHMRDABAD ', '36 BELLA CASA ELIGHT DVP SCHOOL KASINDRA ', '', '20', 'Open 1', '', 'walk In', -1, '18:15:57', '2024-06-14', 'krupali1@praajasv.com', 1),
(226, 3, 'NIKITA HIMMATBHAI BHUTIYA', 'Male', '', '', '9427055551', 17, 'Offline', 'Gujarat', 'GANDHINAGAR ', 'KUDASAN ', '', '20', 'Open 4', '', 'walk In', -1, '18:17:11', '2024-06-14', 'krupali1@praajasv.com', 1),
(227, 3, 'PARIKSHIT P RATHOD', 'Male', '', 'rathodparikshit11@gmail.com', '9409277020', 13, 'Online', 'Gujarat', '', 'F/25, SUREKHA PARK, CHANDKHEDA,AHMEDABAD', '', '22', 'not interested', '', 'walk In', -1, '18:18:13', '2024-06-14', 'gayatri@praajasv.com', 1),
(228, 3, 'DIGVIJAYSINH J GOHIL', 'Male', '', '', '9429094655', 13, 'Online', 'Gujarat', 'BHAVNAGAR', '', '', '22', 'not interested', '', 'walk In', -1, '18:19:26', '2024-06-14', 'gayatri@praajasv.com', 1),
(229, 3, 'DIPTI MAKVANA ', 'Male', '', '', '7069337625', 17, 'Offline', 'Gujarat', 'VADODARA ', 'BSAP AVG. ', '', '20', 'Open 1', '', 'walk In', -1, '18:20:52', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1),
(230, 3, 'JAYPALSINH CHAVDA', 'Male', '', 'jaypalchavda6652@gmail.com', '8460036943', 13, 'Online', 'Gujarat', 'GANDHINAGAR', 'PETHAPUR, GANDHINAGAR', '', '22', 'Open 1', '', 'walk In', -1, '18:21:18', '2024-06-14', 'gayatri@praajasv.com', 1),
(231, 3, 'DEEP LAKHIYA', 'Male', '', '', '8320981892', 13, 'Online', 'Gujarat', 'GANDHINAGAR', 'SECTOR - 5,GANDHINAGAR', '', '22', 'Open 1', '', 'walk In', -1, '18:24:16', '2024-06-14', 'gayatri@praajasv.com', 1),
(232, 3, 'DHARA BORICH ', 'Male', '', 'DHARABORICHA1@GMAIL.COM', '9327124775', 17, 'Offline', 'Gujarat', 'GANDHINAGAR', 'MARUTI AMRAKUNJ 1 SARGASAN GANDHINAGAR', '', '20', 'Open 1', '', 'walk In', -1, '18:26:39', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1),
(233, 3, 'HIMANSHU CHAUDHARY', 'Male', '', 'himanshukheralu20@gmail.com', '7575850647', 13, 'Online', 'Gujarat', 'GANDHINAGAR', 'SECTOR 2 GANDHINAGAR', '', '22', 'not interested', '', 'walk In', -1, '18:27:58', '2024-06-14', 'gayatri@praajasv.com', 1),
(234, 3, 'NAUGHAN ULVA ', 'Male', '', '', '9510655863', 17, 'Online', 'Gujarat', 'PORBANDAR', 'PORBANDAR ', '', '20', 'Open 1', '', 'walk In', -1, '18:33:03', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1),
(235, 3, 'DIVYESH RATHWA ', 'Male', '', 'rathwadivyesh11@gmail.com', '7046083768', 17, 'Offline', 'Gujarat', 'vadodra', 'vadodra', '', '20', 'Open 1', '', 'walk In', -1, '18:35:25', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1),
(236, 3, 'ARZOO PATEL', 'Male', '', 'ARZOO95@GMAIL.COM', '9723221554', 17, 'Offline', 'Gujarat', 'SURAT', '9,SURYA ROW HOUSE', '', '20', 'Open 4', '', 'walk In', -1, '18:44:06', '2024-06-14', 'krupali1@praajasv.com', 1),
(237, 3, 'PRIYANKKUMARI CHAUDHARI', 'Male', '', 'CHAUDHARIPRIYANKA511@GMAIL.COM', '9662320049', 17, 'Offline', 'Gujarat', 'GANDHINAGAR ', 'SEC-25', '', '20', 'Open 1', '', 'walk In', -1, '18:45:41', '2024-06-14', 'krupali1@praajasv.com', 1),
(238, 3, 'DIPAK.M. PRAJAPATI', 'Male', '', '', '7096417904', 17, 'Offline', 'Gujarat', 'UMRETH', 'MA ARBUDA KRUPA UMRETH', '', '20', 'Open 4', '', 'walk In', -1, '18:48:02', '2024-06-14', 'krupali1@praajasv.com', 1),
(239, 3, 'MAHESH GOHIL', 'Male', '', '', '7478293049', 17, 'Offline', 'Gujarat', 'GANDHINAGAR ', 'SEC-24', '', '20', 'Open 4', '', 'walk In', -1, '18:49:51', '2024-06-14', 'krupali1@praajasv.com', 1),
(240, 3, 'MITALBEN RABARI', 'Male', '', '', '9979746089', 17, 'Offline', 'Gujarat', 'B.K', 'BHABHAR, BANASKANTHA', '', '20', 'Open 3', '', 'walk In', -1, '18:49:56', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1),
(241, 3, 'HEMANGI MANDORA', 'Male', '', '', '8320398302', 17, 'Offline', 'Gujarat', '', 'PUNDRA INFINITY', '', '20', 'Open 1', '', 'walk In', -1, '18:51:21', '2024-06-14', 'krupali1@praajasv.com', 1),
(242, 3, 'MAL RIDHHI ', 'Male', '', '', '9023141991', 17, 'Offline', 'Gujarat', 'AHEMDAVAD', 'A-302 BELVEDERE CLUSTUR , GODHREJ GARDEN CITY , GOTA ', '', '20', 'Open 1', '', 'walk In', -1, '18:53:15', '2024-06-14', 'KRUPALI1@PRAAJASV.COM', 1);
INSERT INTO `all_lead` (`ID`, `BranchID`, `Name`, `Gender`, `DOB`, `Email`, `PhoneNumber`, `Course`, `Mode`, `State`, `City`, `Address`, `HighestQualification`, `AssignedTo`, `Status`, `Remark`, `LeadSource`, `TelecallerLeadID`, `CreatedTime`, `CreatedDate`, `CreatedBy`, `IsActive`) VALUES
(243, 3, 'MILAN BARAD', 'Male', '', 'MILANBRAD1991@GMAIL.COM ', '9714814109', 17, 'Offline', 'Gujarat', 'SUTRAPADA', 'RANIVAV', '', '20', 'Open 1', '', 'walk In', -1, '18:56:47', '2024-06-14', 'krupali1@praajasv.com', 1),
(244, 3, 'HARDI RATHOD', 'Female', '', '', '7990020243', 17, 'Offline', 'Gujarat', 'GIRSOMNATH', 'GIRSOMNATH', '', '20', 'Open 1', '', 'walk In', -1, '11:20:05', '2024-06-15', 'krupali1@praajasv.com', 1),
(245, 3, 'KRISHNRAJSINH M CHAUHAN ', 'Male', '', 'KRISHNRAJSINH76@GMAIL.COM ', '9925517891', 17, 'Offline', 'Gujarat', 'AHMEDABAD ', '3 NEW PURNIMA SOCIETY ,OPP VISHWA VIDHYALAYA SCHOOL ASARWA', '', '20', 'Open 1', '', 'walk In', -1, '11:22:35', '2024-06-15', 'krupali1@praajasv.com', 1),
(246, 3, 'RAJDEEP SOLANKI', 'Male', '', 'RNSOLANKI32@GMAIL.COM', '9711277089', 17, 'Offline', 'Gujarat', 'AHMEDABAD ', 'SHIVSHAKTI NAGARSHAPUR AHMEDABAD ', '', '20', 'Open 1', '', 'walk In', -1, '11:26:37', '2024-06-15', 'krupali1@praajasv.com', 1),
(247, 3, 'FIZA JOKHIYA ', 'Male', '', 'FIZAJOKHIYA@GMAIL.COM', '9574030044', 17, 'Offline', 'Gujarat', 'GANDHINAGAR', 'VAVOL', '', '20', 'Open 1', '', 'walk In', -1, '11:28:18', '2024-06-15', 'krupali1@praajasv.com', 1),
(248, 3, 'TANZIM MANSURI', 'Male', '', '', '9328445275', 17, 'Offline', 'Gujarat', '', 'VAVOL , BLOCK NO B104 BURJ MASTANA ', '', '20', 'Open 4', '', 'walk In', -1, '11:32:36', '2024-06-15', 'krupali1@praajasv.com', 1),
(249, 3, 'SHEETAL GADHAVI ', 'Female', '', '', '7016145049', 17, 'Offline', 'Gujarat', 'KUTCH', 'WARD-4 A PLOT NO 130 , ADIPUR KUTCH ', '', '20', 'Open 1', '', 'walk In', -1, '11:35:53', '2024-06-15', 'krupali1@praajasv.com', 1),
(250, 3, 'NISARG ASARI ', 'Male', '', '', '9313102780', 17, 'Offline', 'Gujarat', 'AMBAJI', '32, SHAKTIDHARA  SOCIETY , AMBAJI ', '', '20', 'Open 4', '', 'walk In', -1, '11:40:17', '2024-06-15', 'krupali1@praajasv.com', 1),
(251, 3, 'JAY PATEL', 'Male', '', 'JAYPATEL123@GMAIL.COM', '9512797088', 17, 'Offline', 'Gujarat', 'AHMEDABAD', 'G-44, SHREERAMVANDAN NAVA NARODA AHMEDABAD ', '', '20', 'Open 1', '', 'walk In', -1, '11:44:58', '2024-06-15', 'krupali1@praajasv.com', 1),
(252, 3, 'VIRANI JOHRA', 'Female', '', 'viranijohara92@gmail.com', '7490873555', 13, 'Offline', 'Gujarat', 'AHMEDABAD', '1104-     ALBAROOOZ MAKARBA AMEDABAD', '', '22', 'Open 1', '', 'walk In', -1, '12:21:59', '2024-06-15', 'gayatri@praajasv.com', 1),
(253, 3, 'SANJAY PRAJAPATI', 'Male', '', 'kishan.prajapati@gmail.com', '9574056078', 13, 'Offline', 'Gujarat', 'RUPAL , DIST: GANDHINAGAR', '', '', '22', 'Open 3', '', 'walk In', -1, '12:26:16', '2024-06-15', 'gayatri@praajasv.com', 1),
(254, 3, 'VISHAL BHALGAMA', 'Male', '', 'SECTOR 4 ,GANDHINAGAR', '8469881880', 13, 'Offline', 'Gujarat', '', 'vishalbalgama@gmail.com', '', '22', 'Open 1', '', 'walk In', -1, '12:28:22', '2024-06-15', 'gayatri@praajasv.com', 1),
(255, 3, 'ALPESH CHAUDHARY', 'Male', '', 'alpeshchudhary1233@gmail.com', '8347056567', 13, 'Online', 'Gujarat', 'PATAN', 'PATAN', '', '22', 'Open 1', '', 'walk In', -1, '12:30:04', '2024-06-15', 'gayatri@praajasv.com', 1),
(256, 3, 'SURESH  DHNABHAI CHAUDHARY', 'Male', '', 'suresh7620@gmail.com', '9664613621', 13, 'Online', 'Gujarat', 'GANDHINAGAR', 'SECTOR -4, GANDHINAGAR', '', '22', 'Open 1', '', 'walk In', -1, '12:32:19', '2024-06-15', 'gayatri@praajasv.com', 1),
(257, 3, 'MEHUL PARMAR ', 'Male', '', '', '9313246320', 17, 'Offline', 'Gujarat', 'MODASA ', 'MODASA GUJRAT', '', '20', 'Open 4', '', 'walk In', -1, '12:47:01', '2024-06-15', '', 1),
(258, 3, 'CHUDASMA UDAYRAJSINH', 'Male', '', '', '8849192255', 13, 'Offline', 'Gujarat', 'TYPE 3, 2216,GEB COLLONY,GANDHINAGAR', '', '', '22', 'Open 1', '', 'walk In', -1, '12:56:50', '2024-06-15', 'gayatri@praajasv.com', 1),
(259, 3, 'RAKESH RATHOD', 'Male', '', 'rrathod4454@gmail.com', '9106824463', 13, 'Online', 'Gujarat', 'BHAVNAGAR', '111A-MADHAV PARK, 150FT RING ROAD BHAVNAGAR', '', '22', 'Open 1', '', 'walk In', -1, '12:59:16', '2024-06-15', 'gayatri@praajasv.com', 1),
(260, 3, 'AAKASH MAHESHWARI', 'Male', '', 'aakash.mahe23@gmail.com', '9099617676', 13, 'Online', 'Gujarat', 'JAMNAGAR', 'OPP.TEEN DARWAJA , MAHESHWARINAGAR,JAMNAGAR', '', '22', 'Open 1', '', 'walk In', -1, '13:02:21', '2024-06-15', 'gayatri@praajasv.com', 1),
(261, 3, 'ADITYARAJSINH ZALA', 'Male', '', '', '9925454748', 13, 'Offline', 'Gujarat', 'GANDHINAGAR', 'KOLAWADA, GANDHINAGAR', '', '22', 'Open 1', '', 'walk In', -1, '13:05:18', '2024-06-15', 'gayatri@praajasv.com', 1),
(262, 3, 'NIRAV H.  RATHOD ', 'Male', '', '', '8980908810', 13, 'Offline', 'Gujarat', 'GANDHINAGAR', 'SRAGASAN , GANDHINAGAR', '', '22', 'Open 1', '', 'walk In', -1, '13:07:05', '2024-06-15', 'gayatri@praajasv.com', 1),
(263, 3, 'APURVASINH K.', 'Male', '', '', '8401551500', 13, 'Offline', 'Gujarat', 'SECTOR -6,GANDHINAGAR', 'VEER BHAGATSINH NAGAR, SECTOR -6, GANDHINAGAR', '', '22', 'not interested', '', 'walk In', -1, '13:09:19', '2024-06-15', 'gayatri@praajasv.com', 1),
(264, 3, 'RINKAL KARANJIYA', 'Male', '', 'rinky9889@gmail.com', '9033896059', 13, 'Offline', 'Gujarat', 'GANDHINAGAR', 'SECTOR -29,GANDHINAGAR', '', '22', 'Open 1', '', 'walk In', -1, '13:18:45', '2024-06-15', 'gayatri@praajasv.com', 1),
(265, 3, 'SHAMBHAU CHAUDHARY', 'Male', '', '', '9998955065', 13, 'Offline', 'Gujarat', 'PALANPUR,B.K', 'PALANPUR , DIST: B.K', '', '22', 'Open 1', '', 'walk In', -1, '13:20:41', '2024-06-15', 'gayatri@praajasv.com', 1),
(266, 3, 'SAMIRKUMAR SOMABHAI ROHIT', 'Male', '', '', '8200527488', 13, 'Offline', 'Gujarat', 'GANDHINAGAR', 'SARGASAN GAAM, GANDHINAGAR', '', '22', 'Open 1', '', 'walk In', -1, '13:23:12', '2024-06-15', 'gayatri@praajasv.com', 1),
(267, 3, 'ASHISHKUMAR DAMOR BHANUBHAI', 'Male', '', 'ashishdamor82@gmail.com', '9909290072', 13, 'Online', 'Gujarat', 'DAHOD', 'TA: ZALOD , DIST: DAHOD', '', '22', 'Open 1', '', 'walk In', -1, '13:29:35', '2024-06-15', 'gayatri@praajasv.com', 1),
(268, 3, 'SANJAY A. THAKOR', 'Male', '', 'thkorsanjay1406@gmail.com', '9904414698', 13, 'Offline', 'Gujarat', 'GANDHINAGAR', 'OPP, JOAGANIMATA TEMPLE,VILLAGE, KHORAJ GANDHINAGAR', '', '22', 'Open 1', '', 'walk In', -1, '13:32:05', '2024-06-15', 'gayatri@praajasv.com', 1),
(269, 3, 'JYESHKUMAR B CHAUDHARI', 'Male', '', 'chaudharijayesh.123@gmail.com', '8238577366', 13, 'Offline', 'Gujarat', 'VAVOL, GANDHINAGAR', 'L-203,SHALVIK ,VAVOL , GANDHINAGAR', '', '22', 'ADMISSION CLOSE', '', 'walk In', -1, '13:34:50', '2024-06-15', 'gayatri@praajasv.com', 1),
(270, 1, 'Samridh Khatri', 'Male', '', 'samridhkhatri2110@gmail.com', '8394050502', 1, 'Offline', '', '', '', '', '8', 'Open 1', '', 'walk In', -1, '14:12:24', '2024-06-15', '', 1),
(271, 1, 'Yashika Chhikara', 'Female', '', 'chhikarayashika@gmail.com', '9971859947', 1, 'Offline', 'Delhi', 'delhi', '', '', '8', 'Open 1', '', 'walk In', -1, '14:16:27', '2024-06-15', 'shagun@gmail.com', 1),
(272, 3, 'RAJVEERSINH ZALA', 'Male', '', 'rajveersinh.zala567@gmail.com', '9427205115', 13, 'Offline', 'Gujarat', 'SURENDRANAGAR', 'AT: PATADI , TA: DASADA , DIST: SURENDRANAGAR', '', '22', 'not interested', '', 'walk In', -1, '14:39:20', '2024-06-15', 'gayatri@praajasv.com', 1),
(273, 3, 'JIGAR CHAUDHARY V.', 'Male', '', '', '9904283792', 13, 'Offline', 'Gujarat', 'GANDHINAGAR', '801/2, SECTOR -4, GANDHINGAR', '', '22', 'Open 3', '', 'walk In', -1, '14:42:11', '2024-06-15', 'gayatri@praajasv.com', 1),
(274, 3, 'AMITKUMAR R. BHOI', 'Male', '', 'bhoiamit582002@gmail.com', '8141305761', 13, 'Offline', 'Gujarat', 'AT : LUNAWADA,MAHISAGAR', 'TA: LUNAWADA, DIST : MAHISAGAR', '', '22', 'ADMISSION CLOSE', '', 'walk In', -1, '14:45:06', '2024-06-15', 'gayatri@praajasv.com', 1),
(275, 3, 'JAY B JOSHI', 'Male', '', '', '9979668000', 13, 'Offline', 'Gujarat', 'AMRELI', 'AMRELI', '', '22', 'not interested', '', 'walk In', -1, '14:46:55', '2024-06-15', 'gayatri@praajasv.com', 1),
(276, 3, 'DIVYARAJSINH V JADEJA', 'Male', '', 'divyarajsinhjadeja104@gmail.com', '8530179999', 13, 'Offline', 'Gujarat', 'GANDHINAGAR', 'GANDHINAGAR', '', '22', 'not interested', '', 'walk In', -1, '14:52:11', '2024-06-15', 'gayatri@praajasv.com', 1),
(277, 3, 'ANASH S. MIRZA', 'Male', '', 'anash.mirraza@gmail.com', '8758229433', 13, 'Offline', 'Gujarat', 'CHUDA , ', 'SIPAI STREET, CHUDA ,', '', '22', 'ADMISSION CLOSE', '', 'walk In', -1, '14:56:00', '2024-06-15', 'gayatri@praajasv.com', 1),
(278, 3, 'DIPESH ZALA', 'Male', '', '', '9054182883', 13, 'Offline', 'Gujarat', 'AHMEDABAD', 'CHANDKHEDA, AHMEDABAD', '', '22', 'Open 3', '', 'walk In', -1, '14:58:20', '2024-06-15', 'gayatri@praajasv.com', 1),
(279, 3, 'NILESH CHAUHAN', 'Male', '', '', '8511510307', 13, 'Offline', 'Gujarat', 'GANDHINAGAR', 'SARGASAN,GANDHINAGAR', '', '22', 'Open 1', '', 'walk In', -1, '15:00:09', '2024-06-15', 'gayatri@praajasv.com', 1),
(280, 3, 'DISHANT K. VYAS', 'Male', '', '', '7211139666', 13, 'Online', 'Gujarat', 'GANDHINAGAR', 'SARGASAN,GANDHINAGAR', '', '22', 'Open 1', '', 'walk In', -1, '15:01:29', '2024-06-15', 'gayatri@praajasv.com', 1),
(281, 3, 'HARDIK S. SUTHAR', 'Male', '', '', '9737231598', 13, 'Online', 'Gujarat', 'PATAN', 'PATAN', '', '22', 'not interested', '', 'walk In', -1, '15:04:35', '2024-06-15', 'gayatri@praajasv.com', 1),
(282, 3, 'VATSAL GARASIYA RANCHHODBHAI', 'Male', '', 'garasiyavatsal02@gmail.com', '6359138408', 13, 'Offline', 'Gujarat', 'AHMEDABAD', '', '', '22', 'ADMISSION CLOSE', '', 'walk In', -1, '15:07:17', '2024-06-15', 'gayatri@praajasv.com', 1),
(283, 3, 'TUSHAR AMIN', 'Male', '', 'amintushar97@gmail.com', '7990248286', 13, 'Offline', 'Gujarat', 'CHANDKHEDA,AHMEDABAD', 'B-36,SUREKHA PARK SOCIETY, IOC ROAD, CHANDKHEDA,AHMEDABAD', '', '22', 'not interested', '', 'walk In', -1, '15:10:44', '2024-06-15', 'gayatri@praajasv.com', 1),
(284, 3, 'CHAUHAN  NIRALI', 'Male', '', '', '7016417114', 16, 'Online', '', '', '', '', '11', 'not interested', '', 'Telephonic', -1, '15:13:50', '2024-06-15', 'dipti@praajasv.com', 1),
(285, 3, 'DEVANGI  JOSHI', 'Male', '', '', '9723719935', 15, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '15:20:46', '2024-06-15', 'dipti@praajasv.com', 1),
(286, 3, 'DHAVAL  JOSHI', 'Male', '', '', '9904734565', 17, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '15:22:01', '2024-06-15', 'dipti@praajasv.com', 1),
(287, 3, 'DEPAL SINH', 'Male', '', '', '9408843901', 17, 'Offline', '', '', '', '', '11', 'admission open', '', 'Telephonic', -1, '15:24:46', '2024-06-15', 'dipti@praajasv.com', 1),
(288, 1, 'Tamash Singh', 'Male', '', 'singhtamash74@gmail.com', '8882641281', 1, 'Offline', '', '', '', '', '8', 'Open 1', '', 'walk In', -1, '15:38:49', '2024-06-15', '', 1),
(289, 1, 'Dhruv Raina', 'Male', '', 'dhruvraina16@gmail.com', '8264610740', 1, 'Offline', '', '', '', '', '8', 'Open 1', '', 'walk In', -1, '16:24:51', '2024-06-15', '', 1),
(290, 1, 'shiva tiwari', 'Male', '', '', '8858663718', 1, 'Online', 'Uttar Pradesh', 'unnao', 'unnao', '', '6', 'not interested', '', 'walk In', -1, '16:36:05', '2024-06-15', 'deepika@gmail.com', 1),
(291, 1, 'sanjay gupta', 'Male', '', '', '9651382378', 1, 'Online', 'Uttar Pradesh', 'lucknow', 'janhavi enclave', '', '6', 'not interested', '', 'walk In', -1, '16:37:27', '2024-06-15', 'deepika@gmail.com', 1),
(292, 1, 'disha nayak', 'Female', '', '', '8602411686', 1, 'Online', 'Delhi', 'delhi', 'shalimar bagh', '', '6', 'not interested', '', 'walk In', -1, '16:39:56', '2024-06-15', 'deepika@gmail.com', 1),
(293, 1, 'nisha tripathi', 'Male', '', 'amittripathi196@gmail.com', '9996291873', 1, 'Offline', 'Haryana', 'panipat', 'panipat haryana', '', '6', 'Open 1', '', 'walk In', -1, '16:42:28', '2024-06-15', 'deepika@gmail.com', 1),
(294, 1, 'anisha yadav', 'Male', '', '', '7297889097', 1, 'Online', 'Delhi', 'delhi', 'roshni girls pg', '', '6', 'not interested', '', 'walk In', -1, '16:45:47', '2024-06-15', 'deepika@gmail.com', 1),
(295, 1, 'ravi', 'Male', '', '', '9466558626', 1, 'Offline', 'Haryana', 'gohana', '', '', '6', 'Open 1', '', 'walk In', -1, '17:05:09', '2024-06-15', 'deepika@gmail.com', 1),
(296, 3, 'MAYURSINH DODIYA', 'Male', '', '', '7265020140', 13, 'Offline', 'Gujarat', 'KERIYA,BOTAD', '7265020140', '', '22', 'ADMISSION CLOSE', '', 'walk In', -1, '18:04:12', '2024-06-15', 'gayatri@praajasv.com', 1),
(297, 3, 'PALAK MANVAR', 'Female', '', '', '9409617833', 13, 'Offline', 'Gujarat', 'GANDHINAGAR', 'RANDHEJA GANDHINAGAR', '', '22', 'not interested', '', 'walk In', -1, '18:06:10', '2024-06-15', 'gayatri@praajasv.com', 1),
(298, 3, 'DHRUVI BABUBHAI PATEL', 'Male', '', '', '9737451787', 13, 'Online', 'Gujarat', 'NAVSARI', '182-RAMJI MANDIR CHIKHALI,NAVSARI', '', '22', 'ADMISSION CLOSE', '', 'walk In', -1, '18:07:41', '2024-06-15', 'gayatri@praajasv.com', 1),
(299, 3, 'ASMITA PRAJAPATI', 'Female', '', '', '9925887602', 13, 'Online', 'Gujarat', 'RADHANPUR', 'RADHANPUR', '', '22', 'Open 1', '', 'walk In', -1, '18:08:50', '2024-06-15', 'gayatri@praajasv.com', 1),
(300, 3, 'MONIKA HARIYAR', 'Female', '', '', '9712449192', 13, 'Offline', 'Gujarat', 'RADHANPUR', 'RADHANPUR', '', '22', 'VISIT DONE ', '', 'walk In', -1, '18:10:30', '2024-06-15', 'gayatri@praajasv.com', 1),
(301, 3, 'PREMJIBHAI L . PARMAR', 'Male', '', '', '9428217565', 13, 'Offline', 'Gujarat', 'AHMEDABAD', '', '', '22', 'Open 1', '', 'walk In', -1, '18:12:37', '2024-06-15', 'gayatri@praajasv.com', 1),
(302, 3, 'SEJALBEN JASYRAMBHAI DESAI', 'Female', '', '', '7990812774', 13, 'Offline', 'Gujarat', 'AHMEDABAD', '86 RABARI COLONY AMARAIWADI, AHMEDABAD', '', '22', 'VISIT DONE ', '', 'walk In', -1, '18:14:29', '2024-06-15', 'gayatri@praajasv.com', 1),
(303, 3, 'SARTHAK', 'Male', '', '', '9586742462', 13, 'Offline', 'Gujarat', 'GANDHINAGAR', 'SARGASAN,GANDHINAGAR', '', '22', 'ADMISSION CLOSE', '', 'walk In', -1, '18:17:36', '2024-06-15', 'gayatri@praajasv.com', 1),
(304, 3, 'SHRUTI N JOSHI', 'Female', '', '', '9824042505', 13, 'Offline', 'Gujarat', 'BHAVNAGAR', 'BHAVNAGAR', '', '22', 'not interested', '', 'walk In', -1, '18:19:18', '2024-06-15', 'gayatri@praajasv.com', 1),
(305, 3, 'YOGESH CHAUHAN', 'Male', '', 'chauhanyogesh19882008@gmail.com', '7285874511', 13, 'Offline', 'Gujarat', 'GEER SOMNATH', 'GEER SOMNATH', '', '22', 'Open 1', '', 'walk In', -1, '18:21:26', '2024-06-15', 'gayatri@praajasv.com', 1),
(311, 1, 'Shubham Kumar', 'Male', '', 'shubhamtidhiwal3259@gmail.com', '7906089949', 1, 'Online', '', '', '', '', '8', 'Open 1', '', 'walk In', -1, '10:28:54', '2024-06-16', 'shagun@gmail.com', 1),
(312, 2, 'NISHANT VAGHELA', 'Male', '', 'nishantvaghela2004@gmail.com', '8200550199', 27, 'Offline', 'Gujarat', 'ahmedbad', '2-36, slam quarters, opp. sukhram nagar water tank, rakhial road, rajpur gomtipiu, ahmedabad', '', '18', 'Confirmation Done', '', 'walk In', -1, '11:36:37', '2024-06-16', 'bhavi@praajasv.com', 1),
(313, 2, 'RAHIL KHAN PATHAN', 'Male', '', 'rahilkhanpathan0313@gmail.com', '9904789779', 27, 'Offline', 'Gujarat', 'ahmedbad', '30, AZID DUPLEX, NEAR DANILIMDA, AHMEDABAD', '', '18', 'admission close', '', 'reference', -1, '11:47:38', '2024-06-16', 'bhavi@praajasv.com', 1),
(314, 2, 'AIFAAZKHAN PATHAN', 'Male', '', 'aifaazpathan@gmail.com', '9512894785', 27, 'Offline', 'Gujarat', 'ahmedbad', 'B-27/223, GOVT. F COLONY, SHAH E ALAM DARWAJA, NEAR TOLLNAKA, AHMEDABAD', '', '18', 'admission close', '', 'reference', -1, '11:55:27', '2024-06-16', 'bhavi@praajasv.com', 1),
(315, 2, 'DIVYA RAVAT', 'Female', '', 'dezyravat39055@gmail.com', '7203045890', 26, 'Offline', 'Gujarat', 'ahmedbad', '29/30, GUJARAT HOUSING BOARD, MEGHANINAGAR, AHMEDABAD', '', '18', 'admission close', '', 'reference', -1, '12:33:41', '2024-06-16', 'bhavi@praajasv.com', 1),
(316, 2, 'MAHIPATSINH CHAUHAN', 'Male', '', '', '9974455410', 26, 'Offline', 'Gujarat', 'AHMEDABAD', '', '', '12', 'admission close', '', 'walk In', -1, '12:51:57', '2024-06-16', 'khushbu@gmail.com', 1),
(317, 3, 'DHRUV N. PATEL', 'Male', '', 'dhpo74@gmail.com', '9328263231', 13, 'Online', 'Gujarat', 'NARAMADA', 'A/4 GURUKRUPA SOCIETY,VYPASS ROAD, GARUDESHWAR,DIST: NARMADA', '', '22', 'ADMISSION CLOSE', '', 'walk In', -1, '14:43:06', '2024-06-16', 'gayatri@praajasv.com', 1),
(318, 3, 'PATEL URVINKUMAR NAVINBHAI', 'Male', '', 'urvin0023@gmail.com', '9924714154', 13, 'Offline', 'Gujarat', 'PALANPUR', '25 NRAJVI BUNGLOWS PART-1, RAMJINAGAR, LAXMIPURA, PALANPUR', '', '22', 'Open 1', '', 'walk In', -1, '14:46:04', '2024-06-16', 'gayatri@praajasv.com', 1),
(319, 3, 'KULDIP KAPADIYA', 'Male', '', 'kartik844@gmail.com', '9664669805', 13, 'Offline', '', 'AHMEDABAD', '69,SIDHHARTHPARK,KALIKUND ,DHOLKA, AHMEDABAD', '', '22', 'Open 1', '', 'walk In', -1, '16:56:05', '2024-06-16', '', 1),
(320, 3, 'CHAUDHARY BHARGAV PUNABHAI', 'Male', '', '', '9687066514', 13, 'Offline', 'Gujarat', 'GANDHINAGAR', 'SARGASAN,GANDHINAGAR', '', '22', 'Open 1', '', 'walk In', -1, '16:11:28', '2024-06-16', 'gayatri@praajasv.com', 1),
(321, 3, 'MEHUL CHAUDHARY', 'Male', '', '', '9898071789', 13, 'Offline', 'Gujarat', 'GANDHINAGAR', '', '', '22', 'Open 1', '', 'walk In', -1, '16:12:36', '2024-06-16', 'gayatri@praajasv.com', 1),
(322, 3, 'BARIA GAURAV', 'Male', '', 'gauravbaria1406@gmail.com', '9173035917', 13, 'Offline', '', 'AHMEDABAD', 'C302, GEERIVAR PRIDE ODHAV , AHMEDABAD', '', '22', 'Open 1', '', 'walk In', -1, '16:58:47', '2024-06-16', 'gayatri@praajasv.com', 1),
(323, 3, 'CHIRAG PATELIYA', 'Male', '', '', '9687256922', 13, 'Offline', 'Gujarat', 'AHMEDABAD', 'A-107, VIJAY KAMDAR SOCIETY, SAIJPUR BOGHA, AHMEDABAD', '', '22', 'Open 1', '', 'walk In', -1, '17:00:26', '2024-06-16', 'gayatri@praajasv.com', 1),
(324, 3, 'PARTH NAGAR', 'Male', '', '', '9714397564', 13, 'Online', 'Gujarat', 'MAHEMDABAD', 'MAHEMDABAD,', '', '22', 'Open 1', '', 'walk In', -1, '17:01:42', '2024-06-16', 'gayatri@praajasv.com', 1),
(325, 3, 'SONALI CHAVDA', 'Male', '', '', '8511220469', 13, 'Offline', 'Gujarat', 'GANDHINAGAR', '844/1, 4 C', '', '22', 'Open 1', '', 'walk In', -1, '17:02:49', '2024-06-16', 'gayatri@praajasv.com', 1),
(326, 3, 'AKASH CHAUDHARY', 'Male', '', 'akashchaudhary612@gmail.com', '9265547566', 13, 'Offline', 'Gujarat', 'GANDHINAGAR', '58/1, SECTOR -16,', '', '22', 'Open 1', '', 'walk In', -1, '17:04:35', '2024-06-16', 'gayatri@praajasv.com', 1),
(327, 3, 'VISHALSINH SOLANKI', 'Male', '', 'vishalsinhsolanki4@gmail.com', '9662455094', 13, 'Online', 'Gujarat', 'AHMEDABAD', '34/4, SAHAJANAND HOMES, GHUMA,', '', '22', 'Open 1', '', 'walk In', -1, '17:06:19', '2024-06-16', 'gayatri@praajasv.com', 1),
(328, 3, 'ANIKET RATHOD', 'Male', '', 'aniketrathod4074@gmail.com', '9624743237', 13, 'Online', 'Gujarat', 'GANDHINAGAR', '634/2, SEC-- 4C', '', '22', 'Open 1', '', 'walk In', -1, '17:08:51', '2024-06-16', 'gayatri@praajasv.com', 1),
(329, 3, 'DR ANJANA BAROT', 'Male', '', 'anjanabarot 5636@gmail.com', '9081769827', 13, 'Online', 'Gujarat', 'LUNAWADA', 'AT : LUNAWADA ', '', '22', 'Open 1', '', 'walk In', -1, '17:10:28', '2024-06-16', 'gayatri@praajasv.com', 1),
(330, 3, 'SHAILESH/NARESH CHAUDHARY', 'Male', '', 'chaudharyn9898@gmail.com', '9157238676', 13, 'Offline', '', 'GANDHINAGAR', 'SEC 27 C', '', '22', 'Open 1', '', 'walk In', -1, '17:12:15', '2024-06-16', 'gayatri@praajasv.com', 1),
(331, 3, 'KRUNAL MANAT', 'Male', '', 'krunalmant673@gmail.com', '9510469373', 13, 'Offline', 'Gujarat', 'GANDHINAGAR', '30 PRATHAM BUNGLOWS,KUDASAN', '', '22', 'Open 1', '', 'walk In', -1, '17:13:51', '2024-06-16', 'gayatri@praajasv.com', 1),
(332, 3, 'KINJAL PARMAR', 'Male', '', '', '9533433221', 13, 'Offline', 'Gujarat', 'GANDHINAGAR', 'SARAGSAN,', '', '22', 'Open 1', '', 'walk In', -1, '17:15:01', '2024-06-16', 'gayatri@praajasv.com', 1),
(333, 3, 'DISHANK P KANTHARIYA', 'Male', '', 'dishnkkanthariya0@gmail.com', '9512763055', 13, 'Online', 'Gujarat', 'AHMEDABAD', 'VSTRAL AHMEDABAD', '', '22', 'Open 1', '', 'walk In', -1, '17:17:01', '2024-06-16', 'gayatri@praajasv.com', 1),
(334, 1, 'Alok Kumar', 'Male', '', '', '9852818893', 1, 'Offline', 'Bihar', 'west Champaran', '', '', '8', 'Open 1', '', 'walk In', -1, '17:18:04', '2024-06-16', 'shagun@gmail.com', 1),
(335, 3, 'CHIRAG SOLANKI', 'Male', '', '', '8140329559', 13, 'Offline', '', 'GANDHINAGAR', 'SEC-3 ANEW', '', '22', 'Open 1', '', 'walk In', -1, '17:18:13', '2024-06-16', 'gayatri@praajasv.com', 1),
(336, 3, 'MEGHA ADHVARYU', 'Male', '', 'megha.chhantbar@gmail.com', '9687836852', 13, 'Online', 'Gujarat', 'GANDHINAGAR', 'SARGASAN,GANDHINAGAR', '', '22', 'Open 1', '', 'walk In', -1, '17:20:06', '2024-06-16', 'gayatri@praajasv.com', 1),
(337, 1, 'Bittoo Kumar', 'Male', '', 'bittookr.20@gmail.com', '8178776863', 1, 'Offline', 'Delhi', 'narela', '', '', '8', 'Open 1', '', 'walk In', -1, '17:21:11', '2024-06-16', 'shagun@gmail.com', 1),
(338, 3, 'CHAVDA PRIYANKA', 'Female', '', ' ', '9558752546', 13, 'Offline', 'Gujarat', 'AHMEDABAD', 'MADHAV BUNGLOWS,AHMEDABAD', '', '22', 'Open 1', '', 'walk In', -1, '17:22:38', '2024-06-16', 'gayatri@praajasv.com', 1),
(339, 1, 'Ansh Pachauri', 'Male', '', 'pachauriansh10@gmail.com', '7017929928', 1, 'Offline', 'Uttar Pradesh', 'Firozabad', '', '', '8', 'Open 1', '', 'walk In', -1, '17:24:42', '2024-06-16', 'shagun@gmail.com', 1),
(340, 3, 'HIRAL BARAD ', 'Female', '', 'hiralbarad2002@gmail.com', '9106954034', 13, 'Offline', 'Gujarat', 'GEER SOMANATH', 'DEVLI KODINAR GEER SOMANATH', '', '22', 'Open 1', '', 'walk In', -1, '17:26:43', '2024-06-16', 'gayatri@praajasv.com', 1),
(341, 1, 'Prince Pandey', 'Male', '', 'princep1972001@gmail.com', '6389686880', 30, 'Offline', 'Uttar Pradesh', 'Sultanpur', '', '', '8', 'Open 1', '', 'walk In', -1, '17:26:50', '2024-06-16', 'shagun@gmail.com', 1),
(342, 3, 'TUSHAR RANA', 'Male', '', 'tushar34@gmail.com', '9099065967', 13, 'Online', 'Gujarat', 'AHMEDABAD', '39 BALKRISHNA MANINAGAR ,', '', '22', 'Open 1', '', 'walk In', -1, '17:28:01', '2024-06-16', 'gayatri@praajasv.com', 1),
(343, 3, 'AKSHAY PATEL', 'Male', '', 'abpatel9070@gmail.com', '9173949224', 13, 'Offline', 'Gujarat', 'KADI MAHESANA', 'A-8 GOLDEN CITY KADI', '', '22', 'Open 1', '', 'walk In', -1, '17:29:23', '2024-06-16', 'gayatri@praajasv.com', 1),
(344, 3, 'TANMAY CHAUDHARY', 'Male', '', '', '7984645822', 13, 'Offline', 'Gujarat', 'IDAR', 'IDAR KADIYADARA', '', '22', 'Open 1', '', 'walk In', -1, '17:32:10', '2024-06-16', 'gayatri@praajasv.com', 1),
(345, 1, 'Ravi Yadav', 'Male', '', 'ss4496786@gmail.com', '7309718348', 30, 'Offline', '', '', '', '', '8', 'Open 1', '', 'walk In', -1, '17:32:27', '2024-06-16', 'shagun@gmail.com', 1),
(346, 3, 'NIRAV PATEL', 'Male', '', 'np90108@gmail.com', '7567068068', 13, 'Offline', 'Gujarat', 'IDAR', 'CHHALLA', '', '22', 'Open 1', '', 'walk In', -1, '17:33:44', '2024-06-16', 'gayatri@praajasv.com', 1),
(347, 3, 'JHANVI A DESAI', 'Female', '', 'jhanvidesai3@gmail.com', '8320489971', 13, 'Online', 'Gujarat', 'GANDHINAGAR', 'SEC 2C, ', '', '22', 'Open 1', '', 'walk In', -1, '17:35:11', '2024-06-16', 'gayatri@praajasv.com', 1),
(348, 3, 'JHANVI M. CHAUDHARY', 'Female', '', '                  jahanvi98696@yahoo.com', '9724450544', 13, 'Offline', 'Gujarat', 'GANDHINAGAR', 'SARGASAN,GANDHINAGAR', '', '22', 'Open 1', '', 'walk In', -1, '17:37:55', '2024-06-16', 'gayatri@praajasv.com', 1),
(349, 3, 'BHAVNA L. SONARA', 'Female', '', '', '7434813607', 13, 'Offline', 'Gujarat', 'ADALAJ,GANDHINAGAR', '207,PARSHWANATH AUM RESIDENCY, ADALAJ', '', '22', 'Open 1', '', 'walk In', -1, '10:46:00', '2024-06-18', '', 1),
(350, 3, 'NAYAN BHAVSAR ', 'Male', '', 'nayanbhavsar109@gmail.com', '7874325915', 13, 'Offline', 'Gujarat', 'AHMEDABAD', '109- SECTOR 2, NIRANJAN NAGAR AHMEDABAD', '', '22', 'Open 1', '', 'walk In', -1, '17:42:06', '2024-06-16', 'gayatri@praajasv.com', 1),
(351, 3, 'NILESH JADAV', 'Male', '', 'nileshjadav2403@gmail.com', '8347854220', 13, 'Offline', 'Gujarat', 'SURENDRANAGAR', '', '', '22', 'Open 1', '', 'walk In', -1, '17:43:43', '2024-06-16', 'gayatri@praajasv.com', 1),
(352, 3, 'VIRSINH ARJUNSINH JADAV', 'Male', '', 'vir.adav21@gmail.com', '7203973026', 13, 'Offline', 'Gujarat', 'JAMNAGAR', 'KVK, AIRFORCE ROAD, JAMNAGAR', '', '22', 'Open 1', '', 'walk In', -1, '17:46:34', '2024-06-16', 'gayatri@praajasv.com', 1),
(353, 3, 'YASH PARAJAPATI', 'Male', '', 'yash1611@gmail.com', '9328913343', 13, 'Offline', 'Gujarat', 'PALANPUR', '31- DEVARSHI SOCIETY, PALANPUR', '', '22', 'Open 1', '', 'walk In', -1, '17:48:52', '2024-06-16', 'gayatri@praajasv.com', 1),
(354, 3, 'SAHIL VITHALANI', 'Male', '', '', '7990579277', 13, 'Online', 'Gujarat', 'AMRELI', 'AMRELI', '', '22', 'Open 1', '', 'walk In', -1, '17:50:11', '2024-06-16', 'gayatri@praajasv.com', 1),
(355, 3, 'VIJAY MAKAWANA', 'Male', '', '', '7777965513', 13, 'Online', 'Gujarat', 'GANDHINAGAR', 'GANDHINAGAR', '', '22', 'Open 1', '', 'walk In', -1, '17:51:36', '2024-06-16', 'gayatri@praajasv.com', 1),
(356, 1, 'Harshit Singh', 'Male', '', '', '9002685429', 1, 'Offline', 'Uttar Pradesh', 'gurugram', '', '', '8', 'Open 1', '', 'walk In', -1, '18:03:54', '2024-06-16', 'shagun@gmail.com', 1),
(357, 2, 'POOJABA VAGHELA', 'Male', '', 'hasabavaghela2106@gmail.com', '8128615305', 19, 'Offline', '', 'ahmedbad', 'V-104, VRUNDAVAN VATIKA, VASTRAL RTO ROAD, VASTRAL', '', '18', 'ADMISSION CLOSE', '', 'walk In', -1, '12:55:55', '2024-06-17', '', 1),
(358, 1, 'ambuj singh', 'Male', '', 'singhambuj158@gmail.com', '7759918381', 1, 'Online', 'Bihar', 'bihar', '144,chandip niwas, gautam nagar, green park', '', '6', 'Open 1', '', 'walk In', -1, '13:24:17', '2024-06-17', '', 1),
(359, 1, 'Shivam Kumar', 'Male', '', 'kumarshivambhardwaj101977@gmail.com', '9999223480', 1, 'Offline', 'Delhi', 'nangloi', '', '', '8', 'Open 1', '', 'walk In', -1, '13:24:36', '2024-06-17', 'shagun@gmail.com', 1),
(360, 1, 'Saurav', 'Male', '', 'sauravtawatia2002@gmail.com', '8929320703', 1, 'Offline', 'Haryana', 'faridabad', '', '', '8', 'Open 1', '', 'walk In', -1, '13:27:04', '2024-06-17', 'shagun@gmail.com', 1),
(361, 1, 'Dhananjay Singh', 'Male', '', 'dhananjay2612001@gmail.com', '7071767184', 1, 'Offline', 'Uttar Pradesh', 'Pratapgarh', '', '', '8', 'Open 1', '', 'walk In', -1, '17:22:38', '2024-06-17', 'shagun@gmail.com', 1),
(362, 1, 'Sagar Singh', 'Male', '', 'sagarsinghrajputot@gmail.com', '9970413622', 1, 'Offline', 'Maharashtra', 'nagpur', '', '', '8', 'Open 1', '', 'walk In', -1, '17:31:00', '2024-06-17', 'shagun@gmail.com', 1),
(363, 1, 'Vedant Shelke', 'Male', '', '', '8446058339', 1, 'Offline', '', '', '', '', '8', 'Open 1', '', 'walk In', -1, '17:57:45', '2024-06-17', 'shagun@gmail.com', 1),
(364, 1, 'Aayushi Singh', 'Female', '', 'aayushisingh2606@gmail.com', '8595100979', 1, 'Offline', '', '', '', '', '8', 'Open 1', '', 'walk In', -1, '17:59:22', '2024-06-17', 'shagun@gmail.com', 1),
(365, 3, 'NISHANT  BHATT', 'Male', '', '', '7359666029', 17, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '08:10:58', '2024-06-18', 'dipti@praajasv.com', 1),
(366, 3, 'SHREYANSH', 'Male', '', '', '8849405251', 17, 'Offline', '', '', '', '', '11', 'ADMISSION CLOSE', '', 'Telephonic', -1, '08:13:09', '2024-06-18', 'dipti@praajasv.com', 1),
(367, 3, 'PRIYANKA   RANA', 'Female', '', '', '9924752482', 17, 'Online', '', '', '', '', '11', 'not interested', '', 'Telephonic', -1, '08:15:03', '2024-06-18', 'dipti@praajasv.com', 1),
(368, 3, 'MITESH   PATEL', 'Male', '', '', '7698034739', 17, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '08:16:47', '2024-06-18', 'dipti@praajasv.com', 1),
(369, 3, 'RONAK', 'Male', '', '', '9558272705', 17, 'Offline', '', '', '', '', '11', 'Open 4', '', 'Telephonic', -1, '08:21:06', '2024-06-18', 'dipti@praajasv.com', 1),
(370, 3, 'KASHUIK', 'Male', '', '', '7046035258', 10, 'Online', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '08:23:08', '2024-06-18', 'dipti@praajasv.com', 1),
(371, 3, 'DIGVIJAY', 'Male', '', '', '9909504001', 10, 'Online', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '08:25:41', '2024-06-18', 'dipti@praajasv.com', 1),
(372, 3, 'SARVAN   CHARPOT', 'Male', '', '', '8200318205', 17, 'Offline', '', '', '', '', '11', 'ADMISSION CLOSE', '', 'Telephonic', -1, '08:28:43', '2024-06-18', 'dipti@praajasv.com', 1),
(373, 3, 'DHARMESH', 'Male', '', '', '9638984213', 14, 'Online', '', '', '', '', '11', 'Open 4', '', 'Telephonic', -1, '08:32:05', '2024-06-18', 'dipti@praajasv.com', 1),
(374, 3, 'DEEP  SONI', 'Male', '', '', '6354114146', 17, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '08:37:51', '2024-06-18', 'dipti@praajasv.com', 1),
(375, 3, 'POOJA  MODI', 'Male', '', '', '7600976279', 17, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '08:43:05', '2024-06-18', 'dipti@praajasv.com', 1),
(376, 3, 'PRAKSH', 'Male', '', '', '9998976397', 17, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '08:46:37', '2024-06-18', 'dipti@praajasv.com', 1),
(377, 3, 'UTAKRSH', 'Male', '', '', '9664548632', 16, 'Online', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '09:29:22', '2024-06-18', 'dipti@praajasv.com', 1),
(378, 3, 'HRSH  PATEL', 'Male', '', '', '7698594950', 14, 'Online', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '09:31:20', '2024-06-18', 'dipti@praajasv.com', 1),
(379, 3, 'RAJNDRA', 'Male', '', '', '7990445634', 16, 'Offline', '', '', '', '', '11', 'Open 4', '', 'Telephonic', -1, '09:36:07', '2024-06-18', 'dipti@praajasv.com', 1),
(380, 3, 'SHIVNGI', 'Male', '', '', '7863075600', 17, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '09:38:40', '2024-06-18', 'dipti@praajasv.com', 1),
(381, 3, 'KIRAN', 'Male', '', '', '8200728353', 17, 'Offline', '', '', '', '', '11', 'VISIT DONE ', '', 'Telephonic', -1, '09:54:55', '2024-06-18', 'dipti@praajasv.com', 1),
(382, 3, 'ANJANA', 'Male', '', '', '8849675912', 13, 'Offline', '', '', '', '', '11', 'Open 4', '', 'Telephonic', -1, '10:00:55', '2024-06-18', 'dipti@praajasv.com', 1),
(383, 3, 'SIMARAN', 'Male', '', '', '9173008777', 16, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '10:42:52', '2024-06-18', 'dipti@praajasv.com', 1),
(384, 3, 'SUNIL RATHOD D.', 'Male', '', '', '8140716154', 13, 'Online', 'Gujarat', 'SURENDRANAGAR', 'NANDANVAN SOCIETY,SURENDRANAGAR', '', '22', 'Open 1', '', 'walk In', -1, '10:44:13', '2024-06-18', 'gayatri@praajasv.com', 1),
(385, 3, 'POOJA H. DAVE', 'Female', '', 'poojahdave1998@gmail.com', '7043400540', 13, 'Offline', 'Gujarat', 'BHAVNAGAR', 'B-78,CHAITNYAWILLA,BHAVNAGAR', '', '22', 'Open 1', '', 'walk In', -1, '10:50:53', '2024-06-18', 'gayatri@praajasv.com', 1),
(386, 3, 'RAVAL  NEHAL', 'Female', '', '', '9737948200', 17, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '10:51:49', '2024-06-18', 'dipti@praajasv.com', 1),
(387, 3, 'KOMAL  PRAJPATI', 'Female', '', '', '7990529110', 17, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '10:55:18', '2024-06-18', 'dipti@praajasv.com', 1),
(388, 3, 'VRUNDA PARMAR', 'Female', '', 'parmarvrunda04@gmail.com', '9426973966', 13, 'Offline', 'Gujarat', 'UPLETA', 'NEW POLICE LINE,B/H SHIVAM TA: UPLETA', '', '22', 'Open 1', '', 'walk In', -1, '11:01:26', '2024-06-18', 'gayatri@praajasv.com', 1),
(389, 3, 'DRASHTI   DABHI', 'Female', '', '', '7016056813', 6, 'Offline', '', '', '', '', '11', 'Open 4', '', 'Telephonic', -1, '11:05:30', '2024-06-18', 'dipti@praajasv.com', 1),
(390, 3, 'PURUB', 'Male', '', '', '9924596275', 17, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '11:08:52', '2024-06-18', 'dipti@praajasv.com', 1),
(391, 3, 'POONAM', 'Male', '', '', '8347648020', 17, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '11:26:31', '2024-06-18', 'dipti@praajasv.com', 1),
(392, 3, 'PARTH  BHARWAD', 'Male', '', '', '7698808563', 6, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '11:28:36', '2024-06-18', 'dipti@praajasv.com', 1),
(393, 3, 'PARIMAL', 'Male', '', '', '9313174086', 5, 'Online', '', '', '', '', '11', 'ADMISSION CLOSE', '', 'Telephonic', -1, '11:33:22', '2024-06-18', 'dipti@praajasv.com', 1),
(394, 3, 'SHANVAJ    ALI', 'Male', '', '', '9106827572', 5, 'Online', '', '', '', '', '11', 'ADMISSION CLOSE', '', 'Telephonic', -1, '11:35:44', '2024-06-18', 'dipti@praajasv.com', 1),
(395, 3, 'PRIYANKA', 'Male', '', '', '6355205027', 18, 'Offline', '', '', '', '', '11', 'Open 4', '', 'Telephonic', -1, '11:36:45', '2024-06-18', 'dipti@praajasv.com', 1),
(396, 3, 'JALK  PARMAR', 'Male', '', '', '8200478056', 14, 'Online', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '11:39:09', '2024-06-18', 'dipti@praajasv.com', 1),
(397, 3, 'KIRAN', 'Male', '', '', '9313198699', 17, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '11:42:27', '2024-06-18', 'dipti@praajasv.com', 1),
(398, 3, 'DEVANSH', 'Male', '', '', '9265551245', 17, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '11:44:06', '2024-06-18', 'dipti@praajasv.com', 1),
(399, 3, 'DARSHAN   CHUDHASMA', 'Male', '', '', '6351656874', 18, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '11:46:11', '2024-06-18', 'dipti@praajasv.com', 1),
(400, 3, 'GADHVI   MOHAN', 'Male', '', '', '6359050625', 17, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '11:55:19', '2024-06-18', 'dipti@praajasv.com', 1),
(401, 3, 'UNNATI', 'Male', '', '', '6353023977', 17, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '11:56:57', '2024-06-18', 'dipti@praajasv.com', 1),
(402, 3, 'VIRENDRA', 'Male', '', '', '7984897417', 11, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '11:58:43', '2024-06-18', 'dipti@praajasv.com', 1),
(403, 3, 'AMIT   RANA', 'Male', '', '', '9173036201', 16, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '12:00:01', '2024-06-18', 'dipti@praajasv.com', 1),
(404, 3, 'RIDHI', 'Male', '', '', '9737488295', 5, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '12:02:12', '2024-06-18', 'dipti@praajasv.com', 1),
(405, 3, 'MAYUR', 'Male', '', '', '8320097742', 17, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '12:05:26', '2024-06-18', 'dipti@praajasv.com', 1),
(406, 1, 'shashank ', 'Male', '', '', '9818999757', 1, 'Offline', '', 'delhi', '', '', '7', 'ADMISSION CLOSE', '', 'Telephonic', -1, '12:08:26', '2024-06-18', 'anjali@gmail.com', 1),
(407, 3, 'HEENA', 'Male', '', '', '9664946113', 15, 'Online', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '12:08:38', '2024-06-18', 'dipti@praajasv.com', 1),
(408, 1, 'bhavna', 'Female', '', '', '8851340348', 1, 'Online', 'Haryana', '', '', '', '7', 'ADMISSION CLOSE', '', 'walk In', -1, '12:11:04', '2024-06-18', 'anjali@gmail.com', 1),
(409, 3, 'PATEL   SAHIL', 'Male', '', '', '7202906386', 17, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '12:11:58', '2024-06-18', 'dipti@praajasv.com', 1),
(410, 1, 'nitin ', 'Male', '', '', '7668599930', 1, 'Offline', 'Uttar Pradesh', 'saharanpur', '', '', '7', 'VISIT DONE ', '', 'Telephonic', -1, '12:13:02', '2024-06-18', 'anjali@gmail.com', 1),
(411, 1, 'kumar gaurav', 'Male', '', '', '7992278231', 1, 'Offline', 'Uttar Pradesh', 'noida', '', '', '7', 'not interested', '', 'Telephonic', -1, '12:14:38', '2024-06-18', 'anjali@gmail.com', 1),
(412, 1, 'tanishka', 'Female', '', '', '7906128225', 1, 'Offline', '', 'DELHI', '', '', '7', 'Open 2', '', 'walk In', -1, '12:17:33', '2024-06-18', 'anjali@gmail.com', 1),
(413, 3, 'AMIN', 'Male', '', '', '9106566132', 15, 'Offline', '', '', '', '', '11', 'ADMISSION CLOSE', '', 'Telephonic', -1, '12:18:30', '2024-06-18', 'dipti@praajasv.com', 1),
(414, 1, 'virendra chaudhary', 'Male', '', '', '9414150551', 1, 'Offline', 'Delhi', 'delhi', '', '', '7', 'ADMISSION CLOSE', '', 'Telephonic', -1, '12:20:56', '2024-06-18', '', 1),
(415, 3, 'SIDDHRAJ', 'Male', '', '', '9313383313', 6, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '12:21:33', '2024-06-18', 'dipti@praajasv.com', 1),
(416, 1, 'gaurav kumar ', 'Male', '', '', '8284003691', 1, 'Offline', '', '', '', '', '7', 'Open 1', '', 'walk In', -1, '12:22:18', '2024-06-18', 'anjali@gmail.com', 1),
(417, 3, 'ANIKET', 'Male', '', '', '8200125713', 16, 'Offline', '', '', '', '', '11', 'VISIT DONE ', '', 'Telephonic', -1, '12:25:38', '2024-06-18', 'dipti@praajasv.com', 1),
(418, 3, 'JASMIN   NAYI', 'Male', '', '', '9106832535', 16, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '12:26:46', '2024-06-18', 'dipti@praajasv.com', 1),
(419, 3, 'DEV', 'Male', '', '', '9898646764', 17, 'Offline', '', '', '', '', '11', 'VISIT DONE ', '', 'Telephonic', -1, '12:32:26', '2024-06-18', 'dipti@praajasv.com', 1),
(420, 3, 'SHITAL   GADHVI', 'Male', '', '', '7435096830', 17, 'Offline', '', '', '', '', '11', 'Confirmation Done', '', 'Telephonic', -1, '12:34:02', '2024-06-18', 'dipti@praajasv.com', 1),
(421, 3, 'PINAKIN', 'Male', '', '', '9104122110', 14, 'Online', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '12:37:59', '2024-06-18', 'dipti@praajasv.com', 1),
(422, 3, 'MANISH', 'Male', '', '', '9586418365', 17, 'Offline', '', '', '', '', '11', 'Open 2', '', 'Telephonic', -1, '12:39:17', '2024-06-18', 'dipti@praajasv.com', 1),
(423, 1, 'namit jain ', 'Male', '', '', '7737539957', 30, 'Offline', '', '', '', '', '7', 'Open 1', '', 'walk In', -1, '12:55:04', '2024-06-18', 'anjali@gmail.com', 1),
(424, 3, 'BHAVISH   PARDHI', 'Male', '', '', '6351246452', 18, 'Offline', '', '', '', '', '11', 'VISIT DONE ', '', 'instagram', -1, '12:55:49', '2024-06-18', 'dipti@praajasv.com', 1),
(425, 1, 'akhand pratap', 'Male', '', '', '8982929091', 1, 'Online', 'Madhya Pradesh', '', '', '', '7', 'Open 1', '', 'walk In', -1, '12:56:24', '2024-06-18', 'anjali@gmail.com', 1),
(426, 1, 'priyansh rai', 'Male', '', '', '8770337831', 1, 'Offline', 'Madhya Pradesh', 'bina', '', '', '7', 'ADMISSION CLOSE', '', 'walk In', -1, '12:58:20', '2024-06-18', 'anjali@gmail.com', 1),
(427, 1, 'prayag rai', 'Male', '', '', '7024337287', 1, 'Offline', '', 'bina', '', '', '7', 'ADMISSION CLOSE', '', 'walk In', -1, '13:01:13', '2024-06-18', '', 1),
(428, 1, 'ashish ', 'Male', '', '', '8126077889', 1, 'Offline', 'Uttar Pradesh', '', '', '', '7', 'Open 1', '', 'walk In', -1, '13:00:33', '2024-06-18', 'anjali@gmail.com', 1),
(429, 1, 'akshita ', 'Female', '', '', '8607288136', 1, 'Offline', 'Haryana', 'sonipat', '', '', '7', 'Open 1', '', 'walk In', -1, '13:02:33', '2024-06-18', 'anjali@gmail.com', 1),
(430, 1, 'arjun', 'Male', '', '', '7000643222', 1, 'Offline', '', 'indore', '', '', '7', 'Open 1', '', 'walk In', -1, '13:41:53', '2024-06-18', '', 1),
(431, 3, 'SNEHAL', 'Female', '', '', '9313133048', 17, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '14:53:57', '2024-06-18', 'dipti@praajasv.com', 1),
(432, 3, 'YUVRAJ  SURESHBHAI SIHORA', 'Male', '', 'yuvrajsinhora7508@gmail.com', '8320557909', 13, 'Offline', '', 'HALVAD', 'AT ; HALWAD', '', '22', 'Open 1', '', 'walk In', -1, '15:03:02', '2024-06-18', '', 1),
(433, 3, 'PATEL  PRITI', 'Male', '', '', '9773240691', 17, 'Offline', '', '', '', '', '11', 'Open 4', '', 'Telephonic', -1, '15:04:59', '2024-06-18', 'dipti@praajasv.com', 1),
(434, 3, 'KUMARPALSINH PARMAR', 'Male', '', 'kumarpalparmar006@gmail.com', '9664924833', 13, 'Offline', 'Gujarat', 'GANDHINAGAR', 'SECTOR-6C ,1584,GANDHINAGAR', '', '22', 'Open 3', '', 'walk In', -1, '15:07:07', '2024-06-18', 'gayatri@praajasv.com', 1),
(435, 3, 'DESAI   RUSHI', 'Male', '', '', '9879350656', 17, 'Offline', '', '', '', '', '11', 'ADMISSION CLOSE', '', 'Telephonic', -1, '15:07:37', '2024-06-18', 'dipti@praajasv.com', 1),
(436, 3, 'YUG  PRAJAPATI', 'Male', '', '', '8980429490', 16, 'Offline', '', '', '', '', '11', 'Open 4', '', 'Telephonic', -1, '15:09:26', '2024-06-18', 'dipti@praajasv.com', 1),
(437, 3, 'MANSI R.CHAUDHARY', 'Female', '', 'mansichaudhari08099@gmail.com', '8347158178', 13, 'Offline', 'Gujarat', 'IDAR', 'IDAR', '', '22', 'ADMISSION CLOSE', '', 'walk In', -1, '15:10:31', '2024-06-18', 'gayatri@praajasv.com', 1),
(438, 3, 'ANAND  K. THAKOR', 'Male', '', 'anandthakor456@gmail.com', '8140157796', 13, 'Online', 'Gujarat', 'AHMEDABAD', '12, SHAKTINAGAR,VYAS VADI, NARODA ,AHMEDABAD', '', '22', 'Open 1', '', 'walk In', -1, '15:13:47', '2024-06-18', 'gayatri@praajasv.com', 1),
(439, 3, 'RABARI DAHSRATHSIN D.', 'Male', '', 'desaodasharath@gmail.com', '6356144245', 13, 'Offline', 'Gujarat', 'RADHANPUR', 'RADHANPUR', '', '22', 'Open 1', '', 'walk In', -1, '15:15:56', '2024-06-18', 'gayatri@praajasv.com', 1),
(440, 3, 'MAYANK', 'Male', '', '', '6354165808', 17, 'Offline', '', '', '', '', '11', 'Confirmation Done', '', 'Telephonic', -1, '15:20:08', '2024-06-18', 'dipti@praajasv.com', 1),
(441, 3, 'USHA   MEWADA', 'Male', '', '', '7984455121', 18, 'Online', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '15:23:42', '2024-06-18', 'dipti@praajasv.com', 1),
(442, 3, 'MORI  PRATIPAL', 'Male', '', '', '8511955269', 17, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '15:27:10', '2024-06-18', 'dipti@praajasv.com', 1),
(443, 3, 'KRISHNA   DAMOR', 'Male', '', '', '9510992327', 17, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '15:30:18', '2024-06-18', 'dipti@praajasv.com', 1),
(444, 3, 'MITESH', 'Male', '', '', '8140343535', 17, 'Offline', '', '', '', '', '11', 'admission open', '', 'Telephonic', -1, '15:37:32', '2024-06-18', 'dipti@praajasv.com', 1),
(445, 3, 'KASHMIRA', 'Male', '', '', '8347535093', 17, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '15:54:33', '2024-06-18', 'dipti@praajasv.com', 1),
(446, 3, 'DIPAK', 'Male', '', '', '7990846178', 17, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '16:06:07', '2024-06-18', 'dipti@praajasv.com', 1),
(447, 3, 'DIYA PATEL', 'Female', '', 'nishapatel4284@gmail.com', '9601810212', 18, 'Offline', 'Gujarat', 'GANDHINAGAR', 'F-102 SWAMINARAYAN PRECIDENCY NEAR -CITY PLUS, RANDESHAN', '', '21', 'Open 1', '', 'walk In', -1, '16:06:21', '2024-06-18', 'ajay@praajasv.com', 1),
(448, 3, 'ANUSHREE', 'Male', '', '', '6351210277', 17, 'Offline', '', '', '', '', '11', 'Open 4', '', 'Telephonic', -1, '16:10:01', '2024-06-18', 'dipti@praajasv.com', 1),
(449, 3, 'LAKSHMI', 'Male', '', '', '9313864677', 14, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '16:17:56', '2024-06-18', 'dipti@praajasv.com', 1),
(450, 1, 'lakshay', 'Male', '', 'singhyashmito@gmail.com', '7210682122', 1, 'Offline', 'Delhi', 'delhi', 'h.no-34/97 rajendra park extn nangloi', '', '6', 'not interested', '', 'walk In', -1, '16:35:20', '2024-06-18', 'deepika@gmail.com', 1),
(451, 3, 'JAGDISH', 'Male', '', '', '9313503251', 17, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '16:38:22', '2024-06-18', 'dipti@praajasv.com', 1),
(452, 3, 'BHARGESH', 'Male', '', '', '6355406521', 17, 'Offline', '', '', '', '', '11', 'Confirmation Done', '', 'Telephonic', -1, '16:40:49', '2024-06-18', 'dipti@praajasv.com', 1),
(453, 3, 'DIPESH', 'Male', '', '', '8347068227', 17, 'Offline', '', '', '', '', '11', 'Confirmation Done', '', 'Telephonic', -1, '16:43:03', '2024-06-18', 'dipti@praajasv.com', 1),
(454, 3, 'JAYDEEP', 'Male', '', '', '8238598116', 15, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '16:48:22', '2024-06-18', 'dipti@praajasv.com', 1),
(455, 3, 'YASH   JANKANT', 'Male', '', '', '8140376676', 15, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '16:53:28', '2024-06-18', 'dipti@praajasv.com', 1),
(456, 3, 'MORI   SURUDEEP', 'Male', '', '', '9313092292', 17, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '16:55:26', '2024-06-18', 'dipti@praajasv.com', 1),
(457, 3, 'YASHPAL', 'Male', '', '', '9574430845', 15, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '17:14:27', '2024-06-18', 'dipti@praajasv.com', 1),
(458, 3, 'DAKSHA  PRAJPATI', 'Male', '', '', '8238743324', 14, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '17:17:19', '2024-06-18', 'dipti@praajasv.com', 1),
(459, 3, 'CHAUDHARY  VISHAL', 'Male', '', '', '6354956466', 15, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '17:20:45', '2024-06-18', 'dipti@praajasv.com', 1),
(460, 3, 'JIGAR DEASI', 'Male', '', '', '7041509596', 15, 'Offline', '', '', '', '', '11', 'Open 4', '', 'Telephonic', -1, '17:46:59', '2024-06-18', 'dipti@praajasv.com', 1),
(461, 3, 'YOGESH', 'Male', '', '', '7383806192', 14, 'Offline', '', '', '', '', '11', 'Open 1', '', 'Telephonic', -1, '17:49:34', '2024-06-18', 'dipti@praajasv.com', 1),
(465, 1, 'Test 2', 'Male', '', '', '8826778956', 30, 'Online', 'Andaman and Nicobar Islands', 'Port Blair', '', '', '8', 'Open 1', '', 'Telecaller', 2, '06:17:05', '2024-06-24', 'shagun@gmail.com', 1),
(464, 1, 'Test 2', 'Male', '', '', '8826778956', 30, 'Online', 'Andaman and Nicobar Islands', 'Port Blair', '', '', '8', 'Open 1', '', 'Telecaller', 2, '06:16:55', '2024-06-24', 'shagun@gmail.com', 1),
(466, 1, 'Test 1', 'Male', '', 'test1@gmail.com', '8826789578', 31, 'Online', 'Uttar Pradesh', 'Noida', 'Test Address', '', '8', 'Open 1', '', 'Telecaller', 1, '06:17:49', '2024-06-24', 'shagun@gmail.com', 1),
(467, 1, 'Saumya Sinha', 'Female', '', 'saumya1sinha@gmail.com', '8743978821', 1, 'Offline', 'Delhi', 'dwarka', '', '', '8', 'Open 1', '', 'walk In', -1, '11:26:05', '2024-06-24', 'shagun@gmail.com', 1),
(468, 1, 'Shashank Chaudhary', 'Male', '', 'shshankchoudhary234@gmail.com', '8057864020', 31, 'Online', 'Madhya Pradesh', 'indore ', '', '', '8', 'Open 1', '', 'walk In', -1, '11:42:36', '2024-06-24', 'shagun@gmail.com', 1),
(469, 1, 'navdeep', 'Male', '', 'navdeepkhurja@gmail.com', '9569203588', 30, 'Offline', 'Uttar Pradesh', 'bulandshehar', 'khurja,bulandshehar', '', '6', 'Open 1', '', 'walk In', -1, '11:49:59', '2024-06-24', 'deepika@gmail.com', 1),
(470, 1, 'Ashu Sharma', 'Male', '', '', '7973828268', 1, 'Offline', '', '', '', '', '8', 'Open 1', '', 'walk In', -1, '13:51:16', '2024-06-24', '', 1),
(471, 3, 'ABHIMANYU KHER', 'Male', '', '', '9106477505', 17, 'Offline', 'Gujarat', 'GANDHINAGAR', 'SEC - 2, GANDHINAGAR', '', '22', 'Open 1', '', 'walk In', -1, '14:42:36', '2024-06-24', '', 1),
(472, 3, 'JADAV YASH', 'Male', '', '', '9825632408', 17, 'Offline', 'Gujarat', 'GANDHINAGAR', '', '', '22', 'Open 1', '', 'walk In', -1, '14:50:05', '2024-06-24', 'gayatri@praajasv.com', 1),
(473, 1, 'Navdeep', 'Male', '', '', '8529085375', 1, 'Offline', 'Rajasthan', '', '', '', '8', 'Open 1', '', 'walk In', -1, '14:56:00', '2024-06-24', 'shagun@gmail.com', 1),
(474, 3, 'RUTUL NANDANIYA', 'Male', '', 'ramnandaniya9330@gmail.com', '9104923559', 17, 'Online', 'Gujarat', 'GANDHINAGAR', 'SEC -25,GANDHINAGAR', '', '22', 'Open 1', '', 'walk In', -1, '15:13:10', '2024-06-24', 'gayatri@praajasv.com', 1),
(475, 3, 'HEMANGIBEN PATEL', 'Male', '', 'hemangi86142gmail.com', '8469870054', 13, 'Online', 'Gujarat', 'AHMEDABAD', '504,BLOCK -9,CHANDRASHEKHAR AZAD NAGAR ,SARKHEJ', '', '22', 'Open 1', '', 'walk In', -1, '15:16:49', '2024-06-24', 'gayatri@praajasv.com', 1),
(476, 3, 'VASAVA RAVINABEN', 'Male', '', 'ravina4605@gmail.com', '9979413431', 13, 'Offline', '', 'SURAT', 'SURAT', '', '22', 'Open 1', '', 'walk In', -1, '15:20:06', '2024-06-24', 'gayatri@praajasv.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BookName` varchar(256) NOT NULL DEFAULT '',
  `Price` varchar(256) NOT NULL DEFAULT '',
  `BookPDF` varchar(256) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

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

DROP TABLE IF EXISTS `branch`;
CREATE TABLE IF NOT EXISTS `branch` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BranchName` varchar(256) NOT NULL,
  `Manager` varchar(256) NOT NULL DEFAULT '-1',
  `CreatedDate` varchar(50) NOT NULL,
  `CreatedTime` varchar(50) NOT NULL,
  `CreatedBy` varchar(50) NOT NULL,
  `IsActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`ID`, `BranchName`, `Manager`, `CreatedDate`, `CreatedTime`, `CreatedBy`, `IsActive`) VALUES
(1, 'Delhi', '4', '2024-06-01', '17:25:41', 'admin@praajasv.com', 1),
(2, 'Ahmedabad', '17', '2024-06-01', '17:25:52', 'admin@praajasv.com', 1),
(3, 'Gandhinagar', '10', '2024-06-01', '17:26:02', 'admin@praajasv.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company_details`
--

DROP TABLE IF EXISTS `company_details`;
CREATE TABLE IF NOT EXISTS `company_details` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
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
  `IsActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_details`
--

INSERT INTO `company_details` (`ID`, `CompanyName`, `CompanyLogo`, `Email`, `PhoneNumber`, `AlternativeNumber`, `Address`, `GSTNumber`, `CGST`, `SGST`, `IGST`, `CreatedBy`, `CreatedDate`, `CreatedTime`, `IsActive`) VALUES
(1, 'Praajasv IAS', '', 'info@praajsvaias.com', '8433098391', '8433098391', '2nd & 3rd Floor, Atria, B Block, Saragasan Cross Road Gandhinagar, Gujarat, India – 382421', 'TEST2727828282', '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `conf_subject`
--

DROP TABLE IF EXISTS `conf_subject`;
CREATE TABLE IF NOT EXISTS `conf_subject` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(256) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT '1',
  `IsDelete` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conf_subject`
--

INSERT INTO `conf_subject` (`ID`, `Name`, `IsActive`, `IsDelete`) VALUES
(1, 'Test3', 1, 1),
(2, 'History2', 1, 1),
(3, 'History3', 1, 1),
(4, 'History4', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
CREATE TABLE IF NOT EXISTS `contact_us` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Course` varchar(50) NOT NULL,
  `Message` text NOT NULL,
  `CreatedDateTime` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `courses_fee`
--

DROP TABLE IF EXISTS `courses_fee`;
CREATE TABLE IF NOT EXISTS `courses_fee` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CourseID` varchar(256) NOT NULL,
  `Mode` varchar(50) NOT NULL DEFAULT '',
  `Fees` varchar(50) NOT NULL DEFAULT '',
  `FirstYear` varchar(256) NOT NULL DEFAULT '',
  `SecondYear` varchar(256) NOT NULL DEFAULT '',
  `ThirdYear` varchar(256) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT '1',
  `CreatedDate` varchar(256) NOT NULL DEFAULT '',
  `CreatedTime` varchar(256) NOT NULL DEFAULT '',
  `CreatedBy` varchar(256) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

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
(34, '26', 'Offline', '40000', '20000', '20000', '', 1, '2024-06-16', '12:38:12', 'malhar@praajasv.com');

-- --------------------------------------------------------

--
-- Table structure for table `courses_for_display`
--

DROP TABLE IF EXISTS `courses_for_display`;
CREATE TABLE IF NOT EXISTS `courses_for_display` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CenterID` int(11) NOT NULL DEFAULT '-1',
  `CourseName` varchar(256) NOT NULL,
  `CourseType` varchar(256) NOT NULL,
  `IsActive` int(11) NOT NULL DEFAULT '1',
  `CreatedDate` varchar(256) NOT NULL,
  `CreatedBy` varchar(256) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

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
(31, 1, 'UPSC GS Foundation Batch 3 year', 'Main', 1, '2024-06-10', 'yogendra@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `course_batch`
--

DROP TABLE IF EXISTS `course_batch`;
CREATE TABLE IF NOT EXISTS `course_batch` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CourseID` int(11) NOT NULL DEFAULT '-1',
  `BatchName` varchar(256) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

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
(14, 26, 'PSI JUNE 2024', '2024-06-14', '11:24:00', 'malhar@praajasv.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_book`
--

DROP TABLE IF EXISTS `course_book`;
CREATE TABLE IF NOT EXISTS `course_book` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Course` varchar(256) NOT NULL,
  `CourseBook` varchar(256) NOT NULL,
  `CreatedDate` varchar(50) NOT NULL,
  `CreatedTime` varchar(50) NOT NULL,
  `CreatedBy` varchar(50) NOT NULL,
  `IsActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

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

DROP TABLE IF EXISTS `course_cordinator`;
CREATE TABLE IF NOT EXISTS `course_cordinator` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CourseID` int(11) NOT NULL DEFAULT '-1',
  `Name` varchar(256) NOT NULL DEFAULT '',
  `PhoneNumber` varchar(256) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_counsellor`
--

DROP TABLE IF EXISTS `course_counsellor`;
CREATE TABLE IF NOT EXISTS `course_counsellor` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CounsellorID` int(11) NOT NULL DEFAULT '-1',
  `CourseID` varchar(256) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(256) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

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
(10, 22, '17,16,15,14,13,12,11,6,4', '2024-06-13', '17:11:05', 'milan@praajasv.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `current_affairs`
--

DROP TABLE IF EXISTS `current_affairs`;
CREATE TABLE IF NOT EXISTS `current_affairs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CurrentDate` varchar(256) NOT NULL DEFAULT '',
  `PdfName` varchar(256) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `educator`
--

DROP TABLE IF EXISTS `educator`;
CREATE TABLE IF NOT EXISTS `educator` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CenterID` int(11) NOT NULL DEFAULT '-1',
  `EducatorName` varchar(256) NOT NULL DEFAULT '',
  `PhoneNumber` varchar(256) NOT NULL DEFAULT '',
  `AlternativeNumber` varchar(256) NOT NULL DEFAULT '',
  `Email` varchar(256) NOT NULL DEFAULT '',
  `Designation` varchar(256) NOT NULL DEFAULT '',
  `EducatorDetails` varchar(1000) NOT NULL DEFAULT '',
  `EducatorProfile` varchar(256) NOT NULL DEFAULT '',
  `StrategySession` int(11) NOT NULL DEFAULT '0',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `educator`
--

INSERT INTO `educator` (`ID`, `CenterID`, `EducatorName`, `PhoneNumber`, `AlternativeNumber`, `Email`, `Designation`, `EducatorDetails`, `EducatorProfile`, `StrategySession`, `CreatedBy`, `CreatedDate`, `CreatedTime`, `IsActive`) VALUES
(1, 2, 'Manish', '4795794837', '8444444444', 'manish@gmail.com', 'Front End Engineer', '<div>tttt</div>', 'Manish_item.png', 0, 'admin@praajasv.com', '2024-06-25', '12:35:54', 1),
(2, 1, 'Manish', '4795794837', '8444444444', 'test@gmail.com', 'test', '<div>222</div>', '', 0, 'admin@praajasv.com', '2024-06-25', '14:18:26', 1),
(3, 1, 'Manish', '4795794837', '8444444444', 'test@gmail.com', 'test', '<div>222</div>', '', 0, 'admin@praajasv.com', '2024-06-25', '14:18:37', 1),
(4, 1, 'Manish', '4795794837', '8444444444', 'test@gmail.com', 'test', '<div>222</div>', '', 0, 'admin@praajasv.com', '2024-06-25', '14:21:36', 1),
(5, 1, 'Manish', '4795794837', '8444444444', 'test@gmail.com', 'test', '<div>222</div>', '', 0, 'admin@praajasv.com', '2024-06-25', '14:22:29', 1),
(6, 1, 'Manish', '4795794837', '8444444444', 'test@gmail.com', 'test', '<div>222</div>', '', 0, 'admin@praajasv.com', '2024-06-25', '14:22:52', 1),
(7, 1, 'Manish', '4795794837', '8444444444', 'test@gmail.com', 'test', '<div>222</div>', '', 0, 'admin@praajasv.com', '2024-06-25', '14:23:47', 1),
(8, 1, 'Manish', '4795794837', '8444444444', 'test@gmail.com', 'test', '<div>222</div>', '', 0, 'admin@praajasv.com', '2024-06-25', '14:23:58', 1),
(9, 3, 'Manish', '4795794837', '8444444444', 'manish@gmail.com', 'Front End Engineer', '<div>222</div>', '', 0, 'admin@praajasv.com', '2024-06-25', '15:59:23', 1),
(10, 2, 'Manish', '4795794837', '8444444444', 'manish@gmail.com', 'Front End Engineer', '<div>tes</div>', '', 1, 'admin@praajasv.com', '2024-06-25', '15:59:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `educator_essay`
--

DROP TABLE IF EXISTS `educator_essay`;
CREATE TABLE IF NOT EXISTS `educator_essay` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Educator` varchar(256) NOT NULL DEFAULT '',
  `Question` varchar(256) NOT NULL DEFAULT '',
  `QuestionDate` varchar(256) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `educator_subject`
--

DROP TABLE IF EXISTS `educator_subject`;
CREATE TABLE IF NOT EXISTS `educator_subject` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EducatorID` int(11) NOT NULL DEFAULT '-1',
  `SubjectID` int(11) NOT NULL DEFAULT '-1',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT '1',
  `IsDelete` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `educator_subject`
--

INSERT INTO `educator_subject` (`ID`, `EducatorID`, `SubjectID`, `CreatedDate`, `CreatedTime`, `CreatedBy`, `IsActive`, `IsDelete`) VALUES
(1, 1, 1, '', '', '', 1, 1),
(2, 1, 2, '2024-06-25', '17:30:08', 'admin@praajasv.com', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_no`
--

DROP TABLE IF EXISTS `invoice_no`;
CREATE TABLE IF NOT EXISTS `invoice_no` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `InvoiceNo` int(11) NOT NULL,
  `Mode` varchar(50) NOT NULL,
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_no`
--

INSERT INTO `invoice_no` (`ID`, `InvoiceNo`, `Mode`, `CreatedDate`, `CreatedTime`, `CreatedBy`, `IsActive`) VALUES
(1, 67, 'Online', '2023-10-09', '14:52:43', 'admin@praajasv.com', 1),
(2, 126, 'Offline', '2023-10-09', '14:53:58', 'admin@praajasv.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lead_assignment`
--

DROP TABLE IF EXISTS `lead_assignment`;
CREATE TABLE IF NOT EXISTS `lead_assignment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LeadID` int(11) NOT NULL DEFAULT '-1',
  `AssignedTo` int(11) NOT NULL DEFAULT '-1',
  `Status` varchar(50) NOT NULL DEFAULT '',
  `Remark` varchar(256) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=477 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lead_assignment`
--

INSERT INTO `lead_assignment` (`ID`, `LeadID`, `AssignedTo`, `Status`, `Remark`, `CreatedDate`, `CreatedTime`, `CreatedBy`) VALUES
(5, 5, 11, 'Open 4', 'Raised', '2024-06-07', '16:13:53', 'dipti@gmail.com'),
(6, 6, 16, 'admission open', 'will take admission in 2 days', '2024-06-08', '13:21:49', 'bhaumik@praajasv.com'),
(3, 3, 10, 'Open 4', 'Raised', '2024-06-07', '15:41:04', 'rahul@praajasv.com'),
(4, 4, 15, 'admission open', 'Raised', '2024-06-07', '15:44:14', 'rahul@praajasv.com'),
(7, 7, 10, 'Open 4', 'Raised', '2024-06-10', '13:50:20', 'rahul@praajasv.com'),
(8, 8, 18, 'Open 3', 'Raised', '2024-06-10', '14:07:42', 'bhavi@praajasv.com'),
(9, 9, 18, 'admission open', 'taking demo will confirm with in two days', '2024-06-10', '14:12:42', 'bhavi@praajasv.com'),
(10, 10, 18, 'admission open', 'Raised', '2024-06-10', '15:28:49', 'bhavi@praajasv.com'),
(11, 11, 18, 'Open 4', 'Raised', '2024-06-10', '17:23:51', 'malhar@praajasv.com'),
(12, 12, 8, 'Open 1', 'Raised', '2024-06-11', '11:56:57', 'shagun@gmail.com'),
(13, 13, 8, 'admission open', 'Done Adm', '2024-06-11', '12:08:14', 'shagun@gmail.com'),
(14, 14, 6, 'Open 4', 'WANT EVENING BATCH', '2024-06-11', '15:20:55', 'dipika@gmail.com'),
(15, 15, 8, 'Open 1', 'Raised', '2024-06-11', '15:45:19', 'shagun@gmail.com'),
(16, 16, 8, 'Open 1', 'Raised', '2024-06-11', '15:53:34', 'shagun@gmail.com'),
(17, 17, 8, 'Open 1', 'Raised', '2024-06-11', '15:59:49', 'shagun@gmail.com'),
(18, 18, 7, 'Open 1', 'Raised', '2024-06-11', '16:00:09', 'anjali@gmail.com'),
(19, 19, 18, 'Open 4', 'Raised', '2024-06-11', '16:04:13', 'bhavi@praajasv.com'),
(20, 20, 6, 'Open 1', 'Raised', '2024-06-11', '16:07:30', 'dipika@gmail.com'),
(21, 21, 18, 'Open 4', 'Raised', '2024-06-11', '16:08:37', 'bhavi@praajasv.com'),
(22, 22, 8, 'Open 1', 'Raised', '2024-06-11', '16:08:41', 'shagun@gmail.com'),
(23, 23, 8, 'Open 1', 'Raised', '2024-06-11', '16:11:42', 'shagun@gmail.com'),
(24, 24, 6, 'not interested', 'Raised', '2024-06-11', '16:13:05', 'dipika@gmail.com'),
(25, 25, 18, 'Open 1', 'Raised', '2024-06-11', '16:13:06', 'bhavi@praajasv.com'),
(26, 26, 6, 'not interested', 'Raised', '2024-06-11', '16:16:00', 'dipika@gmail.com'),
(27, 27, 18, 'admission close', 'ADMISSION DONE', '2024-06-13', '12:35:24', 'bhavi@praajasv.com'),
(28, 28, 7, 'not interested', 'Raised', '2024-06-11', '16:17:30', 'anjali@gmail.com'),
(29, 29, 6, 'not interested', 'Raised', '2024-06-11', '16:19:06', 'dipika@gmail.com'),
(30, 30, 6, 'admission close', 'Raised', '2024-06-11', '16:21:35', 'dipika@gmail.com'),
(31, 31, 18, 'admission close', 'ADMISSION DONE', '2024-06-13', '12:35:56', 'bhavi@praajasv.com'),
(32, 32, 7, 'not interested', 'Raised', '2024-06-11', '16:21:49', 'anjali@gmail.com'),
(33, 33, 7, 'not interested', 'Raised', '2024-06-11', '16:28:24', 'anjali@gmail.com'),
(34, 34, 18, 'Open 4', 'Raised', '2024-06-11', '16:28:47', 'bhavi@praajasv.com'),
(35, 35, 7, 'Open 1', 'Raised', '2024-06-11', '16:30:25', 'anjali@gmail.com'),
(36, 36, 8, 'Open 1', 'Raised', '2024-06-11', '16:30:42', 'shagun@gmail.com'),
(37, 37, 6, 'not interested', 'Raised', '2024-06-11', '16:30:44', 'dipika@gmail.com'),
(38, 38, 7, 'not interested', 'Raised', '2024-06-11', '16:31:54', 'anjali@gmail.com'),
(39, 39, 6, 'not interested', 'Raised', '2024-06-11', '16:32:44', 'dipika@gmail.com'),
(40, 40, 8, 'Open 1', 'Raised', '2024-06-11', '16:34:42', 'shagun@gmail.com'),
(41, 41, 6, 'Open 1', 'Raised', '2024-06-11', '16:36:36', 'dipika@gmail.com'),
(42, 42, 7, 'not interested', 'Raised', '2024-06-11', '16:36:55', 'anjali@gmail.com'),
(43, 43, 8, 'Open 1', 'Raised', '2024-06-11', '16:37:06', 'shagun@gmail.com'),
(44, 44, 6, 'Open 1', 'Raised', '2024-06-11', '16:38:55', 'dipika@gmail.com'),
(45, 45, 7, 'Open 1', 'Raised', '2024-06-11', '16:39:16', 'anjali@gmail.com'),
(46, 46, 6, 'not interested', 'Raised', '2024-06-11', '16:40:43', 'dipika@gmail.com'),
(47, 47, 8, 'Open 1', 'Raised', '2024-06-11', '16:41:36', 'shagun@gmail.com'),
(48, 48, 6, 'not interested', 'Raised', '2024-06-11', '16:42:13', 'dipika@gmail.com'),
(49, 49, 7, 'not interested', 'Raised', '2024-06-11', '16:43:54', 'anjali@gmail.com'),
(50, 50, 7, 'not interested', 'Raised', '2024-06-11', '16:45:14', 'anjali@gmail.com'),
(51, 51, 6, 'Open 1', 'Raised', '2024-06-11', '16:46:24', 'dipika@gmail.com'),
(52, 52, 7, 'not interested', 'Raised', '2024-06-11', '16:47:04', 'anjali@gmail.com'),
(53, 53, 6, 'Open 1', 'Raised', '2024-06-11', '16:47:42', 'dipika@gmail.com'),
(54, 54, 8, 'Open 1', 'Raised', '2024-06-11', '16:48:19', 'shagun@gmail.com'),
(55, 55, 7, 'not interested', 'Raised', '2024-06-11', '16:48:32', 'anjali@gmail.com'),
(56, 56, 6, 'Open 1', 'Raised', '2024-06-11', '16:49:02', 'dipika@gmail.com'),
(57, 57, 7, 'not interested', 'Raised', '2024-06-11', '16:50:05', 'anjali@gmail.com'),
(58, 58, 8, 'Open 1', 'Raised', '2024-06-11', '16:51:04', 'shagun@gmail.com'),
(59, 59, 7, 'admission close', 'Raised', '2024-06-11', '16:51:22', 'anjali@gmail.com'),
(60, 60, 6, 'Open 1', 'Raised', '2024-06-11', '16:51:52', 'dipika@gmail.com'),
(61, 61, 6, 'Open 1', 'Raised', '2024-06-11', '16:53:38', 'dipika@gmail.com'),
(62, 62, 8, 'Open 1', 'Raised', '2024-06-11', '16:55:11', 'shagun@gmail.com'),
(63, 63, 6, 'Open 1', 'Raised', '2024-06-11', '16:55:37', 'dipika@gmail.com'),
(64, 64, 6, 'admission close', 'Raised', '2024-06-11', '16:57:31', 'dipika@gmail.com'),
(65, 65, 8, 'Open 1', 'Raised', '2024-06-11', '16:58:33', 'shagun@gmail.com'),
(66, 66, 8, 'Open 1', 'Raised', '2024-06-11', '17:01:07', 'shagun@gmail.com'),
(67, 67, 8, 'Open 1', 'Raised', '2024-06-11', '17:04:12', 'shagun@gmail.com'),
(68, 68, 8, 'Open 1', 'Raised', '2024-06-11', '17:06:30', 'shagun@gmail.com'),
(69, 69, 8, 'Open 1', 'Raised', '2024-06-11', '17:08:50', 'shagun@gmail.com'),
(70, 70, 8, 'Open 1', 'Raised', '2024-06-11', '17:11:26', 'shagun@gmail.com'),
(71, 71, 8, 'Open 1', 'Raised', '2024-06-11', '17:15:30', 'shagun@gmail.com'),
(72, 72, 8, 'Open 1', 'Raised', '2024-06-11', '17:19:01', 'shagun@gmail.com'),
(73, 73, 8, 'Open 1', 'Raised', '2024-06-11', '17:25:23', 'shagun@gmail.com'),
(74, 74, 6, 'Open 1', 'Raised', '2024-06-11', '17:32:42', 'dipika@gmail.com'),
(75, 75, 18, 'Open 4', 'Raised', '2024-06-11', '18:03:41', 'bhavi@praajasv.com'),
(76, 76, 18, 'admission close', 'ADMISSION DONE', '2024-06-13', '12:36:48', 'bhavi@praajasv.com'),
(77, 77, 20, 'Open 1', 'Raised', '2024-06-11', '18:58:55', 'KRUPALI1@PRAAJASV.COM'),
(78, 78, 20, 'admission close', 'Raised', '2024-06-11', '19:00:58', 'KRUPALI1@PRAAJASV.COM'),
(79, 79, 20, 'Open 2', 'Raised', '2024-06-11', '19:36:56', 'KRUPALI1@PRAAJASV.COM'),
(80, 80, 10, 'not interested', 'Raised', '2024-06-12', '11:19:25', 'krupali1@praajasv.com'),
(81, 81, 20, 'Open 2', 'Raised', '2024-06-12', '11:25:15', 'krupali1@praajasv.com'),
(82, 82, 20, 'admission close', 'Raised', '2024-06-12', '11:31:51', 'krupali1@praajasv.com'),
(83, 83, 11, 'Open 3', 'Raised', '2024-06-12', '11:41:34', 'dipti@praajasv.com'),
(84, 84, 20, 'Open 1', 'Raised', '2024-06-12', '12:43:15', 'KRUPALI1@PRAAJASV.COM'),
(85, 85, 20, 'Open 1', 'Raised', '2024-06-12', '12:46:16', 'KRUPALI1@PRAAJASV.COM'),
(86, 86, 20, 'Open 1', 'Raised', '2024-06-12', '12:50:28', 'KRUPALI1@PRAAJASV.COM'),
(87, 87, 20, 'Open 4', 'Raised', '2024-06-12', '12:53:30', 'KRUPALI1@PRAAJASV.COM'),
(88, 88, 20, 'Open 4', 'Raised', '2024-06-12', '12:57:37', 'KRUPALI1@PRAAJASV.COM'),
(89, 89, 20, 'not interested', 'Raised', '2024-06-12', '13:00:27', 'KRUPALI1@PRAAJASV.COM'),
(90, 90, 20, 'Open 4', 'Raised', '2024-06-12', '13:05:37', 'KRUPALI1@PRAAJASV.COM'),
(91, 91, 20, 'Open 4', 'Raised', '2024-06-12', '13:07:34', 'KRUPALI1@PRAAJASV.COM'),
(92, 92, 20, 'Open 2', 'Raised', '2024-06-12', '13:09:41', 'KRUPALI1@PRAAJASV.COM'),
(93, 93, 18, 'admission close', 'Raised', '2024-06-12', '13:24:19', 'bhavi@praajasv.com'),
(94, 94, -1, 'Open 1', 'Raised', '2024-06-12', '13:32:31', ''),
(95, 95, 20, 'Open 4', 'TOMORROW ATTEND DEMO ', '2024-06-13', '16:20:20', 'KRUPALI1@PRAAJASV.COM'),
(96, 96, 7, 'not interested', 'Raised', '2024-06-12', '14:43:46', 'anjali@gmail.com'),
(97, 97, 7, 'not interested', 'Raised', '2024-06-12', '14:45:03', 'anjali@gmail.com'),
(98, 98, 12, 'admission close', 'Raised', '2024-06-12', '14:45:07', 'KHUSHBU@GMAIL.COM'),
(99, 99, 7, 'not interested', 'Raised', '2024-06-12', '14:46:00', 'anjali@gmail.com'),
(100, 100, 7, 'not interested', 'Raised', '2024-06-12', '14:48:54', 'anjali@gmail.com'),
(101, 101, 7, 'admission close', 'Raised', '2024-06-12', '14:50:32', 'anjali@gmail.com'),
(102, 102, 12, 'Open 2', 'Raised', '2024-06-12', '15:13:35', 'khushbu@gmail.com'),
(103, 103, 11, 'Open 1', 'Raised', '2024-06-12', '17:56:53', 'dipti@praajasv.com'),
(104, 104, 18, 'Open 1', 'Raised', '2024-06-12', '18:16:26', 'bhavi@praajasv.com'),
(105, 105, 18, 'Open 1', 'Raised', '2024-06-12', '18:29:46', 'bhavi@praajasv.com'),
(106, 106, 7, 'Open 4', 'Raised', '2024-06-12', '18:53:07', 'anjali@gmail.com'),
(107, 107, 6, 'Open 1', 'Raised', '2024-06-13', '10:13:10', 'deepika@gmail.com'),
(108, 108, 6, 'not interested', 'Raised', '2024-06-13', '10:15:19', 'deepika@gmail.com'),
(109, 109, 6, 'not interested', 'Raised', '2024-06-13', '10:21:42', 'deepika@gmail.com'),
(110, 110, 6, 'not interested', 'Raised', '2024-06-13', '10:23:45', 'deepika@gmail.com'),
(111, 111, 6, 'Open 1', 'Raised', '2024-06-13', '10:25:05', 'deepika@gmail.com'),
(112, 112, 6, 'Open 1', 'Raised', '2024-06-13', '10:27:15', 'deepika@gmail.com'),
(113, 113, 6, 'not interested', 'Raised', '2024-06-13', '10:30:35', 'deepika@gmail.com'),
(114, 114, 6, 'Open 1', 'Raised', '2024-06-13', '10:32:08', 'deepika@gmail.com'),
(115, 115, 20, 'Open 1', 'Raised', '2024-06-13', '16:18:21', 'KRUPALI1@PRAAJASV.COM'),
(116, 116, 8, 'Open 2', 'Raised', '2024-06-13', '16:24:51', ''),
(117, 117, 20, 'Open 1', 'Raised', '2024-06-13', '16:30:32', 'KRUPALI1@PRAAJASV.COM'),
(118, 118, 8, 'Open 2', 'Raised', '2024-06-13', '16:37:32', 'shagun@gmail.com'),
(119, 119, 8, 'admission close', 'Raised', '2024-06-13', '16:41:26', 'shagun@gmail.com'),
(120, 120, 6, 'Open 1', 'Raised', '2024-06-13', '17:29:01', 'deepika@gmail.com'),
(121, 121, 6, 'Open 1', 'Raised', '2024-06-13', '17:30:40', 'deepika@gmail.com'),
(122, 122, 6, 'Open 1', 'Raised', '2024-06-13', '17:32:39', 'deepika@gmail.com'),
(123, 123, 18, 'Open 4', 'Raised', '2024-06-13', '18:45:24', 'bhavi@praajasv.com'),
(124, 124, 18, 'Open 4', 'Raised', '2024-06-13', '18:46:06', 'bhavi@praajasv.com'),
(125, 125, 20, 'not interested', 'NOT INTERWSTED ', '2024-06-14', '12:02:51', 'krupali1@praajasv.com'),
(126, 126, 16, 'Open 1', 'Raised', '2024-06-14', '12:11:25', 'krupali1@praajasv.com'),
(127, 127, 15, 'Open 1', 'Raised', '2024-06-14', '12:13:19', 'krupali1@praajasv.com'),
(128, 128, 16, 'Open 1', 'THINK AND GIVE ANS', '2024-06-14', '12:35:57', 'bhaumik@praajasv.com'),
(129, 129, 20, 'Open 1', 'CUT THE CALL', '2024-06-14', '12:23:30', 'krupali1@praajasv.com'),
(130, 130, 20, 'Open 1', 'RNR', '2024-06-14', '12:24:33', 'krupali1@praajasv.com'),
(131, 131, 20, 'not interested', 'NEET CLEAR WANT TO GO IN MBBS ', '2024-06-14', '12:26:19', 'krupali1@praajasv.com'),
(132, 132, 20, 'Open 1', 'wrong  number\r\n', '2024-06-14', '12:30:03', 'krupali1@praajasv.com'),
(133, 133, 20, 'Open 1', 'RNR', '2024-06-14', '12:30:35', 'krupali1@praajasv.com'),
(134, 134, 20, 'Open 1', 'GPSC ENGLISH MEDIUM THINK AND GIVE ANS ', '2024-06-14', '12:33:29', 'krupali1@praajasv.com'),
(135, 135, 20, 'Open 1', 'wrong number', '2024-06-14', '12:37:08', 'krupali1@praajasv.com'),
(136, 136, 20, 'Open 4', 'RNR\r\n', '2024-06-14', '12:42:58', 'krupali1@praajasv.com'),
(137, 137, 20, 'Open 1', 'fees problem,   \r\np.g  not possible\r\ndue to financial problems ', '2024-06-14', '12:46:33', 'krupali1@praajasv.com'),
(138, 138, 20, 'Open 1', 'RNR', '2024-06-14', '12:51:00', 'krupali1@praajasv.com'),
(139, 139, 20, 'Open 1', 'RNR', '2024-06-14', '12:55:42', 'krupali1@praajasv.com'),
(140, 140, 20, 'admission open', 'demo done in upsc', '2024-06-14', '13:09:26', 'krupali1@praajasv.com'),
(141, 141, 20, 'Open 1', 'CUT THE CALL', '2024-06-14', '13:12:09', 'krupali1@praajasv.com'),
(142, 142, 20, 'Open 1', 'AFTER AMC EXAM', '2024-06-14', '13:13:38', 'krupali1@praajasv.com'),
(143, 143, 20, 'Open 1', 'SWITCHED OFF ', '2024-06-14', '13:15:18', 'krupali1@praajasv.com'),
(144, 144, 20, 'Open 1', 'CUT THE CALL', '2024-06-14', '13:16:53', 'krupali1@praajasv.com'),
(145, 145, 20, 'not interested', 'WRONG NUMBER', '2024-06-14', '13:19:25', 'krupali1@praajasv.com'),
(146, 146, 20, 'Open 1', 'EVENING BATCH ONLY ', '2024-06-14', '13:24:46', 'krupali1@praajasv.com'),
(147, 147, 20, 'Open 1', 'Raised', '2024-06-14', '13:30:47', 'krupali1@praajasv.com'),
(148, 148, 20, 'Open 1', 'Raised', '2024-06-14', '13:33:09', 'krupali1@praajasv.com'),
(149, 149, 20, 'Open 1', 'Raised', '2024-06-14', '13:35:23', 'krupali1@praajasv.com'),
(150, 150, 20, 'Open 1', 'RNR', '2024-06-14', '13:37:55', 'krupali1@praajasv.com'),
(151, 151, 20, 'Open 1', 'Raised', '2024-06-14', '13:41:00', 'krupali1@praajasv.com'),
(152, 152, 20, 'Open 1', 'Raised', '2024-06-14', '13:44:58', 'krupali1@praajasv.com'),
(153, 153, 18, 'Open 4', 'Raised', '2024-06-14', '14:02:29', ''),
(154, 154, 22, 'Confirmation Done', 'SHE WILL DONE ADMISSION ON MONDAY', '2024-06-16', '15:58:26', 'gayatri@praajasv.com'),
(155, 155, 20, 'not interested', '1000 REFUND DUE TO SOME PERSONAL REASON ', '2024-06-14', '14:44:26', 'KRUPALI1@PRAAJASV.COM'),
(156, 156, 20, 'Open 1', 'IN 60000 WANT LONG TERM BATCH ', '2024-06-14', '14:46:19', 'KRUPALI1@PRAAJASV.COM'),
(157, 157, 20, 'Open 1', 'IN ONE OR TWO DAYS COME TO ACADEMY FOR DEMO ', '2024-06-14', '14:47:49', 'KRUPALI1@PRAAJASV.COM'),
(158, 158, 22, 'Open 3', 'HE   WILL COME AFTER A 1 MONTH', '2024-06-16', '15:57:36', 'gayatri@praajasv.com'),
(159, 159, 20, 'Open 1', 'OUT OF AHMEDABAD AFTER TWO DAYS COME TO ACADEMY FOR DEMO ', '2024-06-14', '14:51:45', 'KRUPALI1@PRAAJASV.COM'),
(160, 160, 20, 'Open 1', 'Raised', '2024-06-14', '14:52:45', 'KRUPALI1@PRAAJASV.COM'),
(161, 161, 20, 'Open 1', 'RNR', '2024-06-14', '15:03:52', 'KRUPALI1@PRAAJASV.COM'),
(162, 162, 20, 'Open 4', 'DEMO GOING ON ', '2024-06-14', '15:05:47', 'KRUPALI1@PRAAJASV.COM'),
(163, 163, 20, 'Open 1', 'not intrested\r\nbut conuince for gpsc batch think & give ans tomorrow \r\n', '2024-06-14', '15:02:59', 'KRUPALI1@PRAAJASV.COM'),
(164, 164, 20, 'Open 4', 'Raised', '2024-06-14', '14:59:38', 'KRUPALI1@PRAAJASV.COM'),
(165, 165, 20, 'Open 1', 'RNR', '2024-06-14', '15:04:08', 'KRUPALI1@PRAAJASV.COM'),
(166, 166, 8, 'Open 1', 'Raised', '2024-06-14', '15:02:49', 'shagun@gmail.com'),
(167, 167, 8, 'Open 1', 'Raised', '2024-06-14', '15:04:49', 'shagun@gmail.com'),
(168, 168, 20, 'Open 1', 'RNR', '2024-06-14', '15:09:48', 'KRUPALI1@PRAAJASV.COM'),
(169, 169, 20, 'Open 1', 'BUSY', '2024-06-14', '15:08:30', 'KRUPALI1@PRAAJASV.COM'),
(170, 170, 20, 'Open 4', 'RNR', '2024-06-14', '15:12:08', 'KRUPALI1@PRAAJASV.COM'),
(171, 171, 20, 'Open 1', 'DUE TO JOB AND LAST YEAR OF COLLEGE ', '2024-06-14', '15:13:16', 'KRUPALI1@PRAAJASV.COM'),
(172, 172, 20, 'Open 2', 'IN JULY INTERESTED', '2024-06-14', '15:16:40', 'KRUPALI1@PRAAJASV.COM'),
(173, 173, 20, 'Open 1', 'RNR', '2024-06-14', '15:16:53', 'KRUPALI1@PRAAJASV.COM'),
(174, 174, 20, 'Open 1', 'RNR', '2024-06-14', '15:19:30', 'KRUPALI1@PRAAJASV.COM'),
(175, 175, 11, 'admission open', 'Raised', '2024-06-14', '15:24:27', 'dipti@praajasv.com'),
(176, 176, 12, 'Open 1', 'Raised', '2024-06-14', '15:25:36', 'khushbu@gmail.com'),
(177, 177, 12, 'Open 4', 'Raised', '2024-06-14', '15:27:00', 'khushbu@gmail.com'),
(178, 178, 20, 'Open 1', 'RNR', '2024-06-14', '15:27:21', 'KRUPALI1@PRAAJASV.COM'),
(179, 179, 20, 'Open 1', 'BUSY', '2024-06-14', '15:27:53', 'KRUPALI1@PRAAJASV.COM'),
(180, 180, 20, 'Open 1', 'POSTPONE ADMISSION DUE TO FAMILY PROBLEMS  \r\n', '2024-06-14', '16:19:17', 'KRUPALI1@PRAAJASV.COM'),
(181, 181, 20, 'Open 4', 'Raised', '2024-06-14', '15:31:28', 'KRUPALI1@PRAAJASV.COM'),
(182, 182, 22, 'admission close', 'CCE MAINS LIVE ADMISSSION DONE', '2024-06-14', '16:49:49', 'gayatri@praajasv.com'),
(183, 183, 6, 'Open 1', 'Raised', '2024-06-14', '15:48:04', ''),
(184, 184, 20, 'Open 4', 'Raised', '2024-06-14', '16:06:39', 'krupali1@praajasv.com'),
(185, 185, 20, 'Open 4', 'Raised', '2024-06-14', '16:07:58', 'krupali1@praajasv.com'),
(186, 186, 15, 'Open 1', 'Raised', '2024-06-14', '16:09:33', 'krupali1@praajasv.com'),
(187, 187, 20, 'Confirmation Done', 'Raised', '2024-06-14', '16:12:09', 'krupali1@praajasv.com'),
(188, 188, 20, 'Open 1', 'RNR', '2024-06-14', '16:14:44', 'krupali1@praajasv.com'),
(189, 189, 20, 'Open 1', 'RNR', '2024-06-14', '16:16:05', 'krupali1@praajasv.com'),
(190, 190, 20, 'not interested', 'Raised', '2024-06-14', '16:17:08', 'krupali1@praajasv.com'),
(191, 191, 20, 'Open 4', 'Raised', '2024-06-14', '16:18:28', 'krupali1@praajasv.com'),
(192, 192, 20, 'Open 3', 'small baby so, not possible so not intrested', '2024-06-14', '16:24:10', 'KRUPALI1@PRAAJASV.COM'),
(193, 193, 20, 'Open 3', 'cut the call', '2024-06-14', '16:23:27', 'KRUPALI1@PRAAJASV.COM'),
(194, 194, 20, 'Open 1', 'WRONG NUMBER\r\n', '2024-06-14', '16:26:07', 'KRUPALI1@PRAAJASV.COM'),
(195, 195, 20, 'Open 1', 'RNR', '2024-06-14', '16:35:33', 'krupali1@praajasv.com'),
(196, 196, 20, 'not interested', 'INTERESTED IN ABHAYAM ACADEMY BHAVNAGAR ', '2024-06-14', '16:38:30', 'krupali1@praajasv.com'),
(197, 197, 20, 'Open 1', 'RNR', '2024-06-14', '16:41:58', 'KRUPALI1@PRAAJASV.COM'),
(198, 198, 11, 'Open 1', 'Raised', '2024-06-14', '16:41:47', 'dipti@praajasv.com'),
(199, 199, 11, 'Open 1', 'Raised', '2024-06-14', '16:43:14', 'dipti@praajasv.com'),
(200, 200, 20, 'Open 1', 'RNR', '2024-06-14', '16:44:22', 'KRUPALI1@PRAAJASV.COM'),
(201, 201, 20, 'not interested', 'ONLY INQUARY ', '2024-06-14', '16:50:35', 'krupali1@praajasv.com'),
(202, 202, 11, 'Open 1', 'Raised', '2024-06-14', '16:52:17', 'dipti@praajasv.com'),
(203, 203, 11, 'Open 1', 'Raised', '2024-06-14', '16:54:06', 'dipti@praajasv.com'),
(204, 204, 11, 'Open 1', 'Raised', '2024-06-14', '16:56:02', 'dipti@praajasv.com'),
(205, 205, 20, 'Open 4', 'Raised', '2024-06-14', '17:16:38', 'krupali1@praajasv.com'),
(206, 206, 20, 'Open 1', 'RNR', '2024-06-14', '17:19:35', 'krupali1@praajasv.com'),
(207, 207, 8, 'Open 1', 'Raised', '2024-06-14', '17:28:51', ''),
(208, 208, 8, 'Open 1', 'Raised', '2024-06-14', '17:32:15', 'shagun@gmail.com'),
(209, 209, 8, 'Open 1', 'Raised', '2024-06-14', '17:33:13', 'shagun@gmail.com'),
(210, 210, 20, 'Open 1', 'INTERESTED TO AHMEDABAD ', '2024-06-14', '17:40:33', 'krupali1@praajasv.com'),
(211, 211, 20, 'Open 4', 'DEMO GOING ON ', '2024-06-14', '17:43:02', 'krupali1@praajasv.com'),
(212, 212, 20, 'Open 1', 'CUT THE CALL ', '2024-06-14', '17:45:16', 'krupali1@praajasv.com'),
(213, 213, 20, 'Open 1', 'RNR', '2024-06-14', '17:46:33', 'KRUPALI1@PRAAJASV.COM'),
(214, 214, 20, 'Open 1', 'RNR', '2024-06-14', '17:49:23', 'krupali1@praajasv.com'),
(215, 215, 20, 'Open 1', 'CALL CUT', '2024-06-14', '17:57:59', 'KRUPALI1@PRAAJASV.COM'),
(216, 216, 20, 'Open 1', 'DISTANCE PROBLEAM ', '2024-06-14', '17:57:08', 'krupali1@praajasv.com'),
(217, 217, 22, 'Open 3', 'HE GO TO NATIVE PLACE SO THINK ABOUT NEXT BATCH', '2024-06-16', '15:56:00', 'gayatri@praajasv.com'),
(218, 218, 20, 'Open 1', 'RNR', '2024-06-14', '18:03:44', 'KRUPALI1@PRAAJASV.COM'),
(219, 219, 22, 'Open 3', 'THINK AND REPLY AFTER SOME TIMES', '2024-06-16', '15:54:36', 'gayatri@praajasv.com'),
(220, 220, 6, 'not interested', 'Raised', '2024-06-14', '18:05:05', 'deepika@gmail.com'),
(221, 221, 20, 'Open 1', 'RNR', '2024-06-14', '18:12:22', 'KRUPALI1@PRAAJASV.COM'),
(222, 222, 22, 'Open 1', 'NOT RECV CALL', '2024-06-16', '16:24:42', 'gayatri@praajasv.com'),
(223, 223, 20, 'ADMISSION CLOSE', 'Raised', '2024-06-14', '18:13:02', 'krupali1@praajasv.com'),
(224, 224, 22, 'Open 3', 'HE IS HOSPITALIZE SO, HE COME AFTER 1 MONTH', '2024-06-16', '15:52:43', 'gayatri@praajasv.com'),
(225, 225, 20, 'Open 1', 'Raised', '2024-06-14', '18:15:57', 'krupali1@praajasv.com'),
(226, 226, 20, 'Open 4', 'Raised', '2024-06-14', '18:17:11', 'krupali1@praajasv.com'),
(227, 227, 22, 'not interested', '1000/- REFUND', '2024-06-16', '15:51:44', 'gayatri@praajasv.com'),
(228, 228, 22, 'not interested', 'DO NOT CALL', '2024-06-16', '15:51:08', 'gayatri@praajasv.com'),
(229, 229, 20, 'Open 1', 'RNR', '2024-06-14', '18:22:10', 'KRUPALI1@PRAAJASV.COM'),
(230, 230, 22, 'Open 1', 'NOT RECEIVE CALL', '2024-06-16', '15:49:02', 'gayatri@praajasv.com'),
(231, 231, 22, 'Open 1', 'NOT RECEIVE CALL', '2024-06-16', '15:48:23', 'gayatri@praajasv.com'),
(232, 232, 20, 'Open 1', 'RNR', '2024-06-14', '18:28:06', 'KRUPALI1@PRAAJASV.COM'),
(233, 233, 22, 'not interested', 'Raised', '2024-06-14', '18:27:58', 'gayatri@praajasv.com'),
(234, 234, 20, 'Open 1', 'RNR', '2024-06-14', '18:33:43', 'KRUPALI1@PRAAJASV.COM'),
(235, 235, 20, 'Open 1', 'RNR', '2024-06-14', '18:36:45', 'KRUPALI1@PRAAJASV.COM'),
(236, 236, 20, 'Open 4', 'Raised', '2024-06-14', '18:44:06', 'krupali1@praajasv.com'),
(237, 237, 20, 'Open 1', 'BUSY', '2024-06-14', '18:46:07', 'krupali1@praajasv.com'),
(238, 238, 20, 'Open 4', 'Raised', '2024-06-14', '18:48:02', 'krupali1@praajasv.com'),
(239, 239, 20, 'Open 4', 'Raised', '2024-06-14', '18:49:51', 'krupali1@praajasv.com'),
(240, 240, 20, 'Open 3', 'HE WANTS TO EVENING BATCH', '2024-06-14', '18:50:47', 'KRUPALI1@PRAAJASV.COM'),
(241, 241, 20, 'Open 1', 'JUST 12TH COMPLETE CONVINCE FOR UPSC THINK &GIVE ANS ', '2024-06-14', '18:51:58', 'krupali1@praajasv.com'),
(242, 242, 20, 'Open 1', 'RNR', '2024-06-14', '18:56:25', 'KRUPALI1@PRAAJASV.COM'),
(243, 243, 20, 'Open 1', 'Raised', '2024-06-14', '18:56:47', 'krupali1@praajasv.com'),
(244, 244, 20, 'Open 1', 'Raised', '2024-06-15', '11:20:05', 'krupali1@praajasv.com'),
(245, 245, 20, 'Open 1', 'INTERESTED TO AHMEDABAD BRANCH ', '2024-06-15', '11:23:00', 'krupali1@praajasv.com'),
(246, 246, 20, 'Open 1', 'Raised', '2024-06-15', '11:26:37', 'krupali1@praajasv.com'),
(247, 247, 20, 'Open 1', 'Raised', '2024-06-15', '11:28:18', 'krupali1@praajasv.com'),
(248, 248, 20, 'Open 4', 'Raised', '2024-06-15', '11:32:36', 'krupali1@praajasv.com'),
(249, 249, 20, 'Open 1', 'INTERESTED IN AHMEDABAD BRANCH ', '2024-06-15', '11:36:22', 'krupali1@praajasv.com'),
(250, 250, 20, 'Open 4', 'Raised', '2024-06-15', '11:40:17', 'krupali1@praajasv.com'),
(251, 251, 20, 'Open 1', 'Raised', '2024-06-15', '11:44:58', 'krupali1@praajasv.com'),
(252, 252, 22, 'Open 1', 'NOT  RECEIVE CALL', '2024-06-16', '15:46:44', 'gayatri@praajasv.com'),
(253, 253, 22, 'Open 3', 'PARENTS NE PUCHHINE KESE', '2024-06-16', '15:45:52', 'gayatri@praajasv.com'),
(254, 254, 22, 'Open 1', 'NOT SURE', '2024-06-16', '15:44:44', 'gayatri@praajasv.com'),
(255, 255, 22, 'Open 1', 'CALL NOT RECEIVE', '2024-06-16', '15:43:18', 'gayatri@praajasv.com'),
(256, 256, 22, 'Open 1', 'Raised', '2024-06-15', '12:32:19', 'gayatri@praajasv.com'),
(257, 257, 20, 'Open 4', 'Raised', '2024-06-15', '12:47:01', ''),
(258, 258, 22, 'Open 1', 'Raised', '2024-06-15', '12:56:50', 'gayatri@praajasv.com'),
(259, 259, 22, 'Open 1', 'Raised', '2024-06-15', '12:59:16', 'gayatri@praajasv.com'),
(260, 260, 22, 'Open 1', 'NOT RECEIVE THE CALL ', '2024-06-16', '15:39:30', 'gayatri@praajasv.com'),
(261, 261, 22, 'Open 1', 'Raised', '2024-06-15', '13:05:18', 'gayatri@praajasv.com'),
(262, 262, 22, 'Open 1', 'JOB TIME IS  10 TO 6    , SO NOT COMMING', '2024-06-16', '15:38:17', 'gayatri@praajasv.com'),
(263, 263, 22, 'not interested', 'JOIN ANOTHER CLASS', '2024-06-16', '15:36:20', 'gayatri@praajasv.com'),
(264, 264, 22, 'Open 1', 'NOT SURE , LAST CALL ON13/06/2024 CUT THE CALL', '2024-06-16', '15:35:27', 'gayatri@praajasv.com'),
(265, 265, 22, 'Open 1', '1000 DONE BUT ADMISSION NOT DONE', '2024-06-16', '15:34:25', 'gayatri@praajasv.com'),
(266, 266, 22, 'Open 1', 'NOT SURE', '2024-06-16', '15:32:41', 'gayatri@praajasv.com'),
(267, 267, 22, 'Open 1', 'Raised', '2024-06-15', '13:29:35', 'gayatri@praajasv.com'),
(268, 268, 22, 'Open 1', 'NOT SURE COME AFTER 2-4 DAYS , ', '2024-06-16', '15:30:46', 'gayatri@praajasv.com'),
(269, 269, 22, 'ADMISSION CLOSE', 'ADMISSION DONE IN OFFLINE BATCH', '2024-06-16', '15:25:49', 'gayatri@praajasv.com'),
(270, 270, 8, 'Open 1', 'Raised', '2024-06-15', '14:12:24', ''),
(271, 271, 8, 'Open 1', 'Raised', '2024-06-15', '14:16:27', 'shagun@gmail.com'),
(272, 272, 22, 'not interested', 'HE NOT RECV CALL', '2024-06-16', '15:22:53', 'gayatri@praajasv.com'),
(273, 273, 22, 'Open 3', 'TIME IS NOT SET', '2024-06-16', '15:22:03', 'gayatri@praajasv.com'),
(274, 274, 22, 'ADMISSION CLOSE', 'ADMISSION DONE IN OFFLINE BATCH\r\n', '2024-06-16', '15:17:11', 'gayatri@praajasv.com'),
(275, 275, 22, 'not interested', 'HE NOT RECEIVE ANY CALL', '2024-06-16', '15:16:14', 'gayatri@praajasv.com'),
(276, 276, 22, 'not interested', 'FEES REFUND DONE', '2024-06-16', '15:14:58', 'gayatri@praajasv.com'),
(277, 277, 22, 'ADMISSION CLOSE', 'Raised', '2024-06-15', '14:56:00', 'gayatri@praajasv.com'),
(278, 278, 22, 'Open 3', 'HE SAY TIME IS NOT CONVINNIENT BECAUSE OF JOB TIME', '2024-06-16', '15:13:26', 'gayatri@praajasv.com'),
(279, 279, 22, 'Open 1', 'NOT RECEIVE CALL3-4 TIME', '2024-06-16', '15:11:51', 'gayatri@praajasv.com'),
(280, 280, 22, 'Open 1', 'Raised', '2024-06-15', '15:01:29', 'gayatri@praajasv.com'),
(281, 281, 22, 'not interested', 'HE SAY HE IS NOT INTRESTED', '2024-06-16', '15:10:19', 'gayatri@praajasv.com'),
(282, 282, 22, 'ADMISSION CLOSE', 'ADMISSION DONE IN OFFLENE BATCH', '2024-06-16', '15:09:28', 'gayatri@praajasv.com'),
(283, 283, 22, 'not interested', 'HE THINK HE IS NOT QULIFIED IN MAINS', '2024-06-16', '15:08:05', 'gayatri@praajasv.com'),
(284, 284, 11, 'not interested', 'Raised', '2024-06-15', '15:13:50', 'dipti@praajasv.com'),
(285, 285, 11, 'Open 1', 'Raised', '2024-06-15', '15:20:46', 'dipti@praajasv.com'),
(286, 286, 11, 'Open 1', 'Raised', '2024-06-15', '15:22:01', 'dipti@praajasv.com'),
(287, 287, 11, 'admission open', 'Raised', '2024-06-15', '15:24:46', 'dipti@praajasv.com'),
(288, 288, 8, 'Open 1', 'Raised', '2024-06-15', '15:38:49', ''),
(289, 289, 8, 'Open 1', 'Raised', '2024-06-15', '16:24:51', ''),
(290, 290, 6, 'not interested', 'Raised', '2024-06-15', '16:36:05', 'deepika@gmail.com'),
(291, 291, 6, 'not interested', 'Raised', '2024-06-15', '16:37:27', 'deepika@gmail.com'),
(292, 292, 6, 'not interested', 'Raised', '2024-06-15', '16:39:56', 'deepika@gmail.com'),
(293, 293, 6, 'Open 1', 'Raised', '2024-06-15', '16:42:28', 'deepika@gmail.com'),
(294, 294, 6, 'not interested', 'Raised', '2024-06-15', '16:45:47', 'deepika@gmail.com'),
(295, 295, 6, 'Open 1', 'Raised', '2024-06-15', '17:05:09', 'deepika@gmail.com'),
(296, 296, 22, 'ADMISSION CLOSE', 'ONLINE ADMISSION DONE', '2024-06-16', '15:06:50', 'gayatri@praajasv.com'),
(297, 297, 22, 'not interested', 'NOT RECEIVE ANY CALL,', '2024-06-16', '15:03:16', 'gayatri@praajasv.com'),
(298, 298, 22, 'ADMISSION CLOSE', 'ADMISSION DONE  IN OFFLENE BATCH', '2024-06-16', '15:01:27', 'gayatri@praajasv.com'),
(299, 299, 22, 'Open 1', 'NOT SURE ', '2024-06-16', '15:00:32', 'gayatri@praajasv.com'),
(300, 300, 22, 'VISIT DONE ', 'TALK WITH HER FATHER HE WILL DECID AND COME AFTER ', '2024-06-16', '14:59:22', 'gayatri@praajasv.com'),
(301, 301, 22, 'Open 1', 'NOT RECEIVE CALL 2-3 TIMES', '2024-06-16', '14:57:54', 'gayatri@praajasv.com'),
(302, 302, 22, 'VISIT DONE ', 'ADMISSION  DONE IN AHMEDABAD BRANCH', '2024-06-16', '14:56:31', 'gayatri@praajasv.com'),
(303, 303, 22, 'ADMISSION CLOSE', 'ADMISSSION DONE OFFLINE BATCH', '2024-06-16', '14:55:39', 'gayatri@praajasv.com'),
(304, 304, 22, 'not interested', 'CUT THE CALL 2-3 TIME', '2024-06-16', '14:54:40', 'gayatri@praajasv.com'),
(305, 305, 22, 'Open 1', 'CALL NOT RECEIVE', '2024-06-16', '14:52:59', 'gayatri@praajasv.com'),
(311, 311, 8, 'Open 1', 'Raised', '2024-06-16', '10:28:54', 'shagun@gmail.com'),
(312, 312, 18, 'Confirmation Done', 'Raised', '2024-06-16', '11:36:37', 'bhavi@praajasv.com'),
(313, 313, 18, 'ADMISSION CLOSE', 'Raised', '2024-06-16', '11:47:38', 'bhavi@praajasv.com'),
(314, 314, 18, 'ADMISSION CLOSE', 'Raised', '2024-06-16', '11:55:27', 'bhavi@praajasv.com'),
(315, 315, 18, 'ADMISSION CLOSE', 'Raised', '2024-06-16', '12:33:41', 'bhavi@praajasv.com'),
(316, 316, 12, 'ADMISSION CLOSE', 'Raised', '2024-06-16', '12:51:57', 'khushbu@gmail.com'),
(317, 317, 22, 'ADMISSION CLOSE', 'ONLINE DONE', '2024-06-16', '14:51:46', 'gayatri@praajasv.com'),
(318, 318, 22, 'Open 1', 'come after 2-3 days', '2024-06-16', '14:47:50', 'gayatri@praajasv.com'),
(319, 319, 22, 'Open 1', 'Raised', '2024-06-16', '16:01:16', 'gayatri@praajasv.com'),
(320, 320, 22, 'Open 1', 'Raised', '2024-06-16', '16:11:28', 'gayatri@praajasv.com'),
(321, 321, 22, 'Open 1', 'Raised', '2024-06-16', '16:12:36', 'gayatri@praajasv.com'),
(322, 322, 22, 'Open 1', 'Raised', '2024-06-16', '16:58:47', 'gayatri@praajasv.com'),
(323, 323, 22, 'Open 1', 'Raised', '2024-06-16', '17:00:26', 'gayatri@praajasv.com'),
(324, 324, 22, 'Open 1', 'Raised', '2024-06-16', '17:01:42', 'gayatri@praajasv.com'),
(325, 325, 22, 'Open 1', 'Raised', '2024-06-16', '17:02:49', 'gayatri@praajasv.com'),
(326, 326, 22, 'Open 1', 'Raised', '2024-06-16', '17:04:35', 'gayatri@praajasv.com'),
(327, 327, 22, 'Open 1', 'Raised', '2024-06-16', '17:06:19', 'gayatri@praajasv.com'),
(328, 328, 22, 'Open 1', 'Raised', '2024-06-16', '17:08:51', 'gayatri@praajasv.com'),
(329, 329, 22, 'Open 1', 'Raised', '2024-06-16', '17:10:28', 'gayatri@praajasv.com'),
(330, 330, 22, 'Open 1', 'Raised', '2024-06-16', '17:12:15', 'gayatri@praajasv.com'),
(331, 331, 22, 'Open 1', 'Raised', '2024-06-16', '17:13:51', 'gayatri@praajasv.com'),
(332, 332, 22, 'Open 1', 'Raised', '2024-06-16', '17:15:01', 'gayatri@praajasv.com'),
(333, 333, 22, 'Open 1', 'Raised', '2024-06-16', '17:17:01', 'gayatri@praajasv.com'),
(334, 334, 8, 'Open 1', 'Raised', '2024-06-16', '17:18:04', 'shagun@gmail.com'),
(335, 335, 22, 'Open 1', 'Raised', '2024-06-16', '17:18:13', 'gayatri@praajasv.com'),
(336, 336, 22, 'Open 1', 'Raised', '2024-06-16', '17:20:06', 'gayatri@praajasv.com'),
(337, 337, 8, 'Open 1', 'Raised', '2024-06-16', '17:21:11', 'shagun@gmail.com'),
(338, 338, 22, 'Open 1', 'Raised', '2024-06-16', '17:22:38', 'gayatri@praajasv.com'),
(339, 339, 8, 'Open 1', 'Raised', '2024-06-16', '17:24:42', 'shagun@gmail.com'),
(340, 340, 22, 'Open 1', 'Raised', '2024-06-16', '17:26:43', 'gayatri@praajasv.com'),
(341, 341, 8, 'Open 1', 'Raised', '2024-06-16', '17:26:50', 'shagun@gmail.com'),
(342, 342, 22, 'Open 1', 'Raised', '2024-06-16', '17:28:01', 'gayatri@praajasv.com'),
(343, 343, 22, 'Open 1', 'Raised', '2024-06-16', '17:29:23', 'gayatri@praajasv.com'),
(344, 344, 22, 'Open 1', 'Raised', '2024-06-16', '17:32:10', 'gayatri@praajasv.com'),
(345, 345, 8, 'Open 1', 'Raised', '2024-06-16', '17:32:27', 'shagun@gmail.com'),
(346, 346, 22, 'Open 1', 'Raised', '2024-06-16', '17:33:44', 'gayatri@praajasv.com'),
(347, 347, 22, 'Open 1', 'Raised', '2024-06-16', '17:35:11', 'gayatri@praajasv.com'),
(348, 348, 22, 'Open 1', 'Raised', '2024-06-16', '17:37:55', 'gayatri@praajasv.com'),
(349, 349, 22, 'Open 1', 'Raised', '2024-06-16', '17:40:18', 'gayatri@praajasv.com'),
(350, 350, 22, 'Open 1', 'Raised', '2024-06-16', '17:42:06', 'gayatri@praajasv.com'),
(351, 351, 22, 'Open 1', 'Raised', '2024-06-16', '17:43:43', 'gayatri@praajasv.com'),
(352, 352, 22, 'Open 1', 'Raised', '2024-06-16', '17:46:34', 'gayatri@praajasv.com'),
(353, 353, 22, 'Open 1', 'Raised', '2024-06-16', '17:48:52', 'gayatri@praajasv.com'),
(354, 354, 22, 'Open 1', 'Raised', '2024-06-16', '17:50:11', 'gayatri@praajasv.com'),
(355, 355, 22, 'Open 1', 'Raised', '2024-06-16', '17:51:36', 'gayatri@praajasv.com'),
(356, 356, 8, 'Open 1', 'Raised', '2024-06-16', '18:03:54', 'shagun@gmail.com'),
(357, 357, 18, 'ADMISSION CLOSE', 'ADMISSION DONE', '2024-06-17', '16:47:06', 'bhavi@praajasv.com'),
(358, 358, 6, 'Open 1', 'Raised', '2024-06-17', '13:24:17', ''),
(359, 359, 8, 'Open 1', 'Raised', '2024-06-17', '13:24:36', 'shagun@gmail.com'),
(360, 360, 8, 'Open 1', 'Raised', '2024-06-17', '13:27:04', 'shagun@gmail.com'),
(361, 361, 8, 'Open 1', 'Raised', '2024-06-17', '17:22:38', 'shagun@gmail.com'),
(362, 362, 8, 'Open 1', 'Raised', '2024-06-17', '17:31:00', 'shagun@gmail.com'),
(363, 363, 8, 'Open 1', 'Raised', '2024-06-17', '17:57:45', 'shagun@gmail.com'),
(364, 364, 8, 'Open 1', 'Raised', '2024-06-17', '17:59:22', 'shagun@gmail.com'),
(365, 365, 11, 'Open 1', 'Raised', '2024-06-18', '08:10:58', 'dipti@praajasv.com'),
(366, 366, 11, 'ADMISSION CLOSE', 'Raised', '2024-06-18', '08:13:09', 'dipti@praajasv.com'),
(367, 367, 11, 'not interested', 'Raised', '2024-06-18', '08:15:03', 'dipti@praajasv.com'),
(368, 368, 11, 'Open 1', 'Raised', '2024-06-18', '08:16:47', 'dipti@praajasv.com'),
(369, 369, 11, 'Open 4', 'Raised', '2024-06-18', '08:21:06', 'dipti@praajasv.com'),
(370, 370, 11, 'Open 1', 'Raised', '2024-06-18', '08:23:08', 'dipti@praajasv.com'),
(371, 371, 11, 'Open 1', 'Raised', '2024-06-18', '08:25:41', 'dipti@praajasv.com'),
(372, 372, 11, 'ADMISSION CLOSE', 'Raised', '2024-06-18', '08:28:43', 'dipti@praajasv.com'),
(373, 373, 11, 'Open 4', 'Raised', '2024-06-18', '08:32:05', 'dipti@praajasv.com'),
(374, 374, 11, 'Open 1', 'Raised', '2024-06-18', '08:37:51', 'dipti@praajasv.com'),
(375, 375, 11, 'Open 1', 'Raised', '2024-06-18', '08:43:05', 'dipti@praajasv.com'),
(376, 376, 11, 'Open 1', 'Raised', '2024-06-18', '08:46:37', 'dipti@praajasv.com'),
(377, 377, 11, 'Open 1', 'Raised', '2024-06-18', '09:29:22', 'dipti@praajasv.com'),
(378, 378, 11, 'Open 1', 'Raised', '2024-06-18', '09:31:20', 'dipti@praajasv.com'),
(379, 379, 11, 'Open 4', 'Raised', '2024-06-18', '09:36:07', 'dipti@praajasv.com'),
(380, 380, 11, 'Open 1', 'Raised', '2024-06-18', '09:38:40', 'dipti@praajasv.com'),
(381, 381, 11, 'VISIT DONE ', 'Raised', '2024-06-18', '09:54:55', 'dipti@praajasv.com'),
(382, 382, 11, 'Open 4', 'Raised', '2024-06-18', '10:00:55', 'dipti@praajasv.com'),
(383, 383, 11, 'Open 1', 'Raised', '2024-06-18', '10:42:52', 'dipti@praajasv.com'),
(384, 384, 22, 'Open 1', 'Raised', '2024-06-18', '10:44:13', 'gayatri@praajasv.com'),
(385, 385, 22, 'Open 1', 'Raised', '2024-06-18', '10:50:53', 'gayatri@praajasv.com'),
(386, 386, 11, 'Open 1', 'Raised', '2024-06-18', '10:51:49', 'dipti@praajasv.com'),
(387, 387, 11, 'Open 1', 'Raised', '2024-06-18', '10:55:18', 'dipti@praajasv.com'),
(388, 388, 22, 'Open 1', 'Raised', '2024-06-18', '11:01:26', 'gayatri@praajasv.com'),
(389, 389, 11, 'Open 4', 'Raised', '2024-06-18', '11:05:30', 'dipti@praajasv.com'),
(390, 390, 11, 'Open 1', 'Raised', '2024-06-18', '11:08:52', 'dipti@praajasv.com'),
(391, 391, 11, 'Open 1', 'Raised', '2024-06-18', '11:26:31', 'dipti@praajasv.com'),
(392, 392, 11, 'Open 1', 'Raised', '2024-06-18', '11:28:36', 'dipti@praajasv.com'),
(393, 393, 11, 'ADMISSION CLOSE', 'Raised', '2024-06-18', '11:33:22', 'dipti@praajasv.com'),
(394, 394, 11, 'ADMISSION CLOSE', 'Raised', '2024-06-18', '11:35:44', 'dipti@praajasv.com'),
(395, 395, 11, 'Open 4', 'Raised', '2024-06-18', '11:36:45', 'dipti@praajasv.com'),
(396, 396, 11, 'Open 1', 'Raised', '2024-06-18', '11:39:09', 'dipti@praajasv.com'),
(397, 397, 11, 'Open 1', 'Raised', '2024-06-18', '11:42:27', 'dipti@praajasv.com'),
(398, 398, 11, 'Open 1', 'Raised', '2024-06-18', '11:44:06', 'dipti@praajasv.com'),
(399, 399, 11, 'Open 1', 'Raised', '2024-06-18', '11:46:11', 'dipti@praajasv.com'),
(400, 400, 11, 'Open 1', 'Raised', '2024-06-18', '11:55:19', 'dipti@praajasv.com'),
(401, 401, 11, 'Open 1', 'Raised', '2024-06-18', '11:56:57', 'dipti@praajasv.com'),
(402, 402, 11, 'Open 1', 'Raised', '2024-06-18', '11:58:43', 'dipti@praajasv.com'),
(403, 403, 11, 'Open 1', 'Raised', '2024-06-18', '12:00:01', 'dipti@praajasv.com'),
(404, 404, 11, 'Open 1', 'Raised', '2024-06-18', '12:02:12', 'dipti@praajasv.com'),
(405, 405, 11, 'Open 1', 'Raised', '2024-06-18', '12:05:26', 'dipti@praajasv.com'),
(406, 406, 7, 'ADMISSION CLOSE', 'Raised', '2024-06-18', '12:08:26', 'anjali@gmail.com'),
(407, 407, 11, 'Open 1', 'Raised', '2024-06-18', '12:08:38', 'dipti@praajasv.com'),
(408, 408, 7, 'ADMISSION CLOSE', 'Raised', '2024-06-18', '12:11:04', 'anjali@gmail.com'),
(409, 409, 11, 'Open 1', 'Raised', '2024-06-18', '12:11:58', 'dipti@praajasv.com'),
(410, 410, 7, 'VISIT DONE ', 'Raised', '2024-06-18', '12:13:02', 'anjali@gmail.com'),
(411, 411, 7, 'not interested', 'Raised', '2024-06-18', '12:14:38', 'anjali@gmail.com'),
(412, 412, 7, 'Open 2', 'Raised', '2024-06-18', '12:17:33', 'anjali@gmail.com'),
(413, 413, 11, 'ADMISSION CLOSE', 'Raised', '2024-06-18', '12:18:30', 'dipti@praajasv.com'),
(414, 414, 7, 'ADMISSION CLOSE', 'Raised', '2024-06-18', '12:19:42', 'anjali@gmail.com'),
(415, 415, 11, 'Open 1', 'Raised', '2024-06-18', '12:21:33', 'dipti@praajasv.com'),
(416, 416, 7, 'Open 1', 'Raised', '2024-06-18', '12:22:18', 'anjali@gmail.com'),
(417, 417, 11, 'VISIT DONE ', 'Raised', '2024-06-18', '12:25:38', 'dipti@praajasv.com'),
(418, 418, 11, 'Open 1', 'Raised', '2024-06-18', '12:26:46', 'dipti@praajasv.com'),
(419, 419, 11, 'VISIT DONE ', 'Raised', '2024-06-18', '12:32:26', 'dipti@praajasv.com'),
(420, 420, 11, 'Confirmation Done', 'Raised', '2024-06-18', '12:34:02', 'dipti@praajasv.com'),
(421, 421, 11, 'Open 1', 'Raised', '2024-06-18', '12:37:59', 'dipti@praajasv.com'),
(422, 422, 11, 'Open 2', 'Raised', '2024-06-18', '12:39:17', 'dipti@praajasv.com'),
(423, 423, 7, 'Open 1', 'Raised', '2024-06-18', '12:55:04', 'anjali@gmail.com'),
(424, 424, 11, 'VISIT DONE ', 'Raised', '2024-06-18', '12:55:49', 'dipti@praajasv.com'),
(425, 425, 7, 'Open 1', 'Raised', '2024-06-18', '12:56:24', 'anjali@gmail.com'),
(426, 426, 7, 'ADMISSION CLOSE', 'Raised', '2024-06-18', '12:58:20', 'anjali@gmail.com'),
(427, 427, 7, 'ADMISSION CLOSE', 'Raised', '2024-06-18', '12:59:34', 'anjali@gmail.com'),
(428, 428, 7, 'Open 1', 'Raised', '2024-06-18', '13:00:33', 'anjali@gmail.com'),
(429, 429, 7, 'Open 1', 'Raised', '2024-06-18', '13:02:33', 'anjali@gmail.com'),
(430, 430, 7, 'Open 1', 'Raised', '2024-06-18', '13:41:53', ''),
(431, 431, 11, 'Open 1', 'Raised', '2024-06-18', '14:53:57', 'dipti@praajasv.com'),
(432, 432, 22, 'Open 1', 'Raised', '2024-06-18', '15:02:25', 'gayatri@praajasv.com'),
(433, 433, 11, 'Open 4', 'Raised', '2024-06-18', '15:04:59', 'dipti@praajasv.com'),
(434, 434, 22, 'Open 3', 'HE WILL COME AFTER 2-3 DAYS', '2024-06-18', '15:17:22', 'gayatri@praajasv.com'),
(435, 435, 11, 'ADMISSION CLOSE', 'Raised', '2024-06-18', '15:07:37', 'dipti@praajasv.com'),
(436, 436, 11, 'Open 4', 'Raised', '2024-06-18', '15:09:26', 'dipti@praajasv.com'),
(437, 437, 22, 'ADMISSION CLOSE', 'admission done full paid', '2024-06-24', '15:14:20', 'gayatri@praajasv.com'),
(438, 438, 22, 'Open 1', 'Raised', '2024-06-18', '15:13:47', 'gayatri@praajasv.com'),
(439, 439, 22, 'Open 1', 'Raised', '2024-06-18', '15:15:56', 'gayatri@praajasv.com'),
(440, 440, 11, 'Confirmation Done', 'Raised', '2024-06-18', '15:20:08', 'dipti@praajasv.com'),
(441, 441, 11, 'Open 1', 'Raised', '2024-06-18', '15:23:42', 'dipti@praajasv.com'),
(442, 442, 11, 'Open 1', 'Raised', '2024-06-18', '15:27:10', 'dipti@praajasv.com'),
(443, 443, 11, 'Open 1', 'Raised', '2024-06-18', '15:30:18', 'dipti@praajasv.com'),
(444, 444, 11, 'admission open', 'Raised', '2024-06-18', '15:37:32', 'dipti@praajasv.com'),
(445, 445, 11, 'Open 1', 'Raised', '2024-06-18', '15:54:33', 'dipti@praajasv.com'),
(446, 446, 11, 'Open 1', 'Raised', '2024-06-18', '16:06:07', 'dipti@praajasv.com'),
(447, 447, 21, 'Open 1', 'Raised', '2024-06-18', '16:06:21', 'ajay@praajasv.com'),
(448, 448, 11, 'Open 4', 'Raised', '2024-06-18', '16:10:01', 'dipti@praajasv.com'),
(449, 449, 11, 'Open 1', 'Raised', '2024-06-18', '16:17:56', 'dipti@praajasv.com'),
(450, 450, 6, 'not interested', 'Raised', '2024-06-18', '16:35:20', 'deepika@gmail.com'),
(451, 451, 11, 'Open 1', 'Raised', '2024-06-18', '16:38:22', 'dipti@praajasv.com'),
(452, 452, 11, 'Confirmation Done', 'Raised', '2024-06-18', '16:40:49', 'dipti@praajasv.com'),
(453, 453, 11, 'Confirmation Done', 'Raised', '2024-06-18', '16:43:03', 'dipti@praajasv.com'),
(454, 454, 11, 'Open 1', 'Raised', '2024-06-18', '16:48:22', 'dipti@praajasv.com'),
(455, 455, 11, 'Open 1', 'Raised', '2024-06-18', '16:53:28', 'dipti@praajasv.com'),
(456, 456, 11, 'Open 1', 'Raised', '2024-06-18', '16:55:26', 'dipti@praajasv.com'),
(457, 457, 11, 'Open 1', 'Raised', '2024-06-18', '17:14:27', 'dipti@praajasv.com'),
(458, 458, 11, 'Open 1', 'Raised', '2024-06-18', '17:17:19', 'dipti@praajasv.com'),
(459, 459, 11, 'Open 1', 'Raised', '2024-06-18', '17:20:45', 'dipti@praajasv.com'),
(460, 460, 11, 'Open 4', 'Raised', '2024-06-18', '17:46:59', 'dipti@praajasv.com'),
(461, 461, 11, 'Open 1', 'Raised', '2024-06-18', '17:49:34', 'dipti@praajasv.com'),
(465, 465, 8, 'Open 1', 'Raised', '2024-06-24', '06:17:05', 'shagun@gmail.com'),
(464, 464, 8, 'Open 1', 'Raised', '2024-06-24', '06:16:55', 'shagun@gmail.com'),
(466, 466, 8, 'Open 1', 'Raised', '2024-06-24', '06:17:49', 'shagun@gmail.com'),
(467, 467, 8, 'Open 1', 'Raised', '2024-06-24', '11:26:05', 'shagun@gmail.com'),
(468, 468, 8, 'Open 1', 'Raised', '2024-06-24', '11:42:36', 'shagun@gmail.com'),
(469, 469, 6, 'Open 1', 'Raised', '2024-06-24', '11:49:59', 'deepika@gmail.com'),
(470, 470, 8, 'Open 1', 'Raised', '2024-06-24', '13:51:16', ''),
(471, 471, 22, 'Open 1', 'Raised', '2024-06-24', '14:42:36', ''),
(472, 472, 22, 'Open 1', 'Raised', '2024-06-24', '14:50:05', 'gayatri@praajasv.com'),
(473, 473, 8, 'Open 1', 'Raised', '2024-06-24', '14:56:00', 'shagun@gmail.com'),
(474, 474, 22, 'Open 1', 'Raised', '2024-06-24', '15:13:10', 'gayatri@praajasv.com'),
(475, 475, 22, 'Open 1', 'Raised', '2024-06-24', '15:16:49', 'gayatri@praajasv.com'),
(476, 476, 22, 'Open 1', 'Raised', '2024-06-24', '15:20:06', 'gayatri@praajasv.com');

-- --------------------------------------------------------

--
-- Table structure for table `lead_assignment_history`
--

DROP TABLE IF EXISTS `lead_assignment_history`;
CREATE TABLE IF NOT EXISTS `lead_assignment_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LeadID` int(11) NOT NULL DEFAULT '-1',
  `AssignedTo` int(11) NOT NULL DEFAULT '-1',
  `Status` varchar(50) NOT NULL DEFAULT '',
  `Remark` varchar(256) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=749 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lead_assignment_history`
--

INSERT INTO `lead_assignment_history` (`ID`, `LeadID`, `AssignedTo`, `Status`, `Remark`, `CreatedDate`, `CreatedTime`, `CreatedBy`) VALUES
(13, 6, 16, 'admission open', 'Convert To Admission', '2024-06-08', '13:23:22', 'bhaumik@praajasv.com'),
(12, 6, 16, 'admission open', 'will take admission in 2 days', '2024-06-08', '13:21:49', 'bhaumik@praajasv.com'),
(11, 6, 16, 'Open 4', 'Lead Created', '2024-06-08', '13:20:13', 'bhaumik@praajasv.com'),
(10, 5, 11, 'Open 4', 'Lead Created', '2024-06-07', '16:13:53', 'dipti@gmail.com'),
(9, 4, 15, 'admission open', 'Convert To Admission', '2024-06-07', '15:50:50', 'rahul@praajasv.com'),
(7, 3, 10, 'Open 4', 'Lead Created', '2024-06-07', '15:41:04', 'rahul@praajasv.com'),
(8, 4, 15, 'admission open', 'Lead Created', '2024-06-07', '15:44:14', 'rahul@praajasv.com'),
(14, 7, 10, 'Open 4', 'Lead Created', '2024-06-10', '13:50:20', 'rahul@praajasv.com'),
(15, 8, 18, 'Open 3', 'Lead Created', '2024-06-10', '14:07:42', 'bhavi@praajasv.com'),
(16, 8, 18, 'Open 3', 'Will Inform within 2 days .', '2024-06-10', '14:08:20', 'bhavi@praajasv.com'),
(17, 8, 18, 'Open 3', 'Will come tomorrow for demo. he is working in ISRO so call before 2 PM', '2024-06-10', '14:09:11', 'bhavi@praajasv.com'),
(18, 9, 18, 'Open 2', 'Lead Created', '2024-06-10', '14:12:00', 'bhavi@praajasv.com'),
(19, 9, 18, 'admission open', 'taking demo will confirm with in two days', '2024-06-10', '14:12:42', 'bhavi@praajasv.com'),
(20, 9, 18, 'admission open', 'Convert To Admission', '2024-06-10', '14:16:04', 'bhavi@praajasv.com'),
(21, 10, 18, 'admission open', 'Lead Created', '2024-06-10', '15:28:49', 'bhavi@praajasv.com'),
(22, 10, 18, 'admission open', 'Convert To Admission', '2024-06-10', '15:31:58', 'malhar@praajasv.com'),
(23, 11, 18, 'Open 4', 'Lead Created', '2024-06-10', '17:23:51', 'malhar@praajasv.com'),
(24, 12, 8, 'Open 1', 'Lead Created', '2024-06-11', '11:56:57', 'shagun@gmail.com'),
(25, 13, 8, 'Open 1', 'Lead Created', '2024-06-11', '11:58:31', 'shagun@gmail.com'),
(26, 13, 8, 'admission open', 'Done Adm', '2024-06-11', '12:08:14', 'shagun@gmail.com'),
(27, 13, 8, 'admission open', 'Convert To Admission', '2024-06-11', '13:04:23', ''),
(28, 14, 6, 'Open 4', 'Lead Created', '2024-06-11', '15:17:30', ''),
(29, 14, 6, 'Open 4', 'WANT EVENING BATCH', '2024-06-11', '15:20:55', 'dipika@gmail.com'),
(30, 15, 8, 'Open 1', 'Lead Created', '2024-06-11', '15:45:19', 'shagun@gmail.com'),
(31, 16, 8, 'Open 1', 'Lead Created', '2024-06-11', '15:53:34', 'shagun@gmail.com'),
(32, 17, 8, 'Open 1', 'Lead Created', '2024-06-11', '15:59:49', 'shagun@gmail.com'),
(33, 18, 7, 'Open 1', 'Lead Created', '2024-06-11', '16:00:09', 'anjali@gmail.com'),
(34, 19, 18, 'Open 4', 'Lead Created', '2024-06-11', '16:04:13', 'bhavi@praajasv.com'),
(35, 20, 6, 'Open 1', 'Lead Created', '2024-06-11', '16:07:30', 'dipika@gmail.com'),
(36, 21, 18, 'Open 4', 'Lead Created', '2024-06-11', '16:08:37', 'bhavi@praajasv.com'),
(37, 22, 8, 'Open 1', 'Lead Created', '2024-06-11', '16:08:41', 'shagun@gmail.com'),
(38, 23, 8, 'Open 1', 'Lead Created', '2024-06-11', '16:11:42', 'shagun@gmail.com'),
(39, 24, 6, 'not interested', 'Lead Created', '2024-06-11', '16:13:05', 'dipika@gmail.com'),
(40, 25, 18, 'Open 1', 'Lead Created', '2024-06-11', '16:13:06', 'bhavi@praajasv.com'),
(41, 18, 7, 'Open 1', 'NOT RESPOND CALLS', '2024-06-11', '16:13:57', 'anjali@gmail.com'),
(42, 26, 6, 'not interested', 'Lead Created', '2024-06-11', '16:16:00', 'dipika@gmail.com'),
(43, 27, 18, 'Open 4', 'Lead Created', '2024-06-11', '16:16:10', 'bhavi@praajasv.com'),
(44, 28, 7, 'not interested', 'Lead Created', '2024-06-11', '16:17:30', 'anjali@gmail.com'),
(45, 29, 6, 'not interested', 'Lead Created', '2024-06-11', '16:19:06', 'dipika@gmail.com'),
(46, 30, 6, 'admission close', 'Lead Created', '2024-06-11', '16:21:35', 'dipika@gmail.com'),
(47, 31, 18, 'admission close', 'Lead Created', '2024-06-11', '16:21:47', 'bhavi@praajasv.com'),
(48, 32, 7, 'not interested', 'Lead Created', '2024-06-11', '16:21:49', 'anjali@gmail.com'),
(49, 18, 7, 'Open 1', 'after regular followup ', '2024-06-11', '16:22:30', 'anjali@gmail.com'),
(50, 33, 7, 'not interested', 'Lead Created', '2024-06-11', '16:28:24', 'anjali@gmail.com'),
(51, 34, 18, 'Open 4', 'Lead Created', '2024-06-11', '16:28:47', 'bhavi@praajasv.com'),
(52, 35, 7, 'Open 1', 'Lead Created', '2024-06-11', '16:30:25', 'anjali@gmail.com'),
(53, 36, 8, 'Open 1', 'Lead Created', '2024-06-11', '16:30:42', 'shagun@gmail.com'),
(54, 37, 6, 'not interested', 'Lead Created', '2024-06-11', '16:30:44', 'dipika@gmail.com'),
(55, 38, 7, 'not interested', 'Lead Created', '2024-06-11', '16:31:54', 'anjali@gmail.com'),
(56, 39, 6, 'not interested', 'Lead Created', '2024-06-11', '16:32:44', 'dipika@gmail.com'),
(57, 40, 8, 'Open 1', 'Lead Created', '2024-06-11', '16:34:42', 'shagun@gmail.com'),
(58, 41, 6, 'Open 1', 'Lead Created', '2024-06-11', '16:36:36', 'dipika@gmail.com'),
(59, 42, 7, 'not interested', 'Lead Created', '2024-06-11', '16:36:55', 'anjali@gmail.com'),
(60, 43, 8, 'Open 1', 'Lead Created', '2024-06-11', '16:37:06', 'shagun@gmail.com'),
(61, 43, 8, 'Open 1', 'attended 10th June economy module-2 classes as a demo in offline and live', '2024-06-11', '16:37:51', 'shagun@gmail.com'),
(62, 44, 6, 'Open 1', 'Lead Created', '2024-06-11', '16:38:55', 'dipika@gmail.com'),
(63, 45, 7, 'Open 1', 'Lead Created', '2024-06-11', '16:39:16', 'anjali@gmail.com'),
(64, 46, 6, 'not interested', 'Lead Created', '2024-06-11', '16:40:43', 'dipika@gmail.com'),
(65, 47, 8, 'Open 1', 'Lead Created', '2024-06-11', '16:41:36', 'shagun@gmail.com'),
(66, 48, 6, 'not interested', 'Lead Created', '2024-06-11', '16:42:13', 'dipika@gmail.com'),
(67, 49, 7, 'not interested', 'Lead Created', '2024-06-11', '16:43:54', 'anjali@gmail.com'),
(68, 50, 7, 'not interested', 'Lead Created', '2024-06-11', '16:45:14', 'anjali@gmail.com'),
(69, 47, 8, 'Open 1', 'fr 1yr online/from Hindu clg passout/from rajasthan/for 19th june batch', '2024-06-11', '16:45:39', 'shagun@gmail.com'),
(70, 51, 6, 'Open 1', 'Lead Created', '2024-06-11', '16:46:24', 'dipika@gmail.com'),
(71, 52, 7, 'not interested', 'Lead Created', '2024-06-11', '16:47:04', 'anjali@gmail.com'),
(72, 53, 6, 'Open 1', 'Lead Created', '2024-06-11', '16:47:42', 'dipika@gmail.com'),
(73, 54, 8, 'Open 1', 'Lead Created', '2024-06-11', '16:48:19', 'shagun@gmail.com'),
(74, 55, 7, 'not interested', 'Lead Created', '2024-06-11', '16:48:32', 'anjali@gmail.com'),
(75, 54, 8, 'Open 1', '\"fr 1yr offline/more twds plutus and aug batch/push for june batch reg reached hometown/and will inform me tom will go for mid july batch\"', '2024-06-11', '16:48:40', 'shagun@gmail.com'),
(76, 56, 6, 'Open 1', 'Lead Created', '2024-06-11', '16:49:02', 'dipika@gmail.com'),
(77, 57, 7, 'not interested', 'Lead Created', '2024-06-11', '16:50:05', 'anjali@gmail.com'),
(78, 58, 8, 'Open 1', 'Lead Created', '2024-06-11', '16:51:04', 'shagun@gmail.com'),
(79, 59, 7, 'admission close', 'Lead Created', '2024-06-11', '16:51:22', 'anjali@gmail.com'),
(80, 60, 6, 'Open 1', 'Lead Created', '2024-06-11', '16:51:52', 'dipika@gmail.com'),
(81, 58, 8, 'Open 1', 'fr 1yr online/more twds vision/for 10th june batch/apala mishra was neighbour', '2024-06-11', '16:52:35', 'shagun@gmail.com'),
(82, 61, 6, 'Open 1', 'Lead Created', '2024-06-11', '16:53:38', 'dipika@gmail.com'),
(83, 62, 8, 'Open 1', 'Lead Created', '2024-06-11', '16:55:11', 'shagun@gmail.com'),
(84, 63, 6, 'Open 1', 'Lead Created', '2024-06-11', '16:55:37', 'dipika@gmail.com'),
(85, 62, 8, 'Open 1', '\"fr 1yr offline/said will come with father tom/10th june batch will attend demo tom then will reg for 10th june batch/110k-OTP\"', '2024-06-11', '16:55:38', 'shagun@gmail.com'),
(86, 64, 6, 'admission close', 'Lead Created', '2024-06-11', '16:57:31', 'dipika@gmail.com'),
(87, 65, 8, 'Open 1', 'Lead Created', '2024-06-11', '16:58:33', 'shagun@gmail.com'),
(88, 65, 8, 'Open 1', 'fr 2yr offline/from haryana/enq in vision,vajiram,chahal/will inform me on after 12th june for 19th june batch', '2024-06-11', '16:58:54', 'shagun@gmail.com'),
(89, 66, 8, 'Open 1', 'Lead Created', '2024-06-11', '17:01:07', 'shagun@gmail.com'),
(90, 66, 8, 'Open 1', 'fr 1yr offline/will inform after 2-3 days/from Moradabad', '2024-06-11', '17:01:28', 'shagun@gmail.com'),
(91, 67, 8, 'Open 1', 'Lead Created', '2024-06-11', '17:04:12', 'shagun@gmail.com'),
(92, 67, 8, 'Open 1', '\"fr 1yr online/from up/b.tech std/for 19th june batch reg dicy btw next & AO Class/will inform after 2-3 days\"', '2024-06-11', '17:04:31', 'shagun@gmail.com'),
(93, 68, 8, 'Open 1', 'Lead Created', '2024-06-11', '17:06:30', 'shagun@gmail.com'),
(94, 68, 8, 'Open 1', 'fr 1yr offline/july batch/reg clg std/from janakpuri', '2024-06-11', '17:06:50', 'shagun@gmail.com'),
(95, 69, 8, 'Open 1', 'Lead Created', '2024-06-11', '17:08:50', 'shagun@gmail.com'),
(96, 69, 8, 'Open 1', 'fr 1yr offline/will inform me on 12th june for reg for 19th june batch/more twds next & vajiram', '2024-06-11', '17:09:19', 'shagun@gmail.com'),
(97, 70, 8, 'Open 1', 'Lead Created', '2024-06-11', '17:11:26', 'shagun@gmail.com'),
(98, 70, 8, 'Open 1', 'fr 1yr offline/doing internship from faridabad/will go for july batch/more twds vision due to batch concern 6pm', '2024-06-11', '17:11:46', 'shagun@gmail.com'),
(99, 71, 8, 'Open 1', 'Lead Created', '2024-06-11', '17:15:30', 'shagun@gmail.com'),
(100, 71, 8, 'Open 1', 'fr 1yr offline/staying in patel nagar/will inform/std is in 1st yr', '2024-06-11', '17:16:07', 'shagun@gmail.com'),
(101, 72, 8, 'Open 1', 'Lead Created', '2024-06-11', '17:19:01', 'shagun@gmail.com'),
(102, 72, 8, 'Open 1', 'fr 1yr offline/july batch/from durg-UP', '2024-06-11', '17:19:38', 'shagun@gmail.com'),
(103, 73, 8, 'Open 1', 'Lead Created', '2024-06-11', '17:25:23', 'shagun@gmail.com'),
(104, 73, 8, 'Open 1', 'fr 1yr offline/july batch/from durg-UP', '2024-06-11', '17:25:51', 'shagun@gmail.com'),
(105, 74, 6, 'Open 1', 'Lead Created', '2024-06-11', '17:32:42', 'dipika@gmail.com'),
(106, 16, 8, 'Open 1', 'Convert To Admission', '2024-06-11', '17:40:54', 'shagun@gmail.com'),
(107, 75, 18, 'Open 4', 'Lead Created', '2024-06-11', '18:03:41', 'bhavi@praajasv.com'),
(108, 76, 18, 'admission open', 'Lead Created', '2024-06-11', '18:06:49', 'bhavi@praajasv.com'),
(109, 76, 18, 'admission open', 'Convert To Admission', '2024-06-11', '18:44:21', 'bhavi@praajasv.com'),
(110, 31, 18, 'admission close', 'Convert To Admission', '2024-06-11', '18:52:09', 'bhavi@praajasv.com'),
(111, 77, 20, 'Open 1', 'Lead Created', '2024-06-11', '18:58:55', 'KRUPALI1@PRAAJASV.COM'),
(112, 78, 20, 'admission close', 'Lead Created', '2024-06-11', '19:00:58', 'KRUPALI1@PRAAJASV.COM'),
(113, 79, 20, 'Open 2', 'Lead Created', '2024-06-11', '19:36:56', 'KRUPALI1@PRAAJASV.COM'),
(114, 80, 10, 'not interested', 'Lead Created', '2024-06-12', '11:19:25', 'krupali1@praajasv.com'),
(115, 81, 20, 'Open 2', 'Lead Created', '2024-06-12', '11:25:15', 'krupali1@praajasv.com'),
(116, 82, 20, 'admission close', 'Lead Created', '2024-06-12', '11:31:51', 'krupali1@praajasv.com'),
(117, 83, 11, 'Open 3', 'Lead Created', '2024-06-12', '11:41:34', 'dipti@praajasv.com'),
(118, 27, 18, 'Open 4', 'Convert To Admission', '2024-06-12', '12:03:30', 'bhavi@praajasv.com'),
(119, 84, 20, 'Open 1', 'Lead Created', '2024-06-12', '12:43:15', 'KRUPALI1@PRAAJASV.COM'),
(120, 85, 20, 'Open 1', 'Lead Created', '2024-06-12', '12:46:16', 'KRUPALI1@PRAAJASV.COM'),
(121, 86, 20, 'Open 1', 'Lead Created', '2024-06-12', '12:50:28', 'KRUPALI1@PRAAJASV.COM'),
(122, 87, 20, 'Open 4', 'Lead Created', '2024-06-12', '12:53:30', 'KRUPALI1@PRAAJASV.COM'),
(123, 88, 20, 'Open 4', 'Lead Created', '2024-06-12', '12:57:37', 'KRUPALI1@PRAAJASV.COM'),
(124, 89, 20, 'not interested', 'Lead Created', '2024-06-12', '13:00:27', 'KRUPALI1@PRAAJASV.COM'),
(125, 90, 20, 'Open 4', 'Lead Created', '2024-06-12', '13:05:37', 'KRUPALI1@PRAAJASV.COM'),
(126, 91, 20, 'Open 4', 'Lead Created', '2024-06-12', '13:07:34', 'KRUPALI1@PRAAJASV.COM'),
(127, 92, 20, 'Open 2', 'Lead Created', '2024-06-12', '13:09:41', 'KRUPALI1@PRAAJASV.COM'),
(128, 93, 18, 'admission close', 'Lead Created', '2024-06-12', '13:24:19', 'bhavi@praajasv.com'),
(129, 94, -1, 'Open 1', 'Lead Created', '2024-06-12', '13:32:31', ''),
(130, 95, 20, 'Open 1', 'Lead Created', '2024-06-12', '14:14:48', 'KRUPALI1@PRAAJASV.COM'),
(131, 96, 7, 'not interested', 'Lead Created', '2024-06-12', '14:43:46', 'anjali@gmail.com'),
(132, 97, 7, 'not interested', 'Lead Created', '2024-06-12', '14:45:03', 'anjali@gmail.com'),
(133, 98, 12, 'admission close', 'Lead Created', '2024-06-12', '14:45:07', 'KHUSHBU@GMAIL.COM'),
(134, 99, 7, 'not interested', 'Lead Created', '2024-06-12', '14:46:00', 'anjali@gmail.com'),
(135, 100, 7, 'not interested', 'Lead Created', '2024-06-12', '14:48:54', 'anjali@gmail.com'),
(136, 101, 7, 'admission close', 'Lead Created', '2024-06-12', '14:50:32', 'anjali@gmail.com'),
(137, 102, 12, 'Open 2', 'Lead Created', '2024-06-12', '15:13:35', 'khushbu@gmail.com'),
(138, 103, 11, 'Open 1', 'Lead Created', '2024-06-12', '17:56:53', 'dipti@praajasv.com'),
(139, 104, 18, 'Open 1', 'Lead Created', '2024-06-12', '18:16:26', 'bhavi@praajasv.com'),
(140, 105, 18, 'Open 1', 'Lead Created', '2024-06-12', '18:29:46', 'bhavi@praajasv.com'),
(141, 106, 7, 'Open 4', 'Lead Created', '2024-06-12', '18:53:07', 'anjali@gmail.com'),
(142, 106, 7, 'Open 4', 'Convert To Admission', '2024-06-12', '18:54:59', 'anjali@gmail.com'),
(143, 107, 6, 'Open 1', 'Lead Created', '2024-06-13', '10:13:10', 'deepika@gmail.com'),
(144, 108, 6, 'not interested', 'Lead Created', '2024-06-13', '10:15:19', 'deepika@gmail.com'),
(145, 109, 6, 'not interested', 'Lead Created', '2024-06-13', '10:21:42', 'deepika@gmail.com'),
(146, 110, 6, 'not interested', 'Lead Created', '2024-06-13', '10:23:45', 'deepika@gmail.com'),
(147, 111, 6, 'Open 1', 'Lead Created', '2024-06-13', '10:25:05', 'deepika@gmail.com'),
(148, 112, 6, 'Open 1', 'Lead Created', '2024-06-13', '10:27:15', 'deepika@gmail.com'),
(149, 113, 6, 'not interested', 'Lead Created', '2024-06-13', '10:30:35', 'deepika@gmail.com'),
(150, 114, 6, 'Open 1', 'Lead Created', '2024-06-13', '10:32:08', 'deepika@gmail.com'),
(151, 70, 8, 'Open 1', 'will take adm on 1st july', '2024-06-13', '11:26:10', 'shagun@gmail.com'),
(152, 69, 8, 'Open 1', 'will go for 19th june batch/will do OTP 120k before 19th june/convincing parents for money', '2024-06-13', '11:30:36', 'shagun@gmail.com'),
(153, 67, 8, 'Open 1', 'will go for january batch/currently doing self study', '2024-06-13', '11:31:26', 'shagun@gmail.com'),
(154, 62, 8, 'Open 1', 'will go for 1st july batch', '2024-06-13', '11:31:57', 'shagun@gmail.com'),
(155, 16, 8, 'Open 1', 'fee is 170k in installment', '2024-06-13', '11:32:51', 'shagun@gmail.com'),
(156, 15, 8, 'Open 1', 'will do payment after bakriid 17th june for 19th june batch', '2024-06-13', '11:34:25', 'shagun@gmail.com'),
(157, 71, 8, 'Open 1', 'will update me after 6th july after sem exams', '2024-06-13', '11:35:53', 'shagun@gmail.com'),
(158, 27, 18, 'admission close', 'ADMISSION DONE', '2024-06-13', '12:35:24', 'bhavi@praajasv.com'),
(159, 31, 18, 'admission close', 'ADMISSION DONE', '2024-06-13', '12:35:56', 'bhavi@praajasv.com'),
(160, 76, 18, 'admission close', 'ADMISSION DONE', '2024-06-13', '12:36:48', 'bhavi@praajasv.com'),
(161, 115, 20, 'Open 1', 'Lead Created', '2024-06-13', '16:18:21', 'KRUPALI1@PRAAJASV.COM'),
(162, 95, 20, 'Open 4', 'TOMORROW ATTEND DEMO ', '2024-06-13', '16:20:20', 'KRUPALI1@PRAAJASV.COM'),
(163, 116, 8, 'Open 1', 'Lead Created', '2024-06-13', '16:24:51', ''),
(164, 117, 20, 'Open 1', 'Lead Created', '2024-06-13', '16:30:32', 'KRUPALI1@PRAAJASV.COM'),
(165, 116, 8, 'Open 2', 'fr 1yr offline/enq in chahal,ensure/will inform me in eve', '2024-06-13', '16:33:25', 'shagun@gmail.com'),
(166, 118, 8, 'Open 1', 'Lead Created', '2024-06-13', '16:37:32', 'shagun@gmail.com'),
(167, 118, 8, 'Open 2', 'fr 1yr online/will go for 19th june batch', '2024-06-13', '16:38:16', 'shagun@gmail.com'),
(168, 119, 8, 'Open 1', 'Lead Created', '2024-06-13', '16:41:26', 'shagun@gmail.com'),
(169, 119, 8, 'admission close', 'Convert To Admission', '2024-06-13', '16:43:34', 'shagun@gmail.com'),
(170, 120, 6, 'Open 1', 'Lead Created', '2024-06-13', '17:29:01', 'deepika@gmail.com'),
(171, 121, 6, 'Open 1', 'Lead Created', '2024-06-13', '17:30:40', 'deepika@gmail.com'),
(172, 122, 6, 'Open 1', 'Lead Created', '2024-06-13', '17:32:39', 'deepika@gmail.com'),
(173, 123, 18, 'Open 4', 'Lead Created', '2024-06-13', '18:45:24', 'bhavi@praajasv.com'),
(174, 124, 18, 'Open 4', 'Lead Created', '2024-06-13', '18:46:06', 'bhavi@praajasv.com'),
(175, 19, 18, 'Open 4', 'Convert To Admission', '2024-06-14', '11:26:03', 'bhavi@praajasv.com'),
(176, 11, 18, 'Open 4', 'RAGISTRATION RECEIVED, REMAINING AMOUNT WILL PAY WITHIN 2 DAYS', '2024-06-14', '11:28:05', 'bhavi@praajasv.com'),
(177, 125, 20, 'Open 1', 'Lead Created', '2024-06-14', '12:00:57', 'krupali1@praajasv.com'),
(178, 125, 20, 'Open 1', 'JUST 12TH COMPLETE THINK &GIVE ANS ', '2024-06-14', '12:02:14', 'krupali1@praajasv.com'),
(179, 125, 20, 'not interested', 'NOT INTERWSTED ', '2024-06-14', '12:02:51', 'krupali1@praajasv.com'),
(180, 126, 16, 'Open 1', 'Lead Created', '2024-06-14', '12:11:25', 'krupali1@praajasv.com'),
(181, 127, 15, 'Open 1', 'Lead Created', '2024-06-14', '12:13:19', 'krupali1@praajasv.com'),
(182, 128, 16, 'Open 2', 'Lead Created', '2024-06-14', '12:16:00', 'krupali1@praajasv.com'),
(183, 129, 20, 'Open 1', 'Lead Created', '2024-06-14', '12:21:05', 'krupali1@praajasv.com'),
(184, 129, 20, 'Open 1', 'IN TWO DAYS GIVE CONFIRM ANS ', '2024-06-14', '12:21:43', 'krupali1@praajasv.com'),
(185, 130, 20, 'Open 1', 'Lead Created', '2024-06-14', '12:23:25', 'krupali1@praajasv.com'),
(186, 129, 20, 'Open 1', 'CUT THE CALL', '2024-06-14', '12:23:30', 'krupali1@praajasv.com'),
(187, 130, 20, 'Open 1', 'RNR', '2024-06-14', '12:24:06', 'krupali1@praajasv.com'),
(188, 130, 20, 'Open 1', 'RNR', '2024-06-14', '12:24:20', 'krupali1@praajasv.com'),
(189, 130, 20, 'Open 1', 'RNR', '2024-06-14', '12:24:33', 'krupali1@praajasv.com'),
(190, 131, 20, 'Open 1', 'Lead Created', '2024-06-14', '12:25:44', 'krupali1@praajasv.com'),
(191, 131, 20, 'not interested', 'NEET CLEAR WANT TO GO IN MBBS ', '2024-06-14', '12:26:19', 'krupali1@praajasv.com'),
(192, 132, 20, 'Open 1', 'Lead Created', '2024-06-14', '12:29:03', 'krupali1@praajasv.com'),
(193, 132, 20, 'Open 1', 'RNR', '2024-06-14', '12:29:22', 'krupali1@praajasv.com'),
(194, 132, 20, 'Open 1', 'out of service', '2024-06-14', '12:29:43', 'krupali1@praajasv.com'),
(195, 133, 20, 'Open 1', 'Lead Created', '2024-06-14', '12:29:52', 'krupali1@praajasv.com'),
(196, 132, 20, 'Open 1', 'wrong  number\r\n', '2024-06-14', '12:30:03', 'krupali1@praajasv.com'),
(197, 133, 20, 'Open 1', 'RNR', '2024-06-14', '12:30:08', 'krupali1@praajasv.com'),
(198, 133, 20, 'Open 1', 'RNR', '2024-06-14', '12:30:35', 'krupali1@praajasv.com'),
(199, 134, 20, 'Open 1', 'Lead Created', '2024-06-14', '12:32:06', 'krupali1@praajasv.com'),
(200, 134, 20, 'Open 1', 'GPSC ENGLISH MEDIUM THINK AND GIVE ANS ', '2024-06-14', '12:33:29', 'krupali1@praajasv.com'),
(201, 128, 16, 'Open 1', 'THINK AND GIVE ANS', '2024-06-14', '12:35:57', 'bhaumik@praajasv.com'),
(202, 135, 20, 'Open 1', 'Lead Created', '2024-06-14', '12:36:02', 'krupali1@praajasv.com'),
(203, 135, 20, 'Open 1', 'RNR', '2024-06-14', '12:36:27', 'krupali1@praajasv.com'),
(204, 135, 20, 'Open 1', 'out of  service', '2024-06-14', '12:36:49', 'krupali1@praajasv.com'),
(205, 135, 20, 'Open 1', 'wrong number', '2024-06-14', '12:37:08', 'krupali1@praajasv.com'),
(206, 136, 20, 'Open 1', 'Lead Created', '2024-06-14', '12:40:40', 'krupali1@praajasv.com'),
(207, 136, 20, 'Open 4', 'demo going on', '2024-06-14', '12:41:29', 'krupali1@praajasv.com'),
(208, 136, 20, 'Open 4', 'RNR', '2024-06-14', '12:41:47', 'krupali1@praajasv.com'),
(209, 136, 20, 'Open 4', 'tomorrow give  final ans.', '2024-06-14', '12:42:30', 'krupali1@praajasv.com'),
(210, 136, 20, 'Open 4', 'RNR', '2024-06-14', '12:42:45', 'krupali1@praajasv.com'),
(211, 136, 20, 'Open 4', 'RNR\r\n', '2024-06-14', '12:42:58', 'krupali1@praajasv.com'),
(212, 137, 20, 'Open 1', 'Lead Created', '2024-06-14', '12:44:48', 'krupali1@praajasv.com'),
(213, 137, 20, 'Open 1', 'RNR', '2024-06-14', '12:45:06', 'krupali1@praajasv.com'),
(214, 137, 20, 'Open 1', 'fees problem,   \r\np.g  not possible\r\ndue to financial problems ', '2024-06-14', '12:46:33', 'krupali1@praajasv.com'),
(215, 138, 20, 'Open 1', 'Lead Created', '2024-06-14', '12:49:05', 'krupali1@praajasv.com'),
(216, 138, 20, 'Open 1', 'RNR', '2024-06-14', '12:49:41', 'krupali1@praajasv.com'),
(217, 138, 20, 'Open 1', 'cut the call', '2024-06-14', '12:50:25', 'krupali1@praajasv.com'),
(218, 138, 20, 'Open 1', 'RNR', '2024-06-14', '12:50:42', 'krupali1@praajasv.com'),
(219, 138, 20, 'Open 1', 'RNR', '2024-06-14', '12:51:00', 'krupali1@praajasv.com'),
(220, 139, 20, 'Open 1', 'Lead Created', '2024-06-14', '12:52:56', 'krupali1@praajasv.com'),
(221, 139, 20, 'Open 1', 'RNR', '2024-06-14', '12:53:29', 'krupali1@praajasv.com'),
(222, 139, 20, 'Open 1', 'tomorrow morning give final confirmation', '2024-06-14', '12:54:34', 'krupali1@praajasv.com'),
(223, 139, 20, 'Open 1', 'call attend one & two hour ', '2024-06-14', '12:55:09', 'krupali1@praajasv.com'),
(224, 139, 20, 'Open 1', 'busy, RNR', '2024-06-14', '12:55:30', 'krupali1@praajasv.com'),
(225, 139, 20, 'Open 1', 'RNR', '2024-06-14', '12:55:42', 'krupali1@praajasv.com'),
(226, 140, 20, 'Open 1', 'Lead Created', '2024-06-14', '13:08:03', 'krupali1@praajasv.com'),
(227, 140, 20, 'admission open', 'demo done in upsc', '2024-06-14', '13:09:26', 'krupali1@praajasv.com'),
(228, 141, 20, 'Open 1', 'Lead Created', '2024-06-14', '13:11:38', 'krupali1@praajasv.com'),
(229, 141, 20, 'Open 1', 'RNR', '2024-06-14', '13:11:54', 'krupali1@praajasv.com'),
(230, 141, 20, 'Open 1', 'CUT THE CALL', '2024-06-14', '13:12:09', 'krupali1@praajasv.com'),
(231, 142, 20, 'Open 1', 'Lead Created', '2024-06-14', '13:13:16', 'krupali1@praajasv.com'),
(232, 142, 20, 'Open 1', 'AFTER AMC EXAM', '2024-06-14', '13:13:38', 'krupali1@praajasv.com'),
(233, 143, 20, 'Open 1', 'Lead Created', '2024-06-14', '13:14:57', 'krupali1@praajasv.com'),
(234, 143, 20, 'Open 1', 'SWITCHED OFF ', '2024-06-14', '13:15:18', 'krupali1@praajasv.com'),
(235, 144, 20, 'Open 2', 'Lead Created', '2024-06-14', '13:16:34', 'krupali1@praajasv.com'),
(236, 144, 20, 'Open 1', 'CUT THE CALL', '2024-06-14', '13:16:53', 'krupali1@praajasv.com'),
(237, 145, 20, 'Open 1', 'Lead Created', '2024-06-14', '13:18:58', 'krupali1@praajasv.com'),
(238, 145, 20, 'not interested', 'WRONG NUMBER', '2024-06-14', '13:19:25', 'krupali1@praajasv.com'),
(239, 146, 20, 'Open 1', 'Lead Created', '2024-06-14', '13:24:27', 'krupali1@praajasv.com'),
(240, 146, 20, 'Open 1', 'EVENING BATCH ONLY ', '2024-06-14', '13:24:46', 'krupali1@praajasv.com'),
(241, 147, 20, 'Open 1', 'Lead Created', '2024-06-14', '13:30:47', 'krupali1@praajasv.com'),
(242, 148, 20, 'Open 1', 'Lead Created', '2024-06-14', '13:33:09', 'krupali1@praajasv.com'),
(243, 149, 20, 'Open 1', 'Lead Created', '2024-06-14', '13:35:23', 'krupali1@praajasv.com'),
(244, 150, 20, 'Open 1', 'Lead Created', '2024-06-14', '13:36:49', 'krupali1@praajasv.com'),
(245, 150, 20, 'Open 1', 'TODAY EVENING GIVE CONFIRM ANS ', '2024-06-14', '13:37:26', 'krupali1@praajasv.com'),
(246, 150, 20, 'Open 1', 'RNR', '2024-06-14', '13:37:55', 'krupali1@praajasv.com'),
(247, 151, 20, 'Open 1', 'Lead Created', '2024-06-14', '13:41:00', 'krupali1@praajasv.com'),
(248, 152, 20, 'Open 1', 'Lead Created', '2024-06-14', '13:44:58', 'krupali1@praajasv.com'),
(249, 153, 18, 'Open 4', 'Lead Created', '2024-06-14', '14:02:29', ''),
(250, 154, 22, 'Open 1', 'Lead Created', '2024-06-14', '14:42:30', 'gayatri@praajasv.com'),
(251, 155, 20, 'Open 1', 'Lead Created', '2024-06-14', '14:43:39', 'KRUPALI1@PRAAJASV.COM'),
(252, 155, 20, 'not interested', '1000 REFUND DUE TO SOME PERSONAL REASON ', '2024-06-14', '14:44:26', 'KRUPALI1@PRAAJASV.COM'),
(253, 156, 20, 'Open 1', 'Lead Created', '2024-06-14', '14:45:35', 'KRUPALI1@PRAAJASV.COM'),
(254, 156, 20, 'Open 1', 'IN 60000 WANT LONG TERM BATCH ', '2024-06-14', '14:46:19', 'KRUPALI1@PRAAJASV.COM'),
(255, 157, 20, 'Open 1', 'Lead Created', '2024-06-14', '14:47:18', 'KRUPALI1@PRAAJASV.COM'),
(256, 158, 22, 'Open 1', 'Lead Created', '2024-06-14', '14:47:48', 'gayatri@praajasv.com'),
(257, 157, 20, 'Open 1', 'IN ONE OR TWO DAYS COME TO ACADEMY FOR DEMO ', '2024-06-14', '14:47:49', 'KRUPALI1@PRAAJASV.COM'),
(258, 159, 20, 'Open 1', 'Lead Created', '2024-06-14', '14:50:50', 'KRUPALI1@PRAAJASV.COM'),
(259, 159, 20, 'Open 1', 'RNR', '2024-06-14', '14:51:04', 'KRUPALI1@PRAAJASV.COM'),
(260, 159, 20, 'Open 1', 'OUT OF AHMEDABAD AFTER TWO DAYS COME TO ACADEMY FOR DEMO ', '2024-06-14', '14:51:45', 'KRUPALI1@PRAAJASV.COM'),
(261, 160, 20, 'Open 1', 'Lead Created', '2024-06-14', '14:52:45', 'KRUPALI1@PRAAJASV.COM'),
(262, 161, 20, 'Open 1', 'Lead Created', '2024-06-14', '14:54:18', 'KRUPALI1@PRAAJASV.COM'),
(263, 161, 20, 'Open 1', 'THINK AND GIVE ANS WANT TO SEE OTHER ACADEMY ', '2024-06-14', '14:55:13', 'KRUPALI1@PRAAJASV.COM'),
(264, 162, 20, 'Open 4', 'Lead Created', '2024-06-14', '14:56:54', 'KRUPALI1@PRAAJASV.COM'),
(265, 163, 20, 'Open 1', 'Lead Created', '2024-06-14', '14:58:26', ''),
(266, 164, 20, 'Open 4', 'Lead Created', '2024-06-14', '14:59:38', 'KRUPALI1@PRAAJASV.COM'),
(267, 165, 20, 'Open 4', 'Lead Created', '2024-06-14', '15:02:07', 'KRUPALI1@PRAAJASV.COM'),
(268, 166, 8, 'Open 1', 'Lead Created', '2024-06-14', '15:02:49', 'shagun@gmail.com'),
(269, 163, 20, 'Open 1', 'not intrested\r\nbut conuince for gpsc batch think & give ans tomorrow \r\n', '2024-06-14', '15:02:59', 'KRUPALI1@PRAAJASV.COM'),
(270, 165, 20, 'Open 1', 'RNR', '2024-06-14', '15:03:27', 'KRUPALI1@PRAAJASV.COM'),
(271, 161, 20, 'Open 1', 'RNR', '2024-06-14', '15:03:52', 'KRUPALI1@PRAAJASV.COM'),
(272, 165, 20, 'Open 1', 'RNR', '2024-06-14', '15:04:08', 'KRUPALI1@PRAAJASV.COM'),
(273, 167, 8, 'Open 1', 'Lead Created', '2024-06-14', '15:04:49', 'shagun@gmail.com'),
(274, 162, 20, 'Open 4', 'DEMO GOING ON ', '2024-06-14', '15:05:47', 'KRUPALI1@PRAAJASV.COM'),
(275, 168, 20, 'Open 1', 'Lead Created', '2024-06-14', '15:06:06', 'KRUPALI1@PRAAJASV.COM'),
(276, 167, 8, 'Open 1', 'fr 1yr offline/enq in unacademy-friend was studying/will come with guardian on Monday', '2024-06-14', '15:06:13', 'shagun@gmail.com'),
(277, 166, 8, 'Open 1', 'fr 1yr offline/enq in unacademy-friend was studying/will come with guardian on Monday', '2024-06-14', '15:06:29', 'shagun@gmail.com'),
(278, 168, 20, 'Open 1', 'DAY ATTEND ,\r\nTOMORROW GIVE FINAL ANS .', '2024-06-14', '15:07:50', 'KRUPALI1@PRAAJASV.COM'),
(279, 169, 20, 'Open 1', 'Lead Created', '2024-06-14', '15:07:54', 'KRUPALI1@PRAAJASV.COM'),
(280, 169, 20, 'Open 1', 'RNR', '2024-06-14', '15:08:16', 'KRUPALI1@PRAAJASV.COM'),
(281, 169, 20, 'Open 1', 'BUSY', '2024-06-14', '15:08:30', 'KRUPALI1@PRAAJASV.COM'),
(282, 168, 20, 'Open 1', 'DEMO GOING ON IN CHAHAL AHEMDABAD CONVINCE FOR AHEMDABAD BRANCH', '2024-06-14', '15:08:44', 'KRUPALI1@PRAAJASV.COM'),
(283, 168, 20, 'Open 1', 'RNR', '2024-06-14', '15:09:48', 'KRUPALI1@PRAAJASV.COM'),
(284, 170, 20, 'Open 4', 'Lead Created', '2024-06-14', '15:11:43', 'KRUPALI1@PRAAJASV.COM'),
(285, 170, 20, 'Open 4', 'RNR', '2024-06-14', '15:12:08', 'KRUPALI1@PRAAJASV.COM'),
(286, 171, 20, 'Open 1', 'Lead Created', '2024-06-14', '15:12:11', 'KRUPALI1@PRAAJASV.COM'),
(287, 171, 20, 'Open 1', 'DUE TO JOB AND LAST YEAR OF COLLEGE ', '2024-06-14', '15:13:16', 'KRUPALI1@PRAAJASV.COM'),
(288, 172, 20, 'Open 1', 'Lead Created', '2024-06-14', '15:14:32', 'KRUPALI1@PRAAJASV.COM'),
(289, 173, 20, 'Open 1', 'Lead Created', '2024-06-14', '15:15:02', 'KRUPALI1@PRAAJASV.COM'),
(290, 173, 20, 'Open 1', 'RNR', '2024-06-14', '15:15:23', 'KRUPALI1@PRAAJASV.COM'),
(291, 173, 20, 'Open 1', 'THINK & ASK PARENTS AFTER DISCUSSION GIVE CONFIRM ANS \r\n', '2024-06-14', '15:16:26', 'KRUPALI1@PRAAJASV.COM'),
(292, 172, 20, 'Open 2', 'IN JULY INTERESTED', '2024-06-14', '15:16:40', 'KRUPALI1@PRAAJASV.COM'),
(293, 173, 20, 'Open 1', 'RNR', '2024-06-14', '15:16:41', 'KRUPALI1@PRAAJASV.COM'),
(294, 173, 20, 'Open 1', 'RNR', '2024-06-14', '15:16:53', 'KRUPALI1@PRAAJASV.COM'),
(295, 174, 20, 'Open 1', 'Lead Created', '2024-06-14', '15:18:30', 'KRUPALI1@PRAAJASV.COM'),
(296, 174, 20, 'Open 1', 'BUSY', '2024-06-14', '15:18:48', 'KRUPALI1@PRAAJASV.COM'),
(297, 174, 20, 'Open 1', '29TH INTRESTED TO COME FOR DEMO', '2024-06-14', '15:19:18', 'KRUPALI1@PRAAJASV.COM'),
(298, 174, 20, 'Open 1', 'RNR', '2024-06-14', '15:19:30', 'KRUPALI1@PRAAJASV.COM'),
(299, 175, 11, 'admission open', 'Lead Created', '2024-06-14', '15:24:27', 'dipti@praajasv.com'),
(300, 176, 12, 'Open 1', 'Lead Created', '2024-06-14', '15:25:36', 'khushbu@gmail.com'),
(301, 177, 12, 'Open 4', 'Lead Created', '2024-06-14', '15:27:00', 'khushbu@gmail.com'),
(302, 178, 20, 'Open 1', 'Lead Created', '2024-06-14', '15:27:03', 'KRUPALI1@PRAAJASV.COM'),
(303, 179, 20, 'Open 1', 'Lead Created', '2024-06-14', '15:27:06', 'KRUPALI1@PRAAJASV.COM'),
(304, 178, 20, 'Open 1', 'RNR', '2024-06-14', '15:27:21', 'KRUPALI1@PRAAJASV.COM'),
(305, 179, 20, 'Open 1', 'RNR', '2024-06-14', '15:27:31', 'KRUPALI1@PRAAJASV.COM'),
(306, 179, 20, 'Open 1', 'RNR\r\n', '2024-06-14', '15:27:33', 'KRUPALI1@PRAAJASV.COM'),
(307, 179, 20, 'Open 1', 'RNR', '2024-06-14', '15:27:43', 'KRUPALI1@PRAAJASV.COM'),
(308, 179, 20, 'Open 1', 'BUSY', '2024-06-14', '15:27:53', 'KRUPALI1@PRAAJASV.COM'),
(309, 180, 20, 'Open 1', 'Lead Created', '2024-06-14', '15:30:00', 'KRUPALI1@PRAAJASV.COM'),
(310, 180, 20, 'Open 1', 'IN THREE & FOUR DAYS VISIT ACADEMY AGAIN', '2024-06-14', '15:31:23', 'KRUPALI1@PRAAJASV.COM'),
(311, 181, 20, 'Open 4', 'Lead Created', '2024-06-14', '15:31:28', 'KRUPALI1@PRAAJASV.COM'),
(312, 182, 22, 'Confirmation Done', 'Lead Created', '2024-06-14', '15:32:23', 'gayatri@praajasv.com'),
(313, 183, 6, 'Open 1', 'Lead Created', '2024-06-14', '15:48:04', ''),
(314, 184, 20, 'Open 4', 'Lead Created', '2024-06-14', '16:06:39', 'krupali1@praajasv.com'),
(315, 180, 20, 'Open 1', 'CONFIRM MONDAY VISIT ACADEMY FOR ADMISSION ', '2024-06-14', '16:06:49', 'KRUPALI1@PRAAJASV.COM'),
(316, 185, 20, 'Open 4', 'Lead Created', '2024-06-14', '16:07:58', 'krupali1@praajasv.com'),
(317, 186, 15, 'Open 1', 'Lead Created', '2024-06-14', '16:09:33', 'krupali1@praajasv.com'),
(318, 187, 20, 'Confirmation Done', 'Lead Created', '2024-06-14', '16:12:09', 'krupali1@praajasv.com'),
(319, 188, 20, 'Open 1', 'Lead Created', '2024-06-14', '16:14:32', 'krupali1@praajasv.com'),
(320, 188, 20, 'Open 1', 'RNR', '2024-06-14', '16:14:44', 'krupali1@praajasv.com'),
(321, 189, 20, 'Open 1', 'Lead Created', '2024-06-14', '16:15:53', 'krupali1@praajasv.com'),
(322, 189, 20, 'Open 1', 'RNR', '2024-06-14', '16:16:05', 'krupali1@praajasv.com'),
(323, 190, 20, 'not interested', 'Lead Created', '2024-06-14', '16:17:08', 'krupali1@praajasv.com'),
(324, 191, 20, 'Open 4', 'Lead Created', '2024-06-14', '16:18:28', 'krupali1@praajasv.com'),
(325, 180, 20, 'Open 1', 'POSTPONE ADMISSION DUE TO FAMILY PROBLEMS  \r\n', '2024-06-14', '16:19:17', 'KRUPALI1@PRAAJASV.COM'),
(326, 192, 20, 'Open 3', 'Lead Created', '2024-06-14', '16:22:13', 'KRUPALI1@PRAAJASV.COM'),
(327, 193, 20, 'Open 1', 'Lead Created', '2024-06-14', '16:22:35', 'krupali1@praajasv.com'),
(328, 193, 20, 'not interested', 'NOT IN SERVICE ', '2024-06-14', '16:22:55', 'krupali1@praajasv.com'),
(329, 192, 20, 'Open 3', 'today evening give confirm ans want to join or not', '2024-06-14', '16:23:03', 'KRUPALI1@PRAAJASV.COM'),
(330, 193, 20, 'Open 3', 'cut the call', '2024-06-14', '16:23:27', 'KRUPALI1@PRAAJASV.COM'),
(331, 192, 20, 'Open 3', 'small baby so, not possible so not intrested', '2024-06-14', '16:24:10', 'KRUPALI1@PRAAJASV.COM'),
(332, 194, 20, 'Open 1', 'Lead Created', '2024-06-14', '16:25:28', 'KRUPALI1@PRAAJASV.COM'),
(333, 194, 20, 'Open 1', 'RNR', '2024-06-14', '16:25:49', 'KRUPALI1@PRAAJASV.COM'),
(334, 194, 20, 'Open 1', 'WRONG NUMBER\r\n', '2024-06-14', '16:26:07', 'KRUPALI1@PRAAJASV.COM'),
(335, 195, 20, 'Open 1', 'Lead Created', '2024-06-14', '16:35:22', 'krupali1@praajasv.com'),
(336, 195, 20, 'Open 1', 'RNR', '2024-06-14', '16:35:33', 'krupali1@praajasv.com'),
(337, 196, 20, 'Open 1', 'Lead Created', '2024-06-14', '16:37:13', 'krupali1@praajasv.com'),
(338, 196, 20, 'not interested', 'INTERESTED IN ABHAYAM ACADEMY BHAVNAGAR ', '2024-06-14', '16:38:30', 'krupali1@praajasv.com'),
(339, 197, 20, 'Open 1', 'Lead Created', '2024-06-14', '16:41:13', 'KRUPALI1@PRAAJASV.COM'),
(340, 197, 20, 'Open 1', 'NR', '2024-06-14', '16:41:33', 'KRUPALI1@PRAAJASV.COM'),
(341, 197, 20, 'Open 1', 'RNR', '2024-06-14', '16:41:46', 'KRUPALI1@PRAAJASV.COM'),
(342, 198, 11, 'Open 1', 'Lead Created', '2024-06-14', '16:41:47', 'dipti@praajasv.com'),
(343, 197, 20, 'Open 1', 'RNR', '2024-06-14', '16:41:58', 'KRUPALI1@PRAAJASV.COM'),
(344, 199, 11, 'Open 1', 'Lead Created', '2024-06-14', '16:43:14', 'dipti@praajasv.com'),
(345, 200, 20, 'Open 1', 'Lead Created', '2024-06-14', '16:43:25', 'KRUPALI1@PRAAJASV.COM'),
(346, 200, 20, 'Open 1', 'RNR', '2024-06-14', '16:43:44', 'KRUPALI1@PRAAJASV.COM'),
(347, 200, 20, 'Open 1', 'RNR', '2024-06-14', '16:44:00', 'KRUPALI1@PRAAJASV.COM'),
(348, 200, 20, 'Open 1', 'RNR', '2024-06-14', '16:44:11', 'KRUPALI1@PRAAJASV.COM'),
(349, 200, 20, 'Open 1', 'RNR', '2024-06-14', '16:44:22', 'KRUPALI1@PRAAJASV.COM'),
(350, 182, 22, 'admission close', 'admission done', '2024-06-14', '16:45:41', 'gayatri@praajasv.com'),
(351, 182, 22, 'admission close', 'CCE MAINS LIVE ADMISSSION DONE', '2024-06-14', '16:49:49', 'gayatri@praajasv.com'),
(352, 201, 20, 'Open 1', 'Lead Created', '2024-06-14', '16:49:52', 'krupali1@praajasv.com'),
(353, 201, 20, 'not interested', 'ONLY INQUARY ', '2024-06-14', '16:50:35', 'krupali1@praajasv.com'),
(354, 202, 11, 'Open 1', 'Lead Created', '2024-06-14', '16:52:17', 'dipti@praajasv.com'),
(355, 203, 11, 'Open 1', 'Lead Created', '2024-06-14', '16:54:06', 'dipti@praajasv.com'),
(356, 204, 11, 'Open 1', 'Lead Created', '2024-06-14', '16:56:02', 'dipti@praajasv.com'),
(357, 205, 20, 'Open 4', 'Lead Created', '2024-06-14', '17:16:38', 'krupali1@praajasv.com'),
(358, 206, 20, 'Open 1', 'Lead Created', '2024-06-14', '17:18:23', 'krupali1@praajasv.com'),
(359, 206, 20, 'Open 1', 'RNR', '2024-06-14', '17:19:35', 'krupali1@praajasv.com'),
(360, 207, 8, 'Open 1', 'Lead Created', '2024-06-14', '17:28:51', ''),
(361, 208, 8, 'Open 1', 'Lead Created', '2024-06-14', '17:32:15', 'shagun@gmail.com'),
(362, 209, 8, 'Open 1', 'Lead Created', '2024-06-14', '17:33:13', 'shagun@gmail.com'),
(363, 207, 8, 'Open 1', 'fr 1yr offline/will inform me tom for 19th june batch/ASD reg clg 1st yr std-more twds july eve batch/came from Gurugram', '2024-06-14', '17:35:47', 'shagun@gmail.com'),
(364, 208, 8, 'Open 1', 'fr 1yr offline/already done socio batch from raus ias/will inform me tom fr the 19th june batch/more twds july eve batch', '2024-06-14', '17:36:52', 'shagun@gmail.com'),
(365, 209, 8, 'Open 1', 'fr 1yr offline 19th june batch/said will come tom/wants to explore forum/already taken subs of unacademy and had a bad exp reg the faculty', '2024-06-14', '17:38:05', 'shagun@gmail.com'),
(366, 210, 20, 'Open 1', 'Lead Created', '2024-06-14', '17:40:14', 'krupali1@praajasv.com'),
(367, 210, 20, 'Open 1', 'INTERESTED TO AHMEDABAD ', '2024-06-14', '17:40:33', 'krupali1@praajasv.com'),
(368, 211, 20, 'Open 1', 'Lead Created', '2024-06-14', '17:42:43', 'krupali1@praajasv.com'),
(369, 211, 20, 'Open 4', 'DEMO GOING ON ', '2024-06-14', '17:43:02', 'krupali1@praajasv.com'),
(370, 212, 20, 'Open 1', 'Lead Created', '2024-06-14', '17:44:54', 'krupali1@praajasv.com'),
(371, 213, 20, 'Open 1', 'Lead Created', '2024-06-14', '17:45:07', ''),
(372, 212, 20, 'Open 1', 'CUT THE CALL ', '2024-06-14', '17:45:16', 'krupali1@praajasv.com'),
(373, 213, 20, 'Open 1', 'THINK AND GIVE ANS.', '2024-06-14', '17:46:05', 'KRUPALI1@PRAAJASV.COM'),
(374, 213, 20, 'Open 1', 'RNR', '2024-06-14', '17:46:20', 'KRUPALI1@PRAAJASV.COM'),
(375, 213, 20, 'Open 1', 'RNR', '2024-06-14', '17:46:33', 'KRUPALI1@PRAAJASV.COM'),
(376, 214, 20, 'Open 1', 'Lead Created', '2024-06-14', '17:48:13', 'krupali1@praajasv.com'),
(377, 214, 20, 'Open 1', 'RNR', '2024-06-14', '17:49:23', 'krupali1@praajasv.com'),
(378, 215, 20, 'Open 1', 'Lead Created', '2024-06-14', '17:54:44', 'KRUPALI1@PRAAJASV.COM'),
(379, 216, 20, 'Open 1', 'Lead Created', '2024-06-14', '17:55:28', 'krupali1@praajasv.com'),
(380, 215, 20, 'Open 1', 'give ans after talk with his father', '2024-06-14', '17:56:33', 'KRUPALI1@PRAAJASV.COM'),
(381, 216, 20, 'Open 1', 'DISTANCE PROBLEAM ', '2024-06-14', '17:57:08', 'krupali1@praajasv.com'),
(382, 215, 20, 'Open 1', 'RNR', '2024-06-14', '17:57:08', 'KRUPALI1@PRAAJASV.COM'),
(383, 215, 20, 'Open 1', 'BUSY / FINANCIAL PROBLEM', '2024-06-14', '17:57:39', 'KRUPALI1@PRAAJASV.COM'),
(384, 215, 20, 'Open 1', 'CALL CUT', '2024-06-14', '17:57:59', 'KRUPALI1@PRAAJASV.COM'),
(385, 217, 22, 'Open 1', 'Lead Created', '2024-06-14', '18:01:24', 'gayatri@praajasv.com'),
(386, 218, 20, 'Open 1', 'Lead Created', '2024-06-14', '18:02:04', 'KRUPALI1@PRAAJASV.COM'),
(387, 218, 20, 'Open 1', 'RNR', '2024-06-14', '18:02:39', 'KRUPALI1@PRAAJASV.COM'),
(388, 218, 20, 'Open 1', 'RNR', '2024-06-14', '18:02:55', 'KRUPALI1@PRAAJASV.COM'),
(389, 218, 20, 'Open 1', 'BUSY', '2024-06-14', '18:03:10', 'KRUPALI1@PRAAJASV.COM'),
(390, 218, 20, 'Open 1', 'SWITCH OFF', '2024-06-14', '18:03:27', 'KRUPALI1@PRAAJASV.COM'),
(391, 218, 20, 'Open 1', 'RNR', '2024-06-14', '18:03:44', 'KRUPALI1@PRAAJASV.COM'),
(392, 219, 22, 'Open 1', 'Lead Created', '2024-06-14', '18:04:18', 'gayatri@praajasv.com'),
(393, 220, 6, 'not interested', 'Lead Created', '2024-06-14', '18:05:05', 'deepika@gmail.com'),
(394, 221, 20, 'Open 1', 'Lead Created', '2024-06-14', '18:05:41', 'KRUPALI1@PRAAJASV.COM'),
(395, 221, 20, 'Open 1', 'TOMORROW GIVE ANS AFTER DISCUS WITH PARENTS', '2024-06-14', '18:08:09', 'KRUPALI1@PRAAJASV.COM'),
(396, 222, 22, 'Open 1', 'Lead Created', '2024-06-14', '18:10:41', 'gayatri@praajasv.com'),
(397, 221, 20, 'Open 1', 'NR', '2024-06-14', '18:10:42', 'KRUPALI1@PRAAJASV.COM'),
(398, 221, 20, 'Open 1', 'IN TWO THERE DAY GIVE FINAL ANS', '2024-06-14', '18:11:30', 'KRUPALI1@PRAAJASV.COM'),
(399, 221, 20, 'Open 1', 'TOMORROW CONFIRM THE ADMISSION ', '2024-06-14', '18:12:08', 'KRUPALI1@PRAAJASV.COM'),
(400, 221, 20, 'Open 1', 'RNR', '2024-06-14', '18:12:22', 'KRUPALI1@PRAAJASV.COM'),
(401, 223, 20, 'ADMISSION CLOSE', 'Lead Created', '2024-06-14', '18:13:02', 'krupali1@praajasv.com'),
(402, 224, 22, 'Open 1', 'Lead Created', '2024-06-14', '18:14:13', 'gayatri@praajasv.com'),
(403, 225, 20, 'Open 1', 'Lead Created', '2024-06-14', '18:15:57', 'krupali1@praajasv.com'),
(404, 226, 20, 'Open 4', 'Lead Created', '2024-06-14', '18:17:11', 'krupali1@praajasv.com'),
(405, 227, 22, 'Open 1', 'Lead Created', '2024-06-14', '18:18:13', 'gayatri@praajasv.com'),
(406, 228, 22, 'Open 1', 'Lead Created', '2024-06-14', '18:19:26', 'gayatri@praajasv.com'),
(407, 229, 20, 'Open 1', 'Lead Created', '2024-06-14', '18:20:52', 'KRUPALI1@PRAAJASV.COM'),
(408, 230, 22, 'Open 1', 'Lead Created', '2024-06-14', '18:21:18', 'gayatri@praajasv.com'),
(409, 229, 20, 'Open 1', 'NUMBER NOT IN SERVICE ', '2024-06-14', '18:21:41', 'KRUPALI1@PRAAJASV.COM'),
(410, 229, 20, 'Open 1', 'NOT IN SERVICE ', '2024-06-14', '18:21:57', 'KRUPALI1@PRAAJASV.COM'),
(411, 229, 20, 'Open 1', 'RNR', '2024-06-14', '18:22:10', 'KRUPALI1@PRAAJASV.COM'),
(412, 231, 22, 'Open 1', 'Lead Created', '2024-06-14', '18:24:16', 'gayatri@praajasv.com'),
(413, 232, 20, 'Open 1', 'Lead Created', '2024-06-14', '18:26:39', 'KRUPALI1@PRAAJASV.COM'),
(414, 232, 20, 'Open 1', 'RNR', '2024-06-14', '18:27:01', 'KRUPALI1@PRAAJASV.COM'),
(415, 232, 20, 'Open 1', 'RNR', '2024-06-14', '18:27:13', 'KRUPALI1@PRAAJASV.COM'),
(416, 232, 20, 'Open 1', 'RNR', '2024-06-14', '18:27:25', 'KRUPALI1@PRAAJASV.COM'),
(417, 232, 20, 'Open 1', 'TODAY EVENING GIVE FINAL ANS ', '2024-06-14', '18:27:51', 'KRUPALI1@PRAAJASV.COM'),
(418, 233, 22, 'not interested', 'Lead Created', '2024-06-14', '18:27:58', 'gayatri@praajasv.com'),
(419, 232, 20, 'Open 1', 'RNR', '2024-06-14', '18:28:06', 'KRUPALI1@PRAAJASV.COM'),
(420, 234, 20, 'Open 1', 'Lead Created', '2024-06-14', '18:33:03', 'KRUPALI1@PRAAJASV.COM'),
(421, 234, 20, 'Open 1', 'BUSY / COME IN 16 MAY', '2024-06-14', '18:33:31', 'KRUPALI1@PRAAJASV.COM'),
(422, 234, 20, 'Open 1', 'RNR', '2024-06-14', '18:33:43', 'KRUPALI1@PRAAJASV.COM'),
(423, 235, 20, 'Open 1', 'Lead Created', '2024-06-14', '18:35:25', 'KRUPALI1@PRAAJASV.COM'),
(424, 235, 20, 'Open 1', 'tomorrow visit academy ', '2024-06-14', '18:35:57', 'KRUPALI1@PRAAJASV.COM'),
(425, 235, 20, 'Open 1', 'today evening think and give ans ', '2024-06-14', '18:36:31', 'KRUPALI1@PRAAJASV.COM'),
(426, 235, 20, 'Open 1', 'RNR', '2024-06-14', '18:36:45', 'KRUPALI1@PRAAJASV.COM'),
(427, 236, 20, 'Open 4', 'Lead Created', '2024-06-14', '18:44:06', 'krupali1@praajasv.com'),
(428, 237, 20, 'Open 1', 'Lead Created', '2024-06-14', '18:45:41', 'krupali1@praajasv.com'),
(429, 237, 20, 'Open 1', 'BUSY', '2024-06-14', '18:46:07', 'krupali1@praajasv.com'),
(430, 238, 20, 'Open 4', 'Lead Created', '2024-06-14', '18:48:02', 'krupali1@praajasv.com'),
(431, 239, 20, 'Open 4', 'Lead Created', '2024-06-14', '18:49:51', 'krupali1@praajasv.com'),
(432, 240, 20, 'Open 1', 'Lead Created', '2024-06-14', '18:49:56', 'KRUPALI1@PRAAJASV.COM'),
(433, 240, 20, 'Open 3', 'HE WANTS TO EVENING BATCH', '2024-06-14', '18:50:47', 'KRUPALI1@PRAAJASV.COM'),
(434, 241, 20, 'Open 1', 'Lead Created', '2024-06-14', '18:51:21', 'krupali1@praajasv.com'),
(435, 241, 20, 'Open 1', 'JUST 12TH COMPLETE CONVINCE FOR UPSC THINK &GIVE ANS ', '2024-06-14', '18:51:58', 'krupali1@praajasv.com'),
(436, 242, 20, 'Open 1', 'Lead Created', '2024-06-14', '18:53:15', 'KRUPALI1@PRAAJASV.COM'),
(437, 242, 20, 'Open 1', 'TODAY  EVENING  GIVE CONFIRMATION ANS', '2024-06-14', '18:55:09', 'KRUPALI1@PRAAJASV.COM'),
(438, 242, 20, 'Open 1', 'DICS, DHERYA, PRAAJASV .. AFTER DEMO GIVE FINAL ANS', '2024-06-14', '18:55:57', 'KRUPALI1@PRAAJASV.COM'),
(439, 242, 20, 'Open 1', 'BUSY', '2024-06-14', '18:56:12', 'KRUPALI1@PRAAJASV.COM'),
(440, 242, 20, 'Open 1', 'RNR', '2024-06-14', '18:56:25', 'KRUPALI1@PRAAJASV.COM'),
(441, 243, 20, 'Open 1', 'Lead Created', '2024-06-14', '18:56:47', 'krupali1@praajasv.com'),
(442, 244, 20, 'Open 1', 'Lead Created', '2024-06-15', '11:20:05', 'krupali1@praajasv.com'),
(443, 245, 20, 'Open 1', 'Lead Created', '2024-06-15', '11:22:35', 'krupali1@praajasv.com'),
(444, 245, 20, 'Open 1', 'INTERESTED TO AHMEDABAD BRANCH ', '2024-06-15', '11:23:00', 'krupali1@praajasv.com'),
(445, 246, 20, 'Open 1', 'Lead Created', '2024-06-15', '11:26:37', 'krupali1@praajasv.com'),
(446, 247, 20, 'Open 1', 'Lead Created', '2024-06-15', '11:28:18', 'krupali1@praajasv.com'),
(447, 248, 20, 'Open 4', 'Lead Created', '2024-06-15', '11:32:36', 'krupali1@praajasv.com'),
(448, 249, 20, 'Open 1', 'Lead Created', '2024-06-15', '11:35:53', 'krupali1@praajasv.com'),
(449, 249, 20, 'Open 1', 'INTERESTED IN AHMEDABAD BRANCH ', '2024-06-15', '11:36:22', 'krupali1@praajasv.com'),
(450, 250, 20, 'Open 4', 'Lead Created', '2024-06-15', '11:40:17', 'krupali1@praajasv.com'),
(451, 251, 20, 'Open 1', 'Lead Created', '2024-06-15', '11:44:58', 'krupali1@praajasv.com'),
(452, 252, 22, 'Open 1', 'Lead Created', '2024-06-15', '12:21:59', 'gayatri@praajasv.com'),
(453, 253, 22, 'Open 1', 'Lead Created', '2024-06-15', '12:26:16', 'gayatri@praajasv.com'),
(454, 254, 22, 'Open 1', 'Lead Created', '2024-06-15', '12:28:22', 'gayatri@praajasv.com'),
(455, 255, 22, 'Open 1', 'Lead Created', '2024-06-15', '12:30:04', 'gayatri@praajasv.com'),
(456, 256, 22, 'Open 1', 'Lead Created', '2024-06-15', '12:32:19', 'gayatri@praajasv.com'),
(457, 257, 20, 'Open 4', 'Lead Created', '2024-06-15', '12:47:01', ''),
(458, 258, 22, 'Open 1', 'Lead Created', '2024-06-15', '12:56:50', 'gayatri@praajasv.com'),
(459, 259, 22, 'Open 1', 'Lead Created', '2024-06-15', '12:59:16', 'gayatri@praajasv.com'),
(460, 260, 22, 'Open 1', 'Lead Created', '2024-06-15', '13:02:21', 'gayatri@praajasv.com'),
(461, 261, 22, 'Open 1', 'Lead Created', '2024-06-15', '13:05:18', 'gayatri@praajasv.com'),
(462, 262, 22, 'Open 1', 'Lead Created', '2024-06-15', '13:07:05', 'gayatri@praajasv.com'),
(463, 263, 22, 'Open 1', 'Lead Created', '2024-06-15', '13:09:19', 'gayatri@praajasv.com'),
(464, 264, 22, 'Open 1', 'Lead Created', '2024-06-15', '13:18:45', 'gayatri@praajasv.com'),
(465, 265, 22, 'Open 1', 'Lead Created', '2024-06-15', '13:20:41', 'gayatri@praajasv.com'),
(466, 266, 22, 'Open 1', 'Lead Created', '2024-06-15', '13:23:12', 'gayatri@praajasv.com'),
(467, 267, 22, 'Open 1', 'Lead Created', '2024-06-15', '13:29:35', 'gayatri@praajasv.com'),
(468, 268, 22, 'Open 1', 'Lead Created', '2024-06-15', '13:32:05', 'gayatri@praajasv.com'),
(469, 269, 22, 'Open 1', 'Lead Created', '2024-06-15', '13:34:50', 'gayatri@praajasv.com'),
(470, 270, 8, 'Open 1', 'Lead Created', '2024-06-15', '14:12:24', ''),
(471, 270, 8, 'Open 1', 'fr 1yr offline/targeting 2025/from uttrakhand/will inform me on 17th june for classes', '2024-06-15', '14:14:38', 'shagun@gmail.com'),
(472, 271, 8, 'Open 1', 'Lead Created', '2024-06-15', '14:16:27', 'shagun@gmail.com'),
(473, 272, 22, 'Open 1', 'Lead Created', '2024-06-15', '14:39:20', 'gayatri@praajasv.com'),
(474, 273, 22, 'Open 2', 'Lead Created', '2024-06-15', '14:42:11', 'gayatri@praajasv.com'),
(475, 274, 22, 'ADMISSION CLOSE', 'Lead Created', '2024-06-15', '14:45:06', 'gayatri@praajasv.com'),
(476, 275, 22, 'not interested', 'Lead Created', '2024-06-15', '14:46:55', 'gayatri@praajasv.com'),
(477, 276, 22, 'not interested', 'Lead Created', '2024-06-15', '14:52:11', 'gayatri@praajasv.com'),
(478, 277, 22, 'ADMISSION CLOSE', 'Lead Created', '2024-06-15', '14:56:00', 'gayatri@praajasv.com'),
(479, 278, 22, 'Open 2', 'Lead Created', '2024-06-15', '14:58:20', 'gayatri@praajasv.com'),
(480, 279, 22, 'Open 1', 'Lead Created', '2024-06-15', '15:00:09', 'gayatri@praajasv.com'),
(481, 280, 22, 'Open 1', 'Lead Created', '2024-06-15', '15:01:29', 'gayatri@praajasv.com'),
(482, 281, 22, 'not interested', 'Lead Created', '2024-06-15', '15:04:35', 'gayatri@praajasv.com'),
(483, 282, 22, 'ADMISSION CLOSE', 'Lead Created', '2024-06-15', '15:07:17', 'gayatri@praajasv.com'),
(484, 283, 22, 'not interested', 'Lead Created', '2024-06-15', '15:10:44', 'gayatri@praajasv.com'),
(485, 284, 11, 'not interested', 'Lead Created', '2024-06-15', '15:13:50', 'dipti@praajasv.com'),
(486, 285, 11, 'Open 1', 'Lead Created', '2024-06-15', '15:20:46', 'dipti@praajasv.com'),
(487, 286, 11, 'Open 1', 'Lead Created', '2024-06-15', '15:22:01', 'dipti@praajasv.com'),
(488, 287, 11, 'admission open', 'Lead Created', '2024-06-15', '15:24:46', 'dipti@praajasv.com'),
(489, 288, 8, 'Open 1', 'Lead Created', '2024-06-15', '15:38:49', ''),
(490, 289, 8, 'Open 1', 'Lead Created', '2024-06-15', '16:24:51', ''),
(491, 289, 8, 'Open 1', 'fr 1yr offline/from Chandigarh/fr 1st july batch/will inform me on 22nd june', '2024-06-15', '16:28:45', 'shagun@gmail.com'),
(492, 290, 6, 'not interested', 'Lead Created', '2024-06-15', '16:36:05', 'deepika@gmail.com'),
(493, 291, 6, 'not interested', 'Lead Created', '2024-06-15', '16:37:27', 'deepika@gmail.com'),
(494, 292, 6, 'not interested', 'Lead Created', '2024-06-15', '16:39:56', 'deepika@gmail.com'),
(495, 293, 6, 'Open 1', 'Lead Created', '2024-06-15', '16:42:28', 'deepika@gmail.com'),
(496, 294, 6, 'not interested', 'Lead Created', '2024-06-15', '16:45:47', 'deepika@gmail.com'),
(497, 295, 6, 'Open 1', 'Lead Created', '2024-06-15', '17:05:09', 'deepika@gmail.com'),
(498, 296, 22, 'Open 1', 'Lead Created', '2024-06-15', '18:04:12', 'gayatri@praajasv.com'),
(499, 297, 22, 'not interested', 'Lead Created', '2024-06-15', '18:06:10', 'gayatri@praajasv.com'),
(500, 298, 22, 'ADMISSION CLOSE', 'Lead Created', '2024-06-15', '18:07:41', 'gayatri@praajasv.com'),
(501, 299, 22, 'Open 1', 'Lead Created', '2024-06-15', '18:08:50', 'gayatri@praajasv.com'),
(502, 300, 22, 'Open 1', 'Lead Created', '2024-06-15', '18:10:30', 'gayatri@praajasv.com'),
(503, 301, 22, 'VISIT DONE ', 'Lead Created', '2024-06-15', '18:12:37', 'gayatri@praajasv.com'),
(504, 302, 22, 'Open 1', 'Lead Created', '2024-06-15', '18:14:29', 'gayatri@praajasv.com'),
(505, 303, 22, 'ADMISSION CLOSE', 'Lead Created', '2024-06-15', '18:17:36', 'gayatri@praajasv.com'),
(506, 304, 22, 'Open 3', 'Lead Created', '2024-06-15', '18:19:18', 'gayatri@praajasv.com'),
(507, 305, 22, 'Open 1', 'Lead Created', '2024-06-15', '18:21:26', 'gayatri@praajasv.com'),
(513, 311, 8, 'Open 1', 'Lead Created', '2024-06-16', '10:28:54', 'shagun@gmail.com'),
(514, 311, 8, 'Open 1', 'Convert To Admission', '2024-06-16', '10:29:59', 'shagun@gmail.com'),
(515, 312, 18, 'Confirmation Done', 'Lead Created', '2024-06-16', '11:36:37', 'bhavi@praajasv.com'),
(516, 312, 18, 'Confirmation Done', 'Convert To Admission', '2024-06-16', '11:38:21', 'bhavi@praajasv.com'),
(517, 313, 18, 'ADMISSION CLOSE', 'Lead Created', '2024-06-16', '11:47:38', 'bhavi@praajasv.com'),
(518, 313, 18, 'ADMISSION CLOSE', 'Convert To Admission', '2024-06-16', '11:49:13', 'bhavi@praajasv.com'),
(519, 314, 18, 'ADMISSION CLOSE', 'Lead Created', '2024-06-16', '11:55:27', 'bhavi@praajasv.com'),
(520, 314, 18, 'ADMISSION CLOSE', 'Convert To Admission', '2024-06-16', '11:56:20', 'bhavi@praajasv.com'),
(521, 315, 18, 'ADMISSION CLOSE', 'Lead Created', '2024-06-16', '12:33:41', 'bhavi@praajasv.com'),
(522, 315, 18, 'ADMISSION CLOSE', 'Convert To Admission', '2024-06-16', '12:40:20', 'bhavi@praajasv.com'),
(523, 316, 12, 'ADMISSION CLOSE', 'Lead Created', '2024-06-16', '12:51:57', 'khushbu@gmail.com'),
(524, 316, 12, 'ADMISSION CLOSE', 'Convert To Admission', '2024-06-16', '12:57:40', 'khushbu@gmail.com'),
(525, 317, 22, 'ADMISSION CLOSE', 'Lead Created', '2024-06-16', '14:43:06', 'gayatri@praajasv.com'),
(526, 318, 22, 'Open 1', 'Lead Created', '2024-06-16', '14:46:04', 'gayatri@praajasv.com'),
(527, 318, 22, 'Open 1', 'come after 2-3 days', '2024-06-16', '14:47:50', 'gayatri@praajasv.com'),
(528, 317, 22, 'ADMISSION CLOSE', 'ONLINE DONE', '2024-06-16', '14:51:46', 'gayatri@praajasv.com'),
(529, 305, 22, 'Open 1', 'CALL NOT RECEIVE', '2024-06-16', '14:52:59', 'gayatri@praajasv.com'),
(530, 304, 22, 'not interested', 'CUT THE CALL 2-3 TIME', '2024-06-16', '14:54:40', 'gayatri@praajasv.com'),
(531, 303, 22, 'ADMISSION CLOSE', 'ADMISSSION DONE OFFLINE BATCH', '2024-06-16', '14:55:39', 'gayatri@praajasv.com'),
(532, 302, 22, 'VISIT DONE ', 'ADMISSION  DONE IN AHMEDABAD BRANCH', '2024-06-16', '14:56:31', 'gayatri@praajasv.com'),
(533, 301, 22, 'Open 1', 'NOT RECEIVE CALL 2-3 TIMES', '2024-06-16', '14:57:54', 'gayatri@praajasv.com');
INSERT INTO `lead_assignment_history` (`ID`, `LeadID`, `AssignedTo`, `Status`, `Remark`, `CreatedDate`, `CreatedTime`, `CreatedBy`) VALUES
(534, 300, 22, 'VISIT DONE ', 'TALK WITH HER FATHER HE WILL DECID AND COME AFTER ', '2024-06-16', '14:59:22', 'gayatri@praajasv.com'),
(535, 299, 22, 'Open 1', 'NOT SURE ', '2024-06-16', '15:00:32', 'gayatri@praajasv.com'),
(536, 298, 22, 'ADMISSION CLOSE', 'ADMISSION DONE  IN OFFLENE BATCH', '2024-06-16', '15:01:27', 'gayatri@praajasv.com'),
(537, 297, 22, 'not interested', 'NOT RECEIVE ANY CALL,', '2024-06-16', '15:03:16', 'gayatri@praajasv.com'),
(538, 296, 22, 'ADMISSION CLOSE', 'ONLINE ADMISSION DONE', '2024-06-16', '15:06:50', 'gayatri@praajasv.com'),
(539, 283, 22, 'not interested', 'HE THINK HE IS NOT QULIFIED IN MAINS', '2024-06-16', '15:08:05', 'gayatri@praajasv.com'),
(540, 282, 22, 'ADMISSION CLOSE', 'ADMISSION DONE IN OFFLENE BATCH', '2024-06-16', '15:09:28', 'gayatri@praajasv.com'),
(541, 281, 22, 'not interested', 'HE SAY HE IS NOT INTRESTED', '2024-06-16', '15:10:19', 'gayatri@praajasv.com'),
(542, 279, 22, 'Open 1', 'NOT RECEIVE CALL3-4 TIME', '2024-06-16', '15:11:51', 'gayatri@praajasv.com'),
(543, 278, 22, 'Open 3', 'HE SAY TIME IS NOT CONVINNIENT BECAUSE OF JOB TIME', '2024-06-16', '15:13:26', 'gayatri@praajasv.com'),
(544, 276, 22, 'not interested', 'FEES REFUND DONE', '2024-06-16', '15:14:58', 'gayatri@praajasv.com'),
(545, 275, 22, 'not interested', 'HE NOT RECEIVE ANY CALL', '2024-06-16', '15:16:14', 'gayatri@praajasv.com'),
(546, 274, 22, 'ADMISSION CLOSE', 'ADMISSION DONE IN OFFLINE BATCH\r\n', '2024-06-16', '15:17:11', 'gayatri@praajasv.com'),
(547, 273, 22, 'Open 3', 'TIME IS NOT SET', '2024-06-16', '15:22:03', 'gayatri@praajasv.com'),
(548, 272, 22, 'not interested', 'HE NOT RECV CALL', '2024-06-16', '15:22:53', 'gayatri@praajasv.com'),
(549, 269, 22, 'ADMISSION CLOSE', 'ADMISSION DONE IN OFFLINE BATCH', '2024-06-16', '15:25:49', 'gayatri@praajasv.com'),
(550, 268, 22, 'Open 1', 'NOT SURE COME AFTER 2-4 DAYS , ', '2024-06-16', '15:30:46', 'gayatri@praajasv.com'),
(551, 266, 22, 'Open 1', 'NOT SURE', '2024-06-16', '15:32:41', 'gayatri@praajasv.com'),
(552, 265, 22, 'Open 1', '1000 DONE BUT ADMISSION NOT DONE', '2024-06-16', '15:34:25', 'gayatri@praajasv.com'),
(553, 264, 22, 'Open 1', 'NOT SURE , LAST CALL ON13/06/2024 CUT THE CALL', '2024-06-16', '15:35:27', 'gayatri@praajasv.com'),
(554, 263, 22, 'not interested', 'JOIN ANOTHER CLASS', '2024-06-16', '15:36:20', 'gayatri@praajasv.com'),
(555, 262, 22, 'Open 1', 'JOB TIME IS  10 TO 6    , SO NOT COMMING', '2024-06-16', '15:38:17', 'gayatri@praajasv.com'),
(556, 260, 22, 'Open 1', 'NOT RECEIVE THE CALL ', '2024-06-16', '15:39:30', 'gayatri@praajasv.com'),
(557, 255, 22, 'Open 1', 'CALL NOT RECEIVE', '2024-06-16', '15:43:18', 'gayatri@praajasv.com'),
(558, 254, 22, 'Open 1', 'NOT SURE', '2024-06-16', '15:44:44', 'gayatri@praajasv.com'),
(559, 253, 22, 'Open 3', 'PARENTS NE PUCHHINE KESE', '2024-06-16', '15:45:52', 'gayatri@praajasv.com'),
(560, 252, 22, 'Open 1', 'NOT  RECEIVE CALL', '2024-06-16', '15:46:44', 'gayatri@praajasv.com'),
(561, 231, 22, 'Open 1', 'NOT RECEIVE CALL', '2024-06-16', '15:48:23', 'gayatri@praajasv.com'),
(562, 230, 22, 'Open 1', 'NOT RECEIVE CALL', '2024-06-16', '15:49:02', 'gayatri@praajasv.com'),
(563, 228, 22, 'not interested', 'DO NOT CALL', '2024-06-16', '15:51:08', 'gayatri@praajasv.com'),
(564, 227, 22, 'not interested', '1000/- REFUND', '2024-06-16', '15:51:44', 'gayatri@praajasv.com'),
(565, 224, 22, 'Open 3', 'HE IS HOSPITALIZE SO, HE COME AFTER 1 MONTH', '2024-06-16', '15:52:43', 'gayatri@praajasv.com'),
(566, 222, 22, 'Open 1', 'NOT RECEIVE CALL', '2024-06-16', '15:53:25', 'gayatri@praajasv.com'),
(567, 219, 22, 'Open 3', 'THINK AND REPLY AFTER SOME TIMES', '2024-06-16', '15:54:36', 'gayatri@praajasv.com'),
(568, 217, 22, 'Open 3', 'HE GO TO NATIVE PLACE SO THINK ABOUT NEXT BATCH', '2024-06-16', '15:56:00', 'gayatri@praajasv.com'),
(569, 158, 22, 'Open 1', 'HE COME IN TO DEMPO ON MONDAY', '2024-06-16', '15:56:55', 'gayatri@praajasv.com'),
(570, 158, 22, 'Open 3', 'HE   WILL COME AFTER A 1 MONTH', '2024-06-16', '15:57:36', 'gayatri@praajasv.com'),
(571, 154, 22, 'Confirmation Done', 'SHE WILL DONE ADMISSION ON MONDAY', '2024-06-16', '15:58:26', 'gayatri@praajasv.com'),
(572, 319, 22, 'Open 1', 'Lead Created', '2024-06-16', '16:01:16', 'gayatri@praajasv.com'),
(573, 320, 22, 'Open 1', 'Lead Created', '2024-06-16', '16:11:28', 'gayatri@praajasv.com'),
(574, 321, 22, 'Open 1', 'Lead Created', '2024-06-16', '16:12:36', 'gayatri@praajasv.com'),
(575, 222, 22, 'Open 1', 'NOT RECV CALL', '2024-06-16', '16:24:42', 'gayatri@praajasv.com'),
(576, 322, 22, 'Open 1', 'Lead Created', '2024-06-16', '16:58:47', 'gayatri@praajasv.com'),
(577, 323, 22, 'Open 1', 'Lead Created', '2024-06-16', '17:00:26', 'gayatri@praajasv.com'),
(578, 324, 22, 'Open 1', 'Lead Created', '2024-06-16', '17:01:42', 'gayatri@praajasv.com'),
(579, 325, 22, 'Open 1', 'Lead Created', '2024-06-16', '17:02:49', 'gayatri@praajasv.com'),
(580, 326, 22, 'Open 1', 'Lead Created', '2024-06-16', '17:04:35', 'gayatri@praajasv.com'),
(581, 327, 22, 'Open 1', 'Lead Created', '2024-06-16', '17:06:19', 'gayatri@praajasv.com'),
(582, 328, 22, 'Open 1', 'Lead Created', '2024-06-16', '17:08:51', 'gayatri@praajasv.com'),
(583, 329, 22, 'Open 1', 'Lead Created', '2024-06-16', '17:10:28', 'gayatri@praajasv.com'),
(584, 330, 22, 'Open 1', 'Lead Created', '2024-06-16', '17:12:15', 'gayatri@praajasv.com'),
(585, 331, 22, 'Open 1', 'Lead Created', '2024-06-16', '17:13:51', 'gayatri@praajasv.com'),
(586, 332, 22, 'Open 1', 'Lead Created', '2024-06-16', '17:15:01', 'gayatri@praajasv.com'),
(587, 333, 22, 'Open 1', 'Lead Created', '2024-06-16', '17:17:01', 'gayatri@praajasv.com'),
(588, 334, 8, 'Open 1', 'Lead Created', '2024-06-16', '17:18:04', 'shagun@gmail.com'),
(589, 335, 22, 'Open 1', 'Lead Created', '2024-06-16', '17:18:13', 'gayatri@praajasv.com'),
(590, 334, 8, 'Open 1', 'fr 1yr offline/from Bihar/enq in brands/will attend demo in 19th june batch then will decide', '2024-06-16', '17:19:08', 'shagun@gmail.com'),
(591, 336, 22, 'Open 1', 'Lead Created', '2024-06-16', '17:20:06', 'gayatri@praajasv.com'),
(592, 337, 8, 'Open 1', 'Lead Created', '2024-06-16', '17:21:11', 'shagun@gmail.com'),
(593, 337, 8, 'Open 1', 'fr 1yr offline/friend of Harsh Singh-will go for 19th june batch', '2024-06-16', '17:21:44', 'shagun@gmail.com'),
(594, 338, 22, 'Open 1', 'Lead Created', '2024-06-16', '17:22:38', 'gayatri@praajasv.com'),
(595, 339, 8, 'Open 1', 'Lead Created', '2024-06-16', '17:24:42', 'shagun@gmail.com'),
(596, 339, 8, 'Open 1', 'fr 1yr offline/will reg from 10k today in eve', '2024-06-16', '17:25:17', 'shagun@gmail.com'),
(597, 340, 22, 'Open 1', 'Lead Created', '2024-06-16', '17:26:43', 'gayatri@praajasv.com'),
(598, 341, 8, 'Open 1', 'Lead Created', '2024-06-16', '17:26:50', 'shagun@gmail.com'),
(599, 341, 8, 'Open 1', 'fr 2yr offline/enq in PW only and not satisfied/for 19th june batch/will inform me tom fr the reg from 5k/160k', '2024-06-16', '17:27:09', 'shagun@gmail.com'),
(600, 342, 22, 'Open 1', 'Lead Created', '2024-06-16', '17:28:01', 'gayatri@praajasv.com'),
(601, 343, 22, 'Open 1', 'Lead Created', '2024-06-16', '17:29:23', 'gayatri@praajasv.com'),
(602, 344, 22, 'Open 1', 'Lead Created', '2024-06-16', '17:32:10', 'gayatri@praajasv.com'),
(603, 345, 8, 'Open 1', 'Lead Created', '2024-06-16', '17:32:27', 'shagun@gmail.com'),
(604, 346, 22, 'Open 1', 'Lead Created', '2024-06-16', '17:33:44', 'gayatri@praajasv.com'),
(605, 347, 22, 'Open 1', 'Lead Created', '2024-06-16', '17:35:11', 'gayatri@praajasv.com'),
(606, 348, 22, 'Open 1', 'Lead Created', '2024-06-16', '17:37:55', 'gayatri@praajasv.com'),
(607, 349, 22, 'Open 1', 'Lead Created', '2024-06-16', '17:40:18', 'gayatri@praajasv.com'),
(608, 350, 22, 'Open 1', 'Lead Created', '2024-06-16', '17:42:06', 'gayatri@praajasv.com'),
(609, 351, 22, 'Open 1', 'Lead Created', '2024-06-16', '17:43:43', 'gayatri@praajasv.com'),
(610, 352, 22, 'Open 1', 'Lead Created', '2024-06-16', '17:46:34', 'gayatri@praajasv.com'),
(611, 353, 22, 'Open 1', 'Lead Created', '2024-06-16', '17:48:52', 'gayatri@praajasv.com'),
(612, 354, 22, 'Open 1', 'Lead Created', '2024-06-16', '17:50:11', 'gayatri@praajasv.com'),
(613, 355, 22, 'Open 1', 'Lead Created', '2024-06-16', '17:51:36', 'gayatri@praajasv.com'),
(614, 356, 8, 'Open 1', 'Lead Created', '2024-06-16', '18:03:54', 'shagun@gmail.com'),
(615, 356, 8, 'Open 1', 'fr 1yr offline/from Gurugram/will come with father tom at 4pm/fr 19th june batch', '2024-06-16', '18:04:42', 'shagun@gmail.com'),
(616, 357, 18, 'ADMISSION CLOSE', 'Lead Created', '2024-06-17', '12:54:13', 'bhavi@praajasv.com'),
(617, 357, 18, 'ADMISSION CLOSE', 'Convert To Admission', '2024-06-17', '12:54:51', 'bhavi@praajasv.com'),
(618, 358, 6, 'Open 1', 'Lead Created', '2024-06-17', '13:24:17', ''),
(619, 359, 8, 'Open 1', 'Lead Created', '2024-06-17', '13:24:36', 'shagun@gmail.com'),
(620, 359, 8, 'Open 1', 'fr 1yr offline/from nangloi/prep done for NDA/will come for demo on 19th then will decide', '2024-06-17', '13:25:01', 'shagun@gmail.com'),
(621, 360, 8, 'Open 1', 'Lead Created', '2024-06-17', '13:27:04', 'shagun@gmail.com'),
(622, 360, 8, 'Open 1', 'fr 1yr offline/cousin is in Vision/but std is potential/will do reg in eve from 10k today and tom 30k/1lakh', '2024-06-17', '13:27:29', 'shagun@gmail.com'),
(623, 357, 18, 'ADMISSION CLOSE', 'ADMISSION DONE', '2024-06-17', '16:47:06', 'bhavi@praajasv.com'),
(624, 339, 8, 'Open 1', 'Convert To Admission', '2024-06-17', '17:21:04', 'shagun@gmail.com'),
(625, 361, 8, 'Open 1', 'Lead Created', '2024-06-17', '17:22:38', 'shagun@gmail.com'),
(626, 361, 8, 'Open 1', 'fr 1yr offline/19th june batch/cousin was studying in Drishti/will inform me fr reg', '2024-06-17', '17:29:11', 'shagun@gmail.com'),
(627, 362, 8, 'Open 1', 'Lead Created', '2024-06-17', '17:31:00', 'shagun@gmail.com'),
(628, 362, 8, 'Open 1', 'fr 1yr offline/from Maharashtra/bad exp in ensure/will do reg by tom fr 19th june batch', '2024-06-17', '17:31:20', 'shagun@gmail.com'),
(629, 363, 8, 'Open 1', 'Lead Created', '2024-06-17', '17:57:45', 'shagun@gmail.com'),
(630, 364, 8, 'Open 1', 'Lead Created', '2024-06-17', '17:59:22', 'shagun@gmail.com'),
(631, 364, 8, 'Open 1', 'fr 1yr offline/more twds vision and next /will confirm me fr 19th june batch', '2024-06-17', '18:00:05', 'shagun@gmail.com'),
(632, 365, 11, 'Open 1', 'Lead Created', '2024-06-18', '08:10:58', 'dipti@praajasv.com'),
(633, 366, 11, 'ADMISSION CLOSE', 'Lead Created', '2024-06-18', '08:13:09', 'dipti@praajasv.com'),
(634, 367, 11, 'not interested', 'Lead Created', '2024-06-18', '08:15:03', 'dipti@praajasv.com'),
(635, 368, 11, 'Open 1', 'Lead Created', '2024-06-18', '08:16:47', 'dipti@praajasv.com'),
(636, 369, 11, 'Open 4', 'Lead Created', '2024-06-18', '08:21:06', 'dipti@praajasv.com'),
(637, 370, 11, 'Open 1', 'Lead Created', '2024-06-18', '08:23:08', 'dipti@praajasv.com'),
(638, 371, 11, 'Open 1', 'Lead Created', '2024-06-18', '08:25:41', 'dipti@praajasv.com'),
(639, 372, 11, 'ADMISSION CLOSE', 'Lead Created', '2024-06-18', '08:28:43', 'dipti@praajasv.com'),
(640, 373, 11, 'Open 4', 'Lead Created', '2024-06-18', '08:32:05', 'dipti@praajasv.com'),
(641, 374, 11, 'Open 1', 'Lead Created', '2024-06-18', '08:37:51', 'dipti@praajasv.com'),
(642, 375, 11, 'Open 1', 'Lead Created', '2024-06-18', '08:43:05', 'dipti@praajasv.com'),
(643, 376, 11, 'Open 1', 'Lead Created', '2024-06-18', '08:46:37', 'dipti@praajasv.com'),
(644, 377, 11, 'Open 1', 'Lead Created', '2024-06-18', '09:29:22', 'dipti@praajasv.com'),
(645, 378, 11, 'Open 1', 'Lead Created', '2024-06-18', '09:31:20', 'dipti@praajasv.com'),
(646, 379, 11, 'Open 4', 'Lead Created', '2024-06-18', '09:36:07', 'dipti@praajasv.com'),
(647, 380, 11, 'Open 1', 'Lead Created', '2024-06-18', '09:38:40', 'dipti@praajasv.com'),
(648, 381, 11, 'VISIT DONE ', 'Lead Created', '2024-06-18', '09:54:55', 'dipti@praajasv.com'),
(649, 382, 11, 'Open 4', 'Lead Created', '2024-06-18', '10:00:55', 'dipti@praajasv.com'),
(650, 383, 11, 'Open 1', 'Lead Created', '2024-06-18', '10:42:52', 'dipti@praajasv.com'),
(651, 384, 22, 'Open 1', 'Lead Created', '2024-06-18', '10:44:13', 'gayatri@praajasv.com'),
(652, 385, 22, 'Open 1', 'Lead Created', '2024-06-18', '10:50:53', 'gayatri@praajasv.com'),
(653, 386, 11, 'Open 1', 'Lead Created', '2024-06-18', '10:51:49', 'dipti@praajasv.com'),
(654, 387, 11, 'Open 1', 'Lead Created', '2024-06-18', '10:55:18', 'dipti@praajasv.com'),
(655, 388, 22, 'Open 1', 'Lead Created', '2024-06-18', '11:01:26', 'gayatri@praajasv.com'),
(656, 389, 11, 'Open 4', 'Lead Created', '2024-06-18', '11:05:30', 'dipti@praajasv.com'),
(657, 390, 11, 'Open 1', 'Lead Created', '2024-06-18', '11:08:52', 'dipti@praajasv.com'),
(658, 391, 11, 'Open 1', 'Lead Created', '2024-06-18', '11:26:31', 'dipti@praajasv.com'),
(659, 392, 11, 'Open 1', 'Lead Created', '2024-06-18', '11:28:36', 'dipti@praajasv.com'),
(660, 393, 11, 'ADMISSION CLOSE', 'Lead Created', '2024-06-18', '11:33:22', 'dipti@praajasv.com'),
(661, 394, 11, 'ADMISSION CLOSE', 'Lead Created', '2024-06-18', '11:35:44', 'dipti@praajasv.com'),
(662, 395, 11, 'Open 4', 'Lead Created', '2024-06-18', '11:36:45', 'dipti@praajasv.com'),
(663, 396, 11, 'Open 1', 'Lead Created', '2024-06-18', '11:39:09', 'dipti@praajasv.com'),
(664, 397, 11, 'Open 1', 'Lead Created', '2024-06-18', '11:42:27', 'dipti@praajasv.com'),
(665, 398, 11, 'Open 1', 'Lead Created', '2024-06-18', '11:44:06', 'dipti@praajasv.com'),
(666, 399, 11, 'Open 1', 'Lead Created', '2024-06-18', '11:46:11', 'dipti@praajasv.com'),
(667, 400, 11, 'Open 1', 'Lead Created', '2024-06-18', '11:55:19', 'dipti@praajasv.com'),
(668, 401, 11, 'Open 1', 'Lead Created', '2024-06-18', '11:56:57', 'dipti@praajasv.com'),
(669, 402, 11, 'Open 1', 'Lead Created', '2024-06-18', '11:58:43', 'dipti@praajasv.com'),
(670, 403, 11, 'Open 1', 'Lead Created', '2024-06-18', '12:00:01', 'dipti@praajasv.com'),
(671, 404, 11, 'Open 1', 'Lead Created', '2024-06-18', '12:02:12', 'dipti@praajasv.com'),
(672, 405, 11, 'Open 1', 'Lead Created', '2024-06-18', '12:05:26', 'dipti@praajasv.com'),
(673, 406, 7, 'ADMISSION CLOSE', 'Lead Created', '2024-06-18', '12:08:26', 'anjali@gmail.com'),
(674, 407, 11, 'Open 1', 'Lead Created', '2024-06-18', '12:08:38', 'dipti@praajasv.com'),
(675, 408, 7, 'ADMISSION CLOSE', 'Lead Created', '2024-06-18', '12:11:04', 'anjali@gmail.com'),
(676, 409, 11, 'Open 1', 'Lead Created', '2024-06-18', '12:11:58', 'dipti@praajasv.com'),
(677, 410, 7, 'VISIT DONE ', 'Lead Created', '2024-06-18', '12:13:02', 'anjali@gmail.com'),
(678, 411, 7, 'not interested', 'Lead Created', '2024-06-18', '12:14:38', 'anjali@gmail.com'),
(679, 412, 7, 'Open 2', 'Lead Created', '2024-06-18', '12:17:33', 'anjali@gmail.com'),
(680, 413, 11, 'ADMISSION CLOSE', 'Lead Created', '2024-06-18', '12:18:30', 'dipti@praajasv.com'),
(681, 414, 7, 'ADMISSION CLOSE', 'Lead Created', '2024-06-18', '12:19:42', 'anjali@gmail.com'),
(682, 415, 11, 'Open 1', 'Lead Created', '2024-06-18', '12:21:33', 'dipti@praajasv.com'),
(683, 416, 7, 'Open 1', 'Lead Created', '2024-06-18', '12:22:18', 'anjali@gmail.com'),
(684, 417, 11, 'VISIT DONE ', 'Lead Created', '2024-06-18', '12:25:38', 'dipti@praajasv.com'),
(685, 418, 11, 'Open 1', 'Lead Created', '2024-06-18', '12:26:46', 'dipti@praajasv.com'),
(686, 419, 11, 'VISIT DONE ', 'Lead Created', '2024-06-18', '12:32:26', 'dipti@praajasv.com'),
(687, 420, 11, 'Confirmation Done', 'Lead Created', '2024-06-18', '12:34:02', 'dipti@praajasv.com'),
(688, 421, 11, 'Open 1', 'Lead Created', '2024-06-18', '12:37:59', 'dipti@praajasv.com'),
(689, 422, 11, 'Open 2', 'Lead Created', '2024-06-18', '12:39:17', 'dipti@praajasv.com'),
(690, 270, 8, 'Open 1', 'Convert To Admission', '2024-06-18', '12:44:55', 'shagun@gmail.com'),
(691, 423, 7, 'Open 1', 'Lead Created', '2024-06-18', '12:55:04', 'anjali@gmail.com'),
(692, 424, 11, 'VISIT DONE ', 'Lead Created', '2024-06-18', '12:55:49', 'dipti@praajasv.com'),
(693, 425, 7, 'Open 1', 'Lead Created', '2024-06-18', '12:56:24', 'anjali@gmail.com'),
(694, 426, 7, 'ADMISSION CLOSE', 'Lead Created', '2024-06-18', '12:58:20', 'anjali@gmail.com'),
(695, 427, 7, 'ADMISSION CLOSE', 'Lead Created', '2024-06-18', '12:59:34', 'anjali@gmail.com'),
(696, 428, 7, 'Open 1', 'Lead Created', '2024-06-18', '13:00:33', 'anjali@gmail.com'),
(697, 429, 7, 'Open 1', 'Lead Created', '2024-06-18', '13:02:33', 'anjali@gmail.com'),
(698, 430, 7, 'Open 1', 'Lead Created', '2024-06-18', '13:41:53', ''),
(699, 207, 8, 'Open 1', 'Convert To Admission', '2024-06-18', '13:53:36', 'shagun@gmail.com'),
(700, 431, 11, 'Open 1', 'Lead Created', '2024-06-18', '14:53:57', 'dipti@praajasv.com'),
(701, 432, 22, 'Open 1', 'Lead Created', '2024-06-18', '15:02:25', 'gayatri@praajasv.com'),
(702, 433, 11, 'Open 4', 'Lead Created', '2024-06-18', '15:04:59', 'dipti@praajasv.com'),
(703, 434, 22, 'Open 1', 'Lead Created', '2024-06-18', '15:07:07', 'gayatri@praajasv.com'),
(704, 435, 11, 'ADMISSION CLOSE', 'Lead Created', '2024-06-18', '15:07:37', 'dipti@praajasv.com'),
(705, 436, 11, 'Open 4', 'Lead Created', '2024-06-18', '15:09:26', 'dipti@praajasv.com'),
(706, 437, 22, 'Open 1', 'Lead Created', '2024-06-18', '15:10:31', 'gayatri@praajasv.com'),
(707, 438, 22, 'Open 1', 'Lead Created', '2024-06-18', '15:13:47', 'gayatri@praajasv.com'),
(708, 439, 22, 'Open 1', 'Lead Created', '2024-06-18', '15:15:56', 'gayatri@praajasv.com'),
(709, 434, 22, 'Open 3', 'HE WILL COME AFTER 2-3 DAYS', '2024-06-18', '15:17:22', 'gayatri@praajasv.com'),
(710, 440, 11, 'Confirmation Done', 'Lead Created', '2024-06-18', '15:20:08', 'dipti@praajasv.com'),
(711, 441, 11, 'Open 1', 'Lead Created', '2024-06-18', '15:23:42', 'dipti@praajasv.com'),
(712, 442, 11, 'Open 1', 'Lead Created', '2024-06-18', '15:27:10', 'dipti@praajasv.com'),
(713, 443, 11, 'Open 1', 'Lead Created', '2024-06-18', '15:30:18', 'dipti@praajasv.com'),
(714, 444, 11, 'admission open', 'Lead Created', '2024-06-18', '15:37:32', 'dipti@praajasv.com'),
(715, 445, 11, 'Open 1', 'Lead Created', '2024-06-18', '15:54:33', 'dipti@praajasv.com'),
(716, 446, 11, 'Open 1', 'Lead Created', '2024-06-18', '16:06:07', 'dipti@praajasv.com'),
(717, 447, 21, 'Open 1', 'Lead Created', '2024-06-18', '16:06:21', 'ajay@praajasv.com'),
(718, 448, 11, 'Open 4', 'Lead Created', '2024-06-18', '16:10:01', 'dipti@praajasv.com'),
(719, 449, 11, 'Open 1', 'Lead Created', '2024-06-18', '16:17:56', 'dipti@praajasv.com'),
(720, 450, 6, 'not interested', 'Lead Created', '2024-06-18', '16:35:20', 'deepika@gmail.com'),
(721, 451, 11, 'Open 1', 'Lead Created', '2024-06-18', '16:38:22', 'dipti@praajasv.com'),
(722, 452, 11, 'Confirmation Done', 'Lead Created', '2024-06-18', '16:40:49', 'dipti@praajasv.com'),
(723, 453, 11, 'Confirmation Done', 'Lead Created', '2024-06-18', '16:43:03', 'dipti@praajasv.com'),
(724, 454, 11, 'Open 1', 'Lead Created', '2024-06-18', '16:48:22', 'dipti@praajasv.com'),
(725, 455, 11, 'Open 1', 'Lead Created', '2024-06-18', '16:53:28', 'dipti@praajasv.com'),
(726, 456, 11, 'Open 1', 'Lead Created', '2024-06-18', '16:55:26', 'dipti@praajasv.com'),
(727, 457, 11, 'Open 1', 'Lead Created', '2024-06-18', '17:14:27', 'dipti@praajasv.com'),
(728, 458, 11, 'Open 1', 'Lead Created', '2024-06-18', '17:17:19', 'dipti@praajasv.com'),
(729, 459, 11, 'Open 1', 'Lead Created', '2024-06-18', '17:20:45', 'dipti@praajasv.com'),
(730, 460, 11, 'Open 4', 'Lead Created', '2024-06-18', '17:46:59', 'dipti@praajasv.com'),
(731, 461, 11, 'Open 1', 'Lead Created', '2024-06-18', '17:49:34', 'dipti@praajasv.com'),
(735, 465, 8, 'Open 1', 'Lead Transferred from Telecaller', '2024-06-24', '06:17:05', 'shagun@gmail.com'),
(734, 464, 8, 'Open 1', 'Lead Transferred from Telecaller', '2024-06-24', '06:16:55', 'shagun@gmail.com'),
(736, 466, 8, 'Open 1', 'Lead Transferred from Telecaller', '2024-06-24', '06:17:49', 'shagun@gmail.com'),
(737, 467, 8, 'Open 1', 'Lead Created', '2024-06-24', '11:26:05', 'shagun@gmail.com'),
(738, 468, 8, 'Open 1', 'Lead Created', '2024-06-24', '11:42:36', 'shagun@gmail.com'),
(739, 469, 6, 'Open 1', 'Lead Created', '2024-06-24', '11:49:59', 'deepika@gmail.com'),
(740, 470, 8, 'Open 1', 'Lead Created', '2024-06-24', '13:51:16', ''),
(741, 471, 22, 'Open 1', 'Lead Created', '2024-06-24', '14:42:36', ''),
(742, 472, 22, 'Open 1', 'Lead Created', '2024-06-24', '14:50:05', 'gayatri@praajasv.com'),
(743, 473, 8, 'Open 1', 'Lead Created', '2024-06-24', '14:56:00', 'shagun@gmail.com'),
(744, 474, 22, 'Open 1', 'Lead Created', '2024-06-24', '15:13:10', 'gayatri@praajasv.com'),
(745, 437, 22, 'ADMISSION CLOSE', 'admission done full paid', '2024-06-24', '15:14:20', 'gayatri@praajasv.com'),
(746, 475, 22, 'Open 1', 'Lead Created', '2024-06-24', '15:16:49', 'gayatri@praajasv.com'),
(747, 476, 22, 'Open 1', 'Lead Created', '2024-06-24', '15:20:06', 'gayatri@praajasv.com'),
(748, 467, 8, 'Open 1', 'Convert To Admission', '2024-06-24', '16:03:43', 'shagun@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `lead_remarks`
--

DROP TABLE IF EXISTS `lead_remarks`;
CREATE TABLE IF NOT EXISTS `lead_remarks` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LeadID` int(11) NOT NULL DEFAULT '-1',
  `Remark` varchar(256) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=246 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lead_remarks`
--

INSERT INTO `lead_remarks` (`ID`, `LeadID`, `Remark`, `CreatedDate`, `CreatedTime`, `CreatedBy`, `IsActive`) VALUES
(1, 6, 'will take admission in 2 days', '2024-06-08', '13:21:49', 'bhaumik@praajasv.com', 1),
(2, 8, 'Will Inform within 2 days .', '2024-06-10', '14:08:20', 'bhavi@praajasv.com', 1),
(3, 8, 'Will come tomorrow for demo. he is working in ISRO so call before 2 PM', '2024-06-10', '14:09:11', 'bhavi@praajasv.com', 1),
(4, 9, 'taking demo will confirm with in two days', '2024-06-10', '14:12:42', 'bhavi@praajasv.com', 1),
(5, 13, 'Done Adm', '2024-06-11', '12:08:14', 'shagun@gmail.com', 1),
(6, 14, 'WANT EVENING BATCH', '2024-06-11', '15:20:55', 'dipika@gmail.com', 1),
(7, 18, 'NOT RESPOND CALLS', '2024-06-11', '16:13:57', 'anjali@gmail.com', 1),
(8, 18, 'after regular followup ', '2024-06-11', '16:22:30', 'anjali@gmail.com', 1),
(9, 43, 'attended 10th June economy module-2 classes as a demo in offline and live', '2024-06-11', '16:37:51', 'shagun@gmail.com', 1),
(10, 47, 'fr 1yr online/from Hindu clg passout/from rajasthan/for 19th june batch', '2024-06-11', '16:45:39', 'shagun@gmail.com', 1),
(11, 54, '\"fr 1yr offline/more twds plutus and aug batch/push for june batch reg reached hometown/and will inform me tom will go for mid july batch\"', '2024-06-11', '16:48:40', 'shagun@gmail.com', 1),
(12, 58, 'fr 1yr online/more twds vision/for 10th june batch/apala mishra was neighbour', '2024-06-11', '16:52:35', 'shagun@gmail.com', 1),
(13, 62, '\"fr 1yr offline/said will come with father tom/10th june batch will attend demo tom then will reg for 10th june batch/110k-OTP\"', '2024-06-11', '16:55:38', 'shagun@gmail.com', 1),
(14, 65, 'fr 2yr offline/from haryana/enq in vision,vajiram,chahal/will inform me on after 12th june for 19th june batch', '2024-06-11', '16:58:54', 'shagun@gmail.com', 1),
(15, 66, 'fr 1yr offline/will inform after 2-3 days/from Moradabad', '2024-06-11', '17:01:28', 'shagun@gmail.com', 1),
(16, 67, '\"fr 1yr online/from up/b.tech std/for 19th june batch reg dicy btw next & AO Class/will inform after 2-3 days\"', '2024-06-11', '17:04:31', 'shagun@gmail.com', 1),
(17, 68, 'fr 1yr offline/july batch/reg clg std/from janakpuri', '2024-06-11', '17:06:50', 'shagun@gmail.com', 1),
(18, 69, 'fr 1yr offline/will inform me on 12th june for reg for 19th june batch/more twds next & vajiram', '2024-06-11', '17:09:19', 'shagun@gmail.com', 1),
(19, 70, 'fr 1yr offline/doing internship from faridabad/will go for july batch/more twds vision due to batch concern 6pm', '2024-06-11', '17:11:46', 'shagun@gmail.com', 1),
(20, 71, 'fr 1yr offline/staying in patel nagar/will inform/std is in 1st yr', '2024-06-11', '17:16:07', 'shagun@gmail.com', 1),
(21, 72, 'fr 1yr offline/july batch/from durg-UP', '2024-06-11', '17:19:38', 'shagun@gmail.com', 1),
(22, 73, 'fr 1yr offline/july batch/from durg-UP', '2024-06-11', '17:25:51', 'shagun@gmail.com', 1),
(23, 70, 'will take adm on 1st july', '2024-06-13', '11:26:10', 'shagun@gmail.com', 1),
(24, 69, 'will go for 19th june batch/will do OTP 120k before 19th june/convincing parents for money', '2024-06-13', '11:30:36', 'shagun@gmail.com', 1),
(25, 67, 'will go for january batch/currently doing self study', '2024-06-13', '11:31:26', 'shagun@gmail.com', 1),
(26, 62, 'will go for 1st july batch', '2024-06-13', '11:31:57', 'shagun@gmail.com', 1),
(27, 16, 'fee is 170k in installment', '2024-06-13', '11:32:51', 'shagun@gmail.com', 1),
(28, 15, 'will do payment after bakriid 17th june for 19th june batch', '2024-06-13', '11:34:25', 'shagun@gmail.com', 1),
(29, 71, 'will update me after 6th july after sem exams', '2024-06-13', '11:35:53', 'shagun@gmail.com', 1),
(30, 27, 'ADMISSION DONE', '2024-06-13', '12:35:24', 'bhavi@praajasv.com', 1),
(31, 31, 'ADMISSION DONE', '2024-06-13', '12:35:56', 'bhavi@praajasv.com', 1),
(32, 76, 'ADMISSION DONE', '2024-06-13', '12:36:48', 'bhavi@praajasv.com', 1),
(33, 95, 'TOMORROW ATTEND DEMO ', '2024-06-13', '16:20:20', 'KRUPALI1@PRAAJASV.COM', 1),
(34, 116, 'fr 1yr offline/enq in chahal,ensure/will inform me in eve', '2024-06-13', '16:33:25', 'shagun@gmail.com', 1),
(35, 118, 'fr 1yr online/will go for 19th june batch', '2024-06-13', '16:38:16', 'shagun@gmail.com', 1),
(36, 11, 'RAGISTRATION RECEIVED, REMAINING AMOUNT WILL PAY WITHIN 2 DAYS', '2024-06-14', '11:28:05', 'bhavi@praajasv.com', 1),
(37, 125, 'JUST 12TH COMPLETE THINK &GIVE ANS ', '2024-06-14', '12:02:14', 'krupali1@praajasv.com', 1),
(38, 125, 'NOT INTERWSTED ', '2024-06-14', '12:02:51', 'krupali1@praajasv.com', 1),
(39, 129, 'IN TWO DAYS GIVE CONFIRM ANS ', '2024-06-14', '12:21:43', 'krupali1@praajasv.com', 1),
(40, 129, 'CUT THE CALL', '2024-06-14', '12:23:30', 'krupali1@praajasv.com', 1),
(41, 130, 'RNR', '2024-06-14', '12:24:06', 'krupali1@praajasv.com', 1),
(42, 130, 'RNR', '2024-06-14', '12:24:20', 'krupali1@praajasv.com', 1),
(43, 130, 'RNR', '2024-06-14', '12:24:33', 'krupali1@praajasv.com', 1),
(44, 131, 'NEET CLEAR WANT TO GO IN MBBS ', '2024-06-14', '12:26:19', 'krupali1@praajasv.com', 1),
(45, 132, 'RNR', '2024-06-14', '12:29:22', 'krupali1@praajasv.com', 1),
(46, 132, 'out of service', '2024-06-14', '12:29:43', 'krupali1@praajasv.com', 1),
(47, 132, 'wrong  number\r\n', '2024-06-14', '12:30:03', 'krupali1@praajasv.com', 1),
(48, 133, 'RNR', '2024-06-14', '12:30:08', 'krupali1@praajasv.com', 1),
(49, 133, 'RNR', '2024-06-14', '12:30:35', 'krupali1@praajasv.com', 1),
(50, 134, 'GPSC ENGLISH MEDIUM THINK AND GIVE ANS ', '2024-06-14', '12:33:29', 'krupali1@praajasv.com', 1),
(51, 128, 'THINK AND GIVE ANS', '2024-06-14', '12:35:57', 'bhaumik@praajasv.com', 1),
(52, 135, 'RNR', '2024-06-14', '12:36:27', 'krupali1@praajasv.com', 1),
(53, 135, 'out of  service', '2024-06-14', '12:36:49', 'krupali1@praajasv.com', 1),
(54, 135, 'wrong number', '2024-06-14', '12:37:08', 'krupali1@praajasv.com', 1),
(55, 136, 'demo going on', '2024-06-14', '12:41:29', 'krupali1@praajasv.com', 1),
(56, 136, 'RNR', '2024-06-14', '12:41:47', 'krupali1@praajasv.com', 1),
(57, 136, 'tomorrow give  final ans.', '2024-06-14', '12:42:30', 'krupali1@praajasv.com', 1),
(58, 136, 'RNR', '2024-06-14', '12:42:45', 'krupali1@praajasv.com', 1),
(59, 136, 'RNR\r\n', '2024-06-14', '12:42:58', 'krupali1@praajasv.com', 1),
(60, 137, 'RNR', '2024-06-14', '12:45:06', 'krupali1@praajasv.com', 1),
(61, 137, 'fees problem,   \r\np.g  not possible\r\ndue to financial problems ', '2024-06-14', '12:46:33', 'krupali1@praajasv.com', 1),
(62, 138, 'RNR', '2024-06-14', '12:49:41', 'krupali1@praajasv.com', 1),
(63, 138, 'cut the call', '2024-06-14', '12:50:25', 'krupali1@praajasv.com', 1),
(64, 138, 'RNR', '2024-06-14', '12:50:42', 'krupali1@praajasv.com', 1),
(65, 138, 'RNR', '2024-06-14', '12:51:00', 'krupali1@praajasv.com', 1),
(66, 139, 'RNR', '2024-06-14', '12:53:29', 'krupali1@praajasv.com', 1),
(67, 139, 'tomorrow morning give final confirmation', '2024-06-14', '12:54:34', 'krupali1@praajasv.com', 1),
(68, 139, 'call attend one & two hour ', '2024-06-14', '12:55:09', 'krupali1@praajasv.com', 1),
(69, 139, 'busy, RNR', '2024-06-14', '12:55:30', 'krupali1@praajasv.com', 1),
(70, 139, 'RNR', '2024-06-14', '12:55:42', 'krupali1@praajasv.com', 1),
(71, 140, 'demo done in upsc', '2024-06-14', '13:09:26', 'krupali1@praajasv.com', 1),
(72, 141, 'RNR', '2024-06-14', '13:11:54', 'krupali1@praajasv.com', 1),
(73, 141, 'CUT THE CALL', '2024-06-14', '13:12:09', 'krupali1@praajasv.com', 1),
(74, 142, 'AFTER AMC EXAM', '2024-06-14', '13:13:38', 'krupali1@praajasv.com', 1),
(75, 143, 'SWITCHED OFF ', '2024-06-14', '13:15:18', 'krupali1@praajasv.com', 1),
(76, 144, 'CUT THE CALL', '2024-06-14', '13:16:53', 'krupali1@praajasv.com', 1),
(77, 145, 'WRONG NUMBER', '2024-06-14', '13:19:25', 'krupali1@praajasv.com', 1),
(78, 146, 'EVENING BATCH ONLY ', '2024-06-14', '13:24:46', 'krupali1@praajasv.com', 1),
(79, 150, 'TODAY EVENING GIVE CONFIRM ANS ', '2024-06-14', '13:37:26', 'krupali1@praajasv.com', 1),
(80, 150, 'RNR', '2024-06-14', '13:37:55', 'krupali1@praajasv.com', 1),
(81, 155, '1000 REFUND DUE TO SOME PERSONAL REASON ', '2024-06-14', '14:44:26', 'KRUPALI1@PRAAJASV.COM', 1),
(82, 156, 'IN 60000 WANT LONG TERM BATCH ', '2024-06-14', '14:46:19', 'KRUPALI1@PRAAJASV.COM', 1),
(83, 157, 'IN ONE OR TWO DAYS COME TO ACADEMY FOR DEMO ', '2024-06-14', '14:47:49', 'KRUPALI1@PRAAJASV.COM', 1),
(84, 159, 'RNR', '2024-06-14', '14:51:04', 'KRUPALI1@PRAAJASV.COM', 1),
(85, 159, 'OUT OF AHMEDABAD AFTER TWO DAYS COME TO ACADEMY FOR DEMO ', '2024-06-14', '14:51:45', 'KRUPALI1@PRAAJASV.COM', 1),
(86, 161, 'THINK AND GIVE ANS WANT TO SEE OTHER ACADEMY ', '2024-06-14', '14:55:13', 'KRUPALI1@PRAAJASV.COM', 1),
(87, 163, 'not intrested\r\nbut conuince for gpsc batch think & give ans tomorrow \r\n', '2024-06-14', '15:02:59', 'KRUPALI1@PRAAJASV.COM', 1),
(88, 165, 'RNR', '2024-06-14', '15:03:27', 'KRUPALI1@PRAAJASV.COM', 1),
(89, 161, 'RNR', '2024-06-14', '15:03:52', 'KRUPALI1@PRAAJASV.COM', 1),
(90, 165, 'RNR', '2024-06-14', '15:04:08', 'KRUPALI1@PRAAJASV.COM', 1),
(91, 162, 'DEMO GOING ON ', '2024-06-14', '15:05:47', 'KRUPALI1@PRAAJASV.COM', 1),
(92, 167, 'fr 1yr offline/enq in unacademy-friend was studying/will come with guardian on Monday', '2024-06-14', '15:06:13', 'shagun@gmail.com', 1),
(93, 166, 'fr 1yr offline/enq in unacademy-friend was studying/will come with guardian on Monday', '2024-06-14', '15:06:29', 'shagun@gmail.com', 1),
(94, 168, 'DAY ATTEND ,\r\nTOMORROW GIVE FINAL ANS .', '2024-06-14', '15:07:50', 'KRUPALI1@PRAAJASV.COM', 1),
(95, 169, 'RNR', '2024-06-14', '15:08:16', 'KRUPALI1@PRAAJASV.COM', 1),
(96, 169, 'BUSY', '2024-06-14', '15:08:30', 'KRUPALI1@PRAAJASV.COM', 1),
(97, 168, 'DEMO GOING ON IN CHAHAL AHEMDABAD CONVINCE FOR AHEMDABAD BRANCH', '2024-06-14', '15:08:44', 'KRUPALI1@PRAAJASV.COM', 1),
(98, 168, 'RNR', '2024-06-14', '15:09:48', 'KRUPALI1@PRAAJASV.COM', 1),
(99, 170, 'RNR', '2024-06-14', '15:12:08', 'KRUPALI1@PRAAJASV.COM', 1),
(100, 171, 'DUE TO JOB AND LAST YEAR OF COLLEGE ', '2024-06-14', '15:13:16', 'KRUPALI1@PRAAJASV.COM', 1),
(101, 173, 'RNR', '2024-06-14', '15:15:23', 'KRUPALI1@PRAAJASV.COM', 1),
(102, 173, 'THINK & ASK PARENTS AFTER DISCUSSION GIVE CONFIRM ANS \r\n', '2024-06-14', '15:16:26', 'KRUPALI1@PRAAJASV.COM', 1),
(103, 172, 'IN JULY INTERESTED', '2024-06-14', '15:16:40', 'KRUPALI1@PRAAJASV.COM', 1),
(104, 173, 'RNR', '2024-06-14', '15:16:41', 'KRUPALI1@PRAAJASV.COM', 1),
(105, 173, 'RNR', '2024-06-14', '15:16:53', 'KRUPALI1@PRAAJASV.COM', 1),
(106, 174, 'BUSY', '2024-06-14', '15:18:48', 'KRUPALI1@PRAAJASV.COM', 1),
(107, 174, '29TH INTRESTED TO COME FOR DEMO', '2024-06-14', '15:19:18', 'KRUPALI1@PRAAJASV.COM', 1),
(108, 174, 'RNR', '2024-06-14', '15:19:30', 'KRUPALI1@PRAAJASV.COM', 1),
(109, 178, 'RNR', '2024-06-14', '15:27:21', 'KRUPALI1@PRAAJASV.COM', 1),
(110, 179, 'RNR', '2024-06-14', '15:27:31', 'KRUPALI1@PRAAJASV.COM', 1),
(111, 179, 'RNR\r\n', '2024-06-14', '15:27:33', 'KRUPALI1@PRAAJASV.COM', 1),
(112, 179, 'RNR', '2024-06-14', '15:27:43', 'KRUPALI1@PRAAJASV.COM', 1),
(113, 179, 'BUSY', '2024-06-14', '15:27:53', 'KRUPALI1@PRAAJASV.COM', 1),
(114, 180, 'IN THREE & FOUR DAYS VISIT ACADEMY AGAIN', '2024-06-14', '15:31:23', 'KRUPALI1@PRAAJASV.COM', 1),
(115, 180, 'CONFIRM MONDAY VISIT ACADEMY FOR ADMISSION ', '2024-06-14', '16:06:49', 'KRUPALI1@PRAAJASV.COM', 1),
(116, 188, 'RNR', '2024-06-14', '16:14:44', 'krupali1@praajasv.com', 1),
(117, 189, 'RNR', '2024-06-14', '16:16:05', 'krupali1@praajasv.com', 1),
(118, 180, 'POSTPONE ADMISSION DUE TO FAMILY PROBLEMS  \r\n', '2024-06-14', '16:19:17', 'KRUPALI1@PRAAJASV.COM', 1),
(119, 193, 'NOT IN SERVICE ', '2024-06-14', '16:22:55', 'krupali1@praajasv.com', 1),
(120, 192, 'today evening give confirm ans want to join or not', '2024-06-14', '16:23:03', 'KRUPALI1@PRAAJASV.COM', 1),
(121, 193, 'cut the call', '2024-06-14', '16:23:27', 'KRUPALI1@PRAAJASV.COM', 1),
(122, 192, 'small baby so, not possible so not intrested', '2024-06-14', '16:24:10', 'KRUPALI1@PRAAJASV.COM', 1),
(123, 194, 'RNR', '2024-06-14', '16:25:49', 'KRUPALI1@PRAAJASV.COM', 1),
(124, 194, 'WRONG NUMBER\r\n', '2024-06-14', '16:26:07', 'KRUPALI1@PRAAJASV.COM', 1),
(125, 195, 'RNR', '2024-06-14', '16:35:33', 'krupali1@praajasv.com', 1),
(126, 196, 'INTERESTED IN ABHAYAM ACADEMY BHAVNAGAR ', '2024-06-14', '16:38:30', 'krupali1@praajasv.com', 1),
(127, 197, 'NR', '2024-06-14', '16:41:33', 'KRUPALI1@PRAAJASV.COM', 1),
(128, 197, 'RNR', '2024-06-14', '16:41:46', 'KRUPALI1@PRAAJASV.COM', 1),
(129, 197, 'RNR', '2024-06-14', '16:41:58', 'KRUPALI1@PRAAJASV.COM', 1),
(130, 200, 'RNR', '2024-06-14', '16:43:44', 'KRUPALI1@PRAAJASV.COM', 1),
(131, 200, 'RNR', '2024-06-14', '16:44:00', 'KRUPALI1@PRAAJASV.COM', 1),
(132, 200, 'RNR', '2024-06-14', '16:44:11', 'KRUPALI1@PRAAJASV.COM', 1),
(133, 200, 'RNR', '2024-06-14', '16:44:22', 'KRUPALI1@PRAAJASV.COM', 1),
(134, 182, 'admission done', '2024-06-14', '16:45:41', 'gayatri@praajasv.com', 1),
(135, 182, 'CCE MAINS LIVE ADMISSSION DONE', '2024-06-14', '16:49:49', 'gayatri@praajasv.com', 1),
(136, 201, 'ONLY INQUARY ', '2024-06-14', '16:50:35', 'krupali1@praajasv.com', 1),
(137, 206, 'RNR', '2024-06-14', '17:19:35', 'krupali1@praajasv.com', 1),
(138, 207, 'fr 1yr offline/will inform me tom for 19th june batch/ASD reg clg 1st yr std-more twds july eve batch/came from Gurugram', '2024-06-14', '17:35:47', 'shagun@gmail.com', 1),
(139, 208, 'fr 1yr offline/already done socio batch from raus ias/will inform me tom fr the 19th june batch/more twds july eve batch', '2024-06-14', '17:36:52', 'shagun@gmail.com', 1),
(140, 209, 'fr 1yr offline 19th june batch/said will come tom/wants to explore forum/already taken subs of unacademy and had a bad exp reg the faculty', '2024-06-14', '17:38:05', 'shagun@gmail.com', 1),
(141, 210, 'INTERESTED TO AHMEDABAD ', '2024-06-14', '17:40:33', 'krupali1@praajasv.com', 1),
(142, 211, 'DEMO GOING ON ', '2024-06-14', '17:43:02', 'krupali1@praajasv.com', 1),
(143, 212, 'CUT THE CALL ', '2024-06-14', '17:45:16', 'krupali1@praajasv.com', 1),
(144, 213, 'THINK AND GIVE ANS.', '2024-06-14', '17:46:05', 'KRUPALI1@PRAAJASV.COM', 1),
(145, 213, 'RNR', '2024-06-14', '17:46:20', 'KRUPALI1@PRAAJASV.COM', 1),
(146, 213, 'RNR', '2024-06-14', '17:46:33', 'KRUPALI1@PRAAJASV.COM', 1),
(147, 214, 'RNR', '2024-06-14', '17:49:23', 'krupali1@praajasv.com', 1),
(148, 215, 'give ans after talk with his father', '2024-06-14', '17:56:33', 'KRUPALI1@PRAAJASV.COM', 1),
(149, 216, 'DISTANCE PROBLEAM ', '2024-06-14', '17:57:08', 'krupali1@praajasv.com', 1),
(150, 215, 'RNR', '2024-06-14', '17:57:08', 'KRUPALI1@PRAAJASV.COM', 1),
(151, 215, 'BUSY / FINANCIAL PROBLEM', '2024-06-14', '17:57:39', 'KRUPALI1@PRAAJASV.COM', 1),
(152, 215, 'CALL CUT', '2024-06-14', '17:57:59', 'KRUPALI1@PRAAJASV.COM', 1),
(153, 218, 'RNR', '2024-06-14', '18:02:39', 'KRUPALI1@PRAAJASV.COM', 1),
(154, 218, 'RNR', '2024-06-14', '18:02:55', 'KRUPALI1@PRAAJASV.COM', 1),
(155, 218, 'BUSY', '2024-06-14', '18:03:10', 'KRUPALI1@PRAAJASV.COM', 1),
(156, 218, 'SWITCH OFF', '2024-06-14', '18:03:27', 'KRUPALI1@PRAAJASV.COM', 1),
(157, 218, 'RNR', '2024-06-14', '18:03:44', 'KRUPALI1@PRAAJASV.COM', 1),
(158, 221, 'TOMORROW GIVE ANS AFTER DISCUS WITH PARENTS', '2024-06-14', '18:08:09', 'KRUPALI1@PRAAJASV.COM', 1),
(159, 221, 'NR', '2024-06-14', '18:10:42', 'KRUPALI1@PRAAJASV.COM', 1),
(160, 221, 'IN TWO THERE DAY GIVE FINAL ANS', '2024-06-14', '18:11:30', 'KRUPALI1@PRAAJASV.COM', 1),
(161, 221, 'TOMORROW CONFIRM THE ADMISSION ', '2024-06-14', '18:12:08', 'KRUPALI1@PRAAJASV.COM', 1),
(162, 221, 'RNR', '2024-06-14', '18:12:22', 'KRUPALI1@PRAAJASV.COM', 1),
(163, 229, 'NUMBER NOT IN SERVICE ', '2024-06-14', '18:21:41', 'KRUPALI1@PRAAJASV.COM', 1),
(164, 229, 'NOT IN SERVICE ', '2024-06-14', '18:21:57', 'KRUPALI1@PRAAJASV.COM', 1),
(165, 229, 'RNR', '2024-06-14', '18:22:10', 'KRUPALI1@PRAAJASV.COM', 1),
(166, 232, 'RNR', '2024-06-14', '18:27:01', 'KRUPALI1@PRAAJASV.COM', 1),
(167, 232, 'RNR', '2024-06-14', '18:27:13', 'KRUPALI1@PRAAJASV.COM', 1),
(168, 232, 'RNR', '2024-06-14', '18:27:25', 'KRUPALI1@PRAAJASV.COM', 1),
(169, 232, 'TODAY EVENING GIVE FINAL ANS ', '2024-06-14', '18:27:51', 'KRUPALI1@PRAAJASV.COM', 1),
(170, 232, 'RNR', '2024-06-14', '18:28:06', 'KRUPALI1@PRAAJASV.COM', 1),
(171, 234, 'BUSY / COME IN 16 MAY', '2024-06-14', '18:33:31', 'KRUPALI1@PRAAJASV.COM', 1),
(172, 234, 'RNR', '2024-06-14', '18:33:43', 'KRUPALI1@PRAAJASV.COM', 1),
(173, 235, 'tomorrow visit academy ', '2024-06-14', '18:35:57', 'KRUPALI1@PRAAJASV.COM', 1),
(174, 235, 'today evening think and give ans ', '2024-06-14', '18:36:31', 'KRUPALI1@PRAAJASV.COM', 1),
(175, 235, 'RNR', '2024-06-14', '18:36:45', 'KRUPALI1@PRAAJASV.COM', 1),
(176, 237, 'BUSY', '2024-06-14', '18:46:07', 'krupali1@praajasv.com', 1),
(177, 240, 'HE WANTS TO EVENING BATCH', '2024-06-14', '18:50:47', 'KRUPALI1@PRAAJASV.COM', 1),
(178, 241, 'JUST 12TH COMPLETE CONVINCE FOR UPSC THINK &GIVE ANS ', '2024-06-14', '18:51:58', 'krupali1@praajasv.com', 1),
(179, 242, 'TODAY  EVENING  GIVE CONFIRMATION ANS', '2024-06-14', '18:55:09', 'KRUPALI1@PRAAJASV.COM', 1),
(180, 242, 'DICS, DHERYA, PRAAJASV .. AFTER DEMO GIVE FINAL ANS', '2024-06-14', '18:55:57', 'KRUPALI1@PRAAJASV.COM', 1),
(181, 242, 'BUSY', '2024-06-14', '18:56:12', 'KRUPALI1@PRAAJASV.COM', 1),
(182, 242, 'RNR', '2024-06-14', '18:56:25', 'KRUPALI1@PRAAJASV.COM', 1),
(183, 245, 'INTERESTED TO AHMEDABAD BRANCH ', '2024-06-15', '11:23:00', 'krupali1@praajasv.com', 1),
(184, 249, 'INTERESTED IN AHMEDABAD BRANCH ', '2024-06-15', '11:36:22', 'krupali1@praajasv.com', 1),
(185, 270, 'fr 1yr offline/targeting 2025/from uttrakhand/will inform me on 17th june for classes', '2024-06-15', '14:14:38', 'shagun@gmail.com', 1),
(186, 289, 'fr 1yr offline/from Chandigarh/fr 1st july batch/will inform me on 22nd june', '2024-06-15', '16:28:45', 'shagun@gmail.com', 1),
(187, 318, 'come after 2-3 days', '2024-06-16', '14:47:50', 'gayatri@praajasv.com', 1),
(188, 317, 'ONLINE DONE', '2024-06-16', '14:51:46', 'gayatri@praajasv.com', 1),
(189, 305, 'CALL NOT RECEIVE', '2024-06-16', '14:52:59', 'gayatri@praajasv.com', 1),
(190, 304, 'CUT THE CALL 2-3 TIME', '2024-06-16', '14:54:40', 'gayatri@praajasv.com', 1),
(191, 303, 'ADMISSSION DONE OFFLINE BATCH', '2024-06-16', '14:55:39', 'gayatri@praajasv.com', 1),
(192, 302, 'ADMISSION  DONE IN AHMEDABAD BRANCH', '2024-06-16', '14:56:31', 'gayatri@praajasv.com', 1),
(193, 301, 'NOT RECEIVE CALL 2-3 TIMES', '2024-06-16', '14:57:54', 'gayatri@praajasv.com', 1),
(194, 300, 'TALK WITH HER FATHER HE WILL DECID AND COME AFTER ', '2024-06-16', '14:59:22', 'gayatri@praajasv.com', 1),
(195, 299, 'NOT SURE ', '2024-06-16', '15:00:32', 'gayatri@praajasv.com', 1),
(196, 298, 'ADMISSION DONE  IN OFFLENE BATCH', '2024-06-16', '15:01:27', 'gayatri@praajasv.com', 1),
(197, 297, 'NOT RECEIVE ANY CALL,', '2024-06-16', '15:03:16', 'gayatri@praajasv.com', 1),
(198, 296, 'ONLINE ADMISSION DONE', '2024-06-16', '15:06:50', 'gayatri@praajasv.com', 1),
(199, 283, 'HE THINK HE IS NOT QULIFIED IN MAINS', '2024-06-16', '15:08:05', 'gayatri@praajasv.com', 1),
(200, 282, 'ADMISSION DONE IN OFFLENE BATCH', '2024-06-16', '15:09:28', 'gayatri@praajasv.com', 1),
(201, 281, 'HE SAY HE IS NOT INTRESTED', '2024-06-16', '15:10:19', 'gayatri@praajasv.com', 1),
(202, 279, 'NOT RECEIVE CALL3-4 TIME', '2024-06-16', '15:11:51', 'gayatri@praajasv.com', 1),
(203, 278, 'HE SAY TIME IS NOT CONVINNIENT BECAUSE OF JOB TIME', '2024-06-16', '15:13:26', 'gayatri@praajasv.com', 1),
(204, 276, 'FEES REFUND DONE', '2024-06-16', '15:14:58', 'gayatri@praajasv.com', 1),
(205, 275, 'HE NOT RECEIVE ANY CALL', '2024-06-16', '15:16:14', 'gayatri@praajasv.com', 1),
(206, 274, 'ADMISSION DONE IN OFFLINE BATCH\r\n', '2024-06-16', '15:17:11', 'gayatri@praajasv.com', 1),
(207, 273, 'TIME IS NOT SET', '2024-06-16', '15:22:03', 'gayatri@praajasv.com', 1),
(208, 272, 'HE NOT RECV CALL', '2024-06-16', '15:22:53', 'gayatri@praajasv.com', 1),
(209, 269, 'ADMISSION DONE IN OFFLINE BATCH', '2024-06-16', '15:25:49', 'gayatri@praajasv.com', 1),
(210, 268, 'NOT SURE COME AFTER 2-4 DAYS , ', '2024-06-16', '15:30:46', 'gayatri@praajasv.com', 1),
(211, 266, 'NOT SURE', '2024-06-16', '15:32:41', 'gayatri@praajasv.com', 1),
(212, 265, '1000 DONE BUT ADMISSION NOT DONE', '2024-06-16', '15:34:25', 'gayatri@praajasv.com', 1),
(213, 264, 'NOT SURE , LAST CALL ON13/06/2024 CUT THE CALL', '2024-06-16', '15:35:27', 'gayatri@praajasv.com', 1),
(214, 263, 'JOIN ANOTHER CLASS', '2024-06-16', '15:36:20', 'gayatri@praajasv.com', 1),
(215, 262, 'JOB TIME IS  10 TO 6    , SO NOT COMMING', '2024-06-16', '15:38:17', 'gayatri@praajasv.com', 1),
(216, 260, 'NOT RECEIVE THE CALL ', '2024-06-16', '15:39:30', 'gayatri@praajasv.com', 1),
(217, 255, 'CALL NOT RECEIVE', '2024-06-16', '15:43:18', 'gayatri@praajasv.com', 1),
(218, 254, 'NOT SURE', '2024-06-16', '15:44:44', 'gayatri@praajasv.com', 1),
(219, 253, 'PARENTS NE PUCHHINE KESE', '2024-06-16', '15:45:52', 'gayatri@praajasv.com', 1),
(220, 252, 'NOT  RECEIVE CALL', '2024-06-16', '15:46:44', 'gayatri@praajasv.com', 1),
(221, 231, 'NOT RECEIVE CALL', '2024-06-16', '15:48:23', 'gayatri@praajasv.com', 1),
(222, 230, 'NOT RECEIVE CALL', '2024-06-16', '15:49:02', 'gayatri@praajasv.com', 1),
(223, 228, 'DO NOT CALL', '2024-06-16', '15:51:08', 'gayatri@praajasv.com', 1),
(224, 227, '1000/- REFUND', '2024-06-16', '15:51:44', 'gayatri@praajasv.com', 1),
(225, 224, 'HE IS HOSPITALIZE SO, HE COME AFTER 1 MONTH', '2024-06-16', '15:52:43', 'gayatri@praajasv.com', 1),
(226, 222, 'NOT RECEIVE CALL', '2024-06-16', '15:53:25', 'gayatri@praajasv.com', 1),
(227, 219, 'THINK AND REPLY AFTER SOME TIMES', '2024-06-16', '15:54:36', 'gayatri@praajasv.com', 1),
(228, 217, 'HE GO TO NATIVE PLACE SO THINK ABOUT NEXT BATCH', '2024-06-16', '15:56:00', 'gayatri@praajasv.com', 1),
(229, 158, 'HE COME IN TO DEMPO ON MONDAY', '2024-06-16', '15:56:55', 'gayatri@praajasv.com', 1),
(230, 158, 'HE   WILL COME AFTER A 1 MONTH', '2024-06-16', '15:57:36', 'gayatri@praajasv.com', 1),
(231, 154, 'SHE WILL DONE ADMISSION ON MONDAY', '2024-06-16', '15:58:26', 'gayatri@praajasv.com', 1),
(232, 222, 'NOT RECV CALL', '2024-06-16', '16:24:42', 'gayatri@praajasv.com', 1),
(233, 334, 'fr 1yr offline/from Bihar/enq in brands/will attend demo in 19th june batch then will decide', '2024-06-16', '17:19:08', 'shagun@gmail.com', 1),
(234, 337, 'fr 1yr offline/friend of Harsh Singh-will go for 19th june batch', '2024-06-16', '17:21:44', 'shagun@gmail.com', 1),
(235, 339, 'fr 1yr offline/will reg from 10k today in eve', '2024-06-16', '17:25:17', 'shagun@gmail.com', 1),
(236, 341, 'fr 2yr offline/enq in PW only and not satisfied/for 19th june batch/will inform me tom fr the reg from 5k/160k', '2024-06-16', '17:27:09', 'shagun@gmail.com', 1),
(237, 356, 'fr 1yr offline/from Gurugram/will come with father tom at 4pm/fr 19th june batch', '2024-06-16', '18:04:42', 'shagun@gmail.com', 1),
(238, 359, 'fr 1yr offline/from nangloi/prep done for NDA/will come for demo on 19th then will decide', '2024-06-17', '13:25:01', 'shagun@gmail.com', 1),
(239, 360, 'fr 1yr offline/cousin is in Vision/but std is potential/will do reg in eve from 10k today and tom 30k/1lakh', '2024-06-17', '13:27:29', 'shagun@gmail.com', 1),
(240, 357, 'ADMISSION DONE', '2024-06-17', '16:47:06', 'bhavi@praajasv.com', 1),
(241, 361, 'fr 1yr offline/19th june batch/cousin was studying in Drishti/will inform me fr reg', '2024-06-17', '17:29:11', 'shagun@gmail.com', 1),
(242, 362, 'fr 1yr offline/from Maharashtra/bad exp in ensure/will do reg by tom fr 19th june batch', '2024-06-17', '17:31:20', 'shagun@gmail.com', 1),
(243, 364, 'fr 1yr offline/more twds vision and next /will confirm me fr 19th june batch', '2024-06-17', '18:00:05', 'shagun@gmail.com', 1),
(244, 434, 'HE WILL COME AFTER 2-3 DAYS', '2024-06-18', '15:17:22', 'gayatri@praajasv.com', 1),
(245, 437, 'admission done full paid', '2024-06-24', '15:14:20', 'gayatri@praajasv.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lead_source`
--

DROP TABLE IF EXISTS `lead_source`;
CREATE TABLE IF NOT EXISTS `lead_source` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SourceName` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lead_source`
--

INSERT INTO `lead_source` (`ID`, `SourceName`, `IsActive`) VALUES
(1, 'Test2', 1),
(2, 'Telephonic', 1),
(3, 'Website', 1),
(4, 'instagram', 1),
(5, 'youtube', 1),
(6, 'facebook', 1),
(7, 'Google Ads', 1),
(8, 'reference', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lead_status`
--

DROP TABLE IF EXISTS `lead_status`;
CREATE TABLE IF NOT EXISTS `lead_status` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Status` varchar(50) NOT NULL DEFAULT '',
  `DefaultStatus` int(11) NOT NULL DEFAULT '0',
  `NotInterestedStatus` int(11) NOT NULL DEFAULT '0',
  `FinalStatus` int(11) NOT NULL DEFAULT '0',
  `LeadColor` varchar(50) NOT NULL DEFAULT '#d49e12',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lead_status`
--

INSERT INTO `lead_status` (`ID`, `Status`, `DefaultStatus`, `NotInterestedStatus`, `FinalStatus`, `LeadColor`, `CreatedDate`, `CreatedTime`, `CreatedBy`, `IsActive`) VALUES
(1, 'Open 1', 1, 0, 0, '#cc4141', '', '', '', 1),
(2, 'Open 2', 0, 0, 0, '#cc9407', '', '', '', 1),
(3, 'Open 3', 0, 0, 0, '#856005', '', '', '', 1),
(4, 'Open 4', 0, 0, 0, '#573f03', '', '', '', 1),
(5, 'admission open', 0, 0, 0, '#57e3b0', '', '', '', 1),
(6, 'admission close', 0, 0, 1, '#0b8f5f', '', '', '', 1),
(7, 'not interested', 0, 1, 0, '#919191', '', '', '', 1),
(9, 'Confirmation Done', 0, 0, 0, '#044726', '', '', '', 1),
(10, 'VISIT DONE ', 0, 0, 0, '#506bd6', '', '', '', 1),
(11, 'ADMISSION CLOSE', 0, 0, 0, '#0b8f5f', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `magazine`
--

DROP TABLE IF EXISTS `magazine`;
CREATE TABLE IF NOT EXISTS `magazine` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MagazineName` varchar(256) NOT NULL DEFAULT '',
  `MagazinePDF` varchar(256) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `monthly_affairs`
--

DROP TABLE IF EXISTS `monthly_affairs`;
CREATE TABLE IF NOT EXISTS `monthly_affairs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MonthlyDate` varchar(256) NOT NULL DEFAULT '',
  `PdfName` varchar(256) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `parsed_serial_number`
--

DROP TABLE IF EXISTS `parsed_serial_number`;
CREATE TABLE IF NOT EXISTS `parsed_serial_number` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SrNo` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_admission`
--

DROP TABLE IF EXISTS `student_admission`;
CREATE TABLE IF NOT EXISTS `student_admission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BranchID` int(11) NOT NULL DEFAULT '-1',
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
  `TotalStructuredFee` int(11) NOT NULL DEFAULT '-1',
  `ScholarshipProvided` int(11) NOT NULL DEFAULT '0',
  `TotalPaybleFee` varchar(256) NOT NULL DEFAULT '',
  `FeestobePaid` int(11) NOT NULL DEFAULT '-1',
  `Source` varchar(50) NOT NULL DEFAULT '',
  `PaymentMode` varchar(100) NOT NULL DEFAULT '',
  `TransactionID` varchar(256) NOT NULL DEFAULT '',
  `PaymentStatus` varchar(256) NOT NULL DEFAULT '',
  `AdmissionDate` varchar(50) NOT NULL DEFAULT '',
  `AdmissionStatus` varchar(50) NOT NULL DEFAULT 'Pending By Account',
  `PaymentDate` varchar(50) NOT NULL DEFAULT '',
  `temp_batch` varchar(50) NOT NULL DEFAULT '',
  `LeadOwner` int(11) NOT NULL DEFAULT '-1',
  `CreatedBy` varchar(256) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `Refunded` int(11) NOT NULL DEFAULT '0',
  `Dropped` int(11) NOT NULL DEFAULT '0',
  `IsActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

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
(12, 1, '', 'shivam', 'studentbook0987@gmail.com', '8178744060', '', '', 'Uttar Pradesh', 'ghaziabad', '', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '1', 160000, 0, '160000', 32000, 'Admin Portal', 'Online', '', 'Successfull', '05/24/2024', 'Pending By Account', '', 'AOC 1', -1, 'anjali@gmail.com', '2024-06-12', '15:06:18', 0, 0, 1),
(13, 1, '', 'shyam kumar', 'jaiswalshyam2006@gmail.com', '6299296856', '', '', '', '', '', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '30', 200000, 0, '200000', 175000, 'Admin Portal', 'Online', '', 'Successfull', '05/24/2024', 'Pending By Account', '', 'AOC 1', -1, 'anjali@gmail.com', '2024-06-12', '15:16:14', 0, 0, 1),
(14, 1, '', 'ayush shukla', 'ayush@gmail.com', '7355015695', '', '', '', 'lucknow', '', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '1', 160000, 0, '160000', 110000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-12', 'Pending By Account', '', 'AOC 1', -1, 'anjali@gmail.com', '2024-06-12', '18:54:59', 0, 0, 1),
(15, 1, '', 'Sumit Pandey', 'isumitpandey08@gmail.com', '9646205240', '', '', '', 'Amroha', '', '', '', '', '', '', 'Male', '', '', '', '', '', 'Online', '1', 90000, 11, '80100', 40000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-13', 'Approved By Account', '', 'AOC 1', -1, 'shagun@gmail.com', '2024-06-13', '16:43:34', 0, 0, 1),
(16, 1, '', 'ASIF ANSARI', 'rikukhan.871@gmail.com', '9955203273', '8217316196', '', 'Jharkhand', 'JHARKHAND', 'AZAD NURSING HOME, BHANARIDIH GIRIDIH', 'AZAD NURSING HOME, BHANARIDIH GIRIDIH', '815301', '', '', '', 'Male', 'FIROZ ANSARI', '', '', '', '', 'Offline', '30', 200000, 0, '200000', 120000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-13', 'Pending By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-06-13', '17:25:44', 0, 0, 1),
(17, 2, '', 'KULDEP D. KHATANA', 'kuldeepkhatana6064@gmail.com', '9974071001', '', '', '', 'ahmedbad', 'VASTRAPUR', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '27', 20000, 0, '20000', 1000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-14', 'Approved By Account', '', 'CONSTABLE JUNE 2024', -1, 'bhavi@praajasv.com', '2024-06-14', '11:26:03', 0, 0, 1),
(18, 3, '', 'UMABEN', 'umamobh@gmail.com', '9099969885', '8320302425', '', 'Gujarat', 'BHARUCH', 'BBLOCK 204, 19 -A, POLICE HEAD QUARTER,BHARUCH', '392001', '392001', '', '', '', 'Female', 'DANUBHAI MOBH', '', '', '', '', 'Online', '14', 15000, 50, '7500', 7500, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-14', 'Pending By Account', '', '', -1, '', '2024-06-14', '17:43:10', 0, 0, 1),
(19, 1, '', 'Shubham Kumar', 'shubhamtidhiwal3259@gmail.com', '7906089949', '', '', '', '', '', '', '', '', '', '', 'Male', '', '', '', '', '', 'Online', '1', 90000, 12, '79200', 35000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-16', 'Pending By Account', '', 'AOC 1', -1, 'shagun@gmail.com', '2024-06-16', '10:29:59', 0, 0, 1),
(20, 2, '', 'NISHANT VAGHELA', 'nishantvaghela2004@gmail.com', '8200550199', '8401210167', '', 'Gujarat', 'ahmedbad', '2-36, slam quarters, opp. sukhram nagar water tank, rakhial road, rajpur gomtipiu, ahmedabad', '2-36, slam quarters, opp. sukhram nagar water tank, rakhial road, rajpur gomtipiu, ahmedabad', '380021', '', '', '', 'Male', 'PANKAJ BHAI', '', '', '', '', 'Offline', '27', 20000, 0, '20000', 1000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-16', 'Pending By Account', '', 'CONSTABLE JUNE 2024', -1, 'bhavi@praajasv.com', '2024-06-16', '11:38:21', 0, 0, 1),
(21, 2, '', 'RAHIL KHAN PATHAN', 'rahilkhanpathan0313@gmail.com', '9904789779', '9904504153', '', 'Gujarat', 'ahmedbad', '30, AZID DUPLEX, NEAR DANILIMDA, AHMEDABAD', '30, AZID DUPLEX, NEAR DANILIMDA, AHMEDABAD', '380028', '', '', '', 'Male', '', '', '', '', '', 'Offline', '27', 20000, 0, '20000', 1000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-16', 'Approved By Account', '', 'CONSTABLE JUNE 2024', -1, 'bhavi@praajasv.com', '2024-06-16', '11:49:13', 0, 0, 1),
(22, 2, '', 'AIFAAZKHAN PATHAN', 'aifaazpathan@gmail.com', '9512894785', '9924793511', '', '', 'ahmedbad', 'B-27/223, GOVT. F COLONY, SHAH E ALAM DARWAJA, NEAR TOLLNAKA, AHMEDABAD', 'B-27/223, GOVT. F COLONY, SHAH E ALAM DARWAJA, NEAR TOLLNAKA, AHMEDABAD', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '27', 20000, 0, '20000', 1000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-16', 'Approved By Account', '', 'CONSTABLE JUNE 2024', -1, 'bhavi@praajasv.com', '2024-06-16', '11:56:20', 0, 0, 1),
(23, 2, '', 'DIVYA RAVAT', 'dezyravat39055@gmail.com', '7203045890', '', '', '', 'ahmedbad', '29/30, GUJARAT HOUSING BOARD, MEGHANINAGAR, AHMEDABAD', '', '', '', '', '', 'Female', '', '', '', '', '', 'Offline', '26', 40000, 12, '35200', 1000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-16', 'Approved By Account', '', 'PSI JUNE 2024', -1, 'bhavi@praajasv.com', '2024-06-16', '12:40:20', 0, 0, 1),
(24, 2, '', 'MAHIPATSINH CHAUHAN', 'mahipatsinhchauhan07@gmail.com', '9974455410', '8866411454', '', 'Gujarat', 'AHMEDABAD', 'SADHI MAA NU MANDIR, NEAR SANATHAL TOLL PLAZA, SANATHAL SANAND', '', '', '', '', '', 'Male', 'JITENDRASINH', '', '', '', '', 'Offline', '26', 40000, 13, '35000', 35000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-16', 'Approved By Account', '', 'PSI JUNE 2024', -1, 'khushbu@gmail.com', '2024-06-16', '12:57:40', 0, 0, 1),
(25, 2, '', 'POOJABA VAGHELA', 'hasabavaghela2106@gmail.com', '8128615305', '8128615305', '', '', 'ahmedbad', 'V-104, VRUNDAVAN VATIKA, VASTRAL RTO ROAD, VASTRAL', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '19', 65000, 0, '65000', 1000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-17', 'Approved By Account', '', 'AN 4', -1, 'bhavi@praajasv.com', '2024-06-17', '12:54:51', 0, 0, 1),
(26, 1, '', 'Ansh Pachauri', 'pachauriansh10@gmail.com', '7017929928', '', '', '', 'Firozabad', '', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '1', 160000, 44, '89600', 10000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-17', 'Pending By Account', '', 'AOC 1', -1, 'shagun@gmail.com', '2024-06-17', '17:21:04', 0, 0, 1),
(27, 1, '', 'anuj sharma', 'as2003.anuj@gmail.com', '8448448311', '9810702391', '', 'Haryana', 'gurugram', 'ashok vihar phase-1 gurugram,sec-3', 'ashok vihar phase 1', '', '', '', '', 'Male', 'mahesh sharma', '', '', '', '', 'Offline', '1', 160000, 38, '100000', 50000, 'Admin Portal', 'Online', '', 'Successfull', '06/17/2024', 'Pending By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-06-18', '10:57:09', 0, 0, 1),
(28, 1, '', 'SONU KUMAR', '1646sonukr@gmail.com', '9905346919', '9810509958', '', 'Delhi', 'DELHI', 'C-3/440 A, NANGLI VIVHAR EXT. BAPROLA', 'C-3/440 A, NANGLI VIVHAR EXT. BAPROLA', '110043', '', '', '', 'Male', 'SHAMBHU PRASAD', '', '', '', '', 'Offline', '30', 200000, 35, '130000', 20000, 'Admin Portal', 'Online', '', 'Successfull', '06/17/2024', 'Pending By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-06-18', '11:05:59', 0, 0, 1),
(29, 1, '', 'anupam kumar gupta', 'guptaanupam2312@gmail.com', '9315911415', '7033222040', '', 'Bihar', 'bihar', 'sareya ward 1,yadvpur road, gopalganj bihar', 'sareya ward 1,yadvpur road, gopalganj bihar', '841428', '', '', '', 'Male', 'anil kumar gupta', '', '', '', '', 'Offline', '30', 200000, 20, '160000', 160000, 'Admin Portal', 'Online', '', 'Successfull', '06/17/2024', 'Pending By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-06-18', '11:12:27', 0, 0, 1),
(30, 1, '', 'koshiv uikey', 'koshivuikey123@gmail.com', '8770115920', '8968913073', '', 'Madhya Pradesh', 'chhindwara', 'house - 162, parasia road near apni rasoi dabha chhindwara', 'house - 162, parasia road near apni rasoi dabha chhindwara', '', '', '', '', 'Male', 'uday bhan shah uikey', '', '', '', '', 'Offline', '30', 200000, 40, '120000', 30000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-18', 'Pending By Account', '', 'AOC 1', -1, 'deepika@gmail.com', '2024-06-18', '11:18:48', 0, 0, 1),
(31, 1, '', 'Samridh Khatri', 'samridhkhatri2110@gmail.com', '8394050502', '', '', '', '', '', '', '', '', '', '', 'Male', '', '', '', '', '', 'Offline', '1', 160000, 25, '120000', 10000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-18', 'Pending By Account', '', 'AOC 1', -1, 'shagun@gmail.com', '2024-06-18', '12:44:55', 0, 0, 1),
(32, 1, '', 'Rashi Shah', 'rashishah2910@gmail.com', '7607968901', '', '', '', '', '', '', '', '', '', '', 'Female', '', '', '', '', '', 'Offline', '1', 160000, 25, '120000', 10000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-18', 'Pending By Account', '', 'AOC 1', -1, 'shagun@gmail.com', '2024-06-18', '13:53:36', 0, 0, 1),
(33, 1, '', 'Saumya Sinha', 'saumya1sinha@gmail.com', '8743978821', '', '', 'Delhi', 'dwarka', '', '', '', '', '', '', 'Female', '', '', '', '', '', 'Offline', '1', 160000, 31, '110400', 10000, 'Admin Portal', 'Online', '', 'Successfull', '2024-06-24', 'Pending By Account', '', 'AOC 1', -1, 'shagun@gmail.com', '2024-06-24', '16:03:43', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_book`
--

DROP TABLE IF EXISTS `student_book`;
CREATE TABLE IF NOT EXISTS `student_book` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AdmissionID` int(11) NOT NULL,
  `Course` int(11) NOT NULL,
  `CourseBooks` varchar(50) NOT NULL,
  `PostalAddress` varchar(256) NOT NULL DEFAULT '',
  `TrackingID` varchar(200) NOT NULL DEFAULT '',
  `Status` varchar(256) NOT NULL DEFAULT 'Placed',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

DROP TABLE IF EXISTS `student_details`;
CREATE TABLE IF NOT EXISTS `student_details` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL DEFAULT '',
  `Mobile` varchar(50) NOT NULL DEFAULT '',
  `Email` varchar(50) NOT NULL DEFAULT '',
  `UserType` varchar(100) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_enrollment`
--

DROP TABLE IF EXISTS `student_enrollment`;
CREATE TABLE IF NOT EXISTS `student_enrollment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AdmissionID` varchar(256) NOT NULL DEFAULT '',
  `Email` varchar(256) NOT NULL,
  `Course` varchar(256) NOT NULL,
  `Batch` varchar(50) NOT NULL DEFAULT 'Old Batch',
  `Mode` varchar(256) NOT NULL,
  `TotalStructuredFee` int(11) NOT NULL DEFAULT '-1',
  `ScholarshipProvided` int(11) NOT NULL DEFAULT '0',
  `TotalPaybleFee` int(11) NOT NULL,
  `CreatedBy` varchar(256) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `TempSrNo` varchar(12) NOT NULL DEFAULT '-1',
  `IsActive` int(11) NOT NULL DEFAULT '1',
  `Refunded` int(11) NOT NULL DEFAULT '0',
  `Dropped` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

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
(16, '21', 'rahilkhanpathan0313@gmail.com', '27', 'CONSTABLE JUNE 2024', 'Offline', 20000, 0, 20000, 'jitendra@praajasv.com', '2024-06-17', '16:30:43', '-1', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_fee`
--

DROP TABLE IF EXISTS `student_fee`;
CREATE TABLE IF NOT EXISTS `student_fee` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AdmissionID` int(11) NOT NULL DEFAULT '-1',
  `StudentName` varchar(200) NOT NULL,
  `StudentEmail` varchar(200) NOT NULL,
  `StudentPhoneNumber` varchar(200) NOT NULL,
  `Courses` varchar(256) NOT NULL DEFAULT '',
  `CoursesBatch` varchar(256) NOT NULL DEFAULT '',
  `Mode` varchar(256) NOT NULL DEFAULT '',
  `TotalStructuredFee` int(11) NOT NULL DEFAULT '-1',
  `ScholarshipProvided` int(11) NOT NULL DEFAULT '0',
  `FeestobePaid` int(11) NOT NULL DEFAULT '-1',
  `StudentFee` varchar(200) NOT NULL,
  `InvoiceCheck` varchar(200) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL,
  `CreatedTime` varchar(50) NOT NULL,
  `IsActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_fee_reminder`
--

DROP TABLE IF EXISTS `student_fee_reminder`;
CREATE TABLE IF NOT EXISTS `student_fee_reminder` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AdmissionID` int(11) NOT NULL DEFAULT '-1',
  `Amount` varchar(256) NOT NULL DEFAULT '',
  `Status` varchar(50) NOT NULL DEFAULT 'To Be Collected',
  `ReminderDate` varchar(256) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_fee_reminder`
--

INSERT INTO `student_fee_reminder` (`ID`, `AdmissionID`, `Amount`, `Status`, `ReminderDate`, `CreatedDate`, `CreatedTime`, `CreatedBy`, `IsActive`) VALUES
(1, 1, '0', 'Delayed', '2024-06-17', '2024-06-07', '16:27:50', 'admin@praajasv.com', 1),
(2, 3, '20000', 'To Be Collected', '2024-07-04', '2024-06-10', '14:21:06', 'bhavi@praajasv.com', 1),
(3, 9, '34000', 'Delayed', '2024-06-15', '2024-06-13', '16:20:35', 'bhavi@praajasv.com', 1),
(4, 9, '30000', 'To Be Collected', '2024-06-22', '2024-06-13', '16:21:31', 'bhavi@praajasv.com', 1),
(5, 7, '45000', 'Delayed', '2024-06-17', '2024-06-13', '16:22:29', 'bhavi@praajasv.com', 1),
(6, 17, '19000', 'Delayed', '2024-06-17', '2024-06-14', '17:15:50', 'bhavi@praajasv.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_payment`
--

DROP TABLE IF EXISTS `student_payment`;
CREATE TABLE IF NOT EXISTS `student_payment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FeeID` int(11) NOT NULL DEFAULT '-1',
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
  `IsActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_remark`
--

DROP TABLE IF EXISTS `student_remark`;
CREATE TABLE IF NOT EXISTS `student_remark` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AdmissionID` int(11) NOT NULL DEFAULT '-1',
  `Remarks` varchar(256) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_transaction`
--

DROP TABLE IF EXISTS `student_transaction`;
CREATE TABLE IF NOT EXISTS `student_transaction` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `InvoiceNo` int(11) NOT NULL DEFAULT '-1',
  `AdmissionID` int(11) NOT NULL,
  `Course` varchar(256) NOT NULL DEFAULT '',
  `Mode` varchar(11) NOT NULL DEFAULT '',
  `Amount` int(11) NOT NULL,
  `PaymentMode` varchar(256) NOT NULL DEFAULT '',
  `TransactionID` varchar(256) NOT NULL DEFAULT '',
  `TransactionDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_transaction`
--

INSERT INTO `student_transaction` (`ID`, `InvoiceNo`, `AdmissionID`, `Course`, `Mode`, `Amount`, `PaymentMode`, `TransactionID`, `TransactionDate`, `CreatedDate`, `CreatedTime`, `CreatedBy`, `IsActive`) VALUES
(1, -1, 1, '2', 'Offline', 15000, 'Cash', '123', '', '2024-06-07', '15:55:40', 'kanubhai@gmail.com', 1),
(2, 124, 1, '2', 'Offline', 25000, 'Cash', '142', '', '2024-06-07', '16:26:44', 'admin@praajasv.com', 1),
(3, -1, 2, '16', 'Offline', 10000, 'Debit Card', 'ap6-00123', '', '2024-06-08', '13:25:26', 'kanubhai@gmail.com', 1),
(4, -1, 3, '26', 'Offline', 15000, 'Cash', 'psijune123', '', '2024-06-10', '14:19:02', 'jitendra@praajasv.com', 1),
(5, 125, 4, '19', 'Offline', 40000, 'UPI', 'an4-000123', '', '2024-06-10', '15:33:29', 'JITENDRA@PRAAJASV.COM', 1),
(6, -1, 9, '19', 'Offline', 1000, 'UPI', '416492479329', '', '2024-06-12', '12:13:51', 'JITENDRA@PRAAJASV.COM', 1),
(7, 126, 8, '29', 'Offline', 15000, 'UPI', '416351983004', '', '2024-06-12', '12:15:51', 'JITENDRA@PRAAJASV.COM', 1),
(8, -1, 7, '20', 'Offline', 10000, 'UPI', '416302574634', '', '2024-06-12', '12:16:26', 'JITENDRA@PRAAJASV.COM', 1),
(9, -1, 15, '1', 'Online', 40000, 'UPI', '453117236392', '', '2024-06-13', '16:54:48', 'yogendra@gmail.com', 1),
(10, -1, 6, '1', 'Offline', 10000, 'UPI', '415635664232', '', '2024-06-13', '16:56:51', 'yogendra@gmail.com', 1),
(11, -1, 5, '1', 'Offline', 5000, 'UPI', '123456789', '', '2024-06-13', '16:59:57', 'yogendra@gmail.com', 1),
(12, -1, 17, '27', 'Offline', 1000, 'UPI', '416687997377', '', '2024-06-14', '17:08:56', 'jitendra@praajasv.com', 1),
(13, -1, 25, '19', 'Offline', 1000, 'UPI', '453557322853', '', '2024-06-17', '16:27:43', 'jitendra@praajasv.com', 1),
(14, -1, 24, '26', 'Offline', 35000, 'UPI', '416643125296', '', '2024-06-17', '16:28:18', 'jitendra@praajasv.com', 1),
(15, -1, 23, '26', 'Offline', 1000, 'UPI', '415970555578', '', '2024-06-17', '16:29:26', 'jitendra@praajasv.com', 1),
(16, -1, 22, '27', 'Offline', 1000, 'UPI', '415662994668', '', '2024-06-17', '16:30:10', 'jitendra@praajasv.com', 1),
(17, -1, 21, '27', 'Offline', 1000, 'UPI', '415659577648', '', '2024-06-17', '16:30:43', 'jitendra@praajasv.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `telecaller_leads`
--

DROP TABLE IF EXISTS `telecaller_leads`;
CREATE TABLE IF NOT EXISTS `telecaller_leads` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BranchID` int(11) NOT NULL DEFAULT '-1',
  `Name` varchar(200) NOT NULL DEFAULT '',
  `Gender` varchar(200) NOT NULL DEFAULT '',
  `DOB` varchar(256) NOT NULL DEFAULT '',
  `Email` varchar(200) NOT NULL DEFAULT '',
  `PhoneNumber` varchar(200) NOT NULL DEFAULT '',
  `Course` int(11) NOT NULL DEFAULT '-1',
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
  `IsActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `telecaller_lead_assignment_history`
--

DROP TABLE IF EXISTS `telecaller_lead_assignment_history`;
CREATE TABLE IF NOT EXISTS `telecaller_lead_assignment_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LeadID` int(11) NOT NULL DEFAULT '-1',
  `AssignedTo` int(11) NOT NULL DEFAULT '-1',
  `Status` varchar(50) NOT NULL DEFAULT '',
  `Remark` varchar(256) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `telecaller_lead_remarks`
--

DROP TABLE IF EXISTS `telecaller_lead_remarks`;
CREATE TABLE IF NOT EXISTS `telecaller_lead_remarks` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LeadID` int(11) NOT NULL DEFAULT '-1',
  `Remark` varchar(256) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `telecaller_lead_status`
--

DROP TABLE IF EXISTS `telecaller_lead_status`;
CREATE TABLE IF NOT EXISTS `telecaller_lead_status` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Status` varchar(50) NOT NULL DEFAULT '',
  `DefaultStatus` int(11) NOT NULL DEFAULT '0',
  `NotInterestedStatus` int(11) NOT NULL DEFAULT '0',
  `FinalStatus` int(11) NOT NULL DEFAULT '0',
  `LeadColor` varchar(50) NOT NULL DEFAULT '#d49e12',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedTime` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `telecaller_lead_status`
--

INSERT INTO `telecaller_lead_status` (`ID`, `Status`, `DefaultStatus`, `NotInterestedStatus`, `FinalStatus`, `LeadColor`, `CreatedDate`, `CreatedTime`, `CreatedBy`, `IsActive`) VALUES
(1, 'Open', 1, 0, 0, '#cc4141', '', '', '', 1),
(2, 'Not Interested', 0, 1, 0, '#807e7e', '', '', '', 1),
(3, 'Transferred to Counsellor', 0, 0, 1, '#387d7b', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CenterID` int(11) NOT NULL DEFAULT '-1',
  `Email` varchar(50) NOT NULL,
  `Password` varchar(256) NOT NULL,
  `UserType` varchar(50) NOT NULL,
  `CreatedDate` varchar(50) NOT NULL,
  `CreatedTime` varchar(50) NOT NULL,
  `IsActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `CenterID`, `Email`, `Password`, `UserType`, `CreatedDate`, `CreatedTime`, `IsActive`) VALUES
(1, -1, 'admin@praajasv.com', '81dc9bdb52d04dc20036dbd8313ed055', 'System Admin', '', '', 1),
(2, 1, 'darknightrider12@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Center Manager', '2024-06-01', '17:46:18', 1),
(3, 3, 'milanvyas@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Center Manager', '2024-06-01', '17:53:53', 1),
(4, 1, 'yogendra@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Center Manager', '2024-06-01', '18:08:06', 1),
(5, 3, 'kanubhai@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Acountant', '2024-06-01', '18:32:15', 1),
(6, 1, 'deepika@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Counsellor', '2024-06-01', '19:02:18', 1),
(7, 1, 'anjali@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Counsellor', '2024-06-01', '19:05:48', 1),
(8, 1, 'shagun@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Counsellor', '2024-06-01', '19:18:46', 1),
(9, 3, 'milan@praajasv.com', 'e10adc3949ba59abbe56e057f20f883e', 'Center Manager', '2024-06-02', '12:14:47', 1),
(10, 3, 'krupali@praajasv.com', 'e10adc3949ba59abbe56e057f20f883e', 'Lead Counsellor', '2024-06-02', '12:16:35', 1),
(11, 3, 'dipti@PRAAJASV.COM', 'e10adc3949ba59abbe56e057f20f883e', 'Counsellor', '2024-06-02', '13:50:10', 1),
(12, 2, 'khushbu@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Counsellor', '2024-06-02', '15:59:14', 1),
(13, 1, 'accounts@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Acountant', '2024-06-07', '14:55:24', 1),
(16, 3, 'bhaumik@praajasv.com', 'e10adc3949ba59abbe56e057f20f883e', 'Counsellor', '2024-06-07', '18:22:44', 1),
(15, 3, 'rahul@praajasv.com', 'e10adc3949ba59abbe56e057f20f883e', 'Counsellor', '2024-06-07', '15:35:58', 1),
(17, 2, 'malhar@praajasv.com', 'e10adc3949ba59abbe56e057f20f883e', 'Center Manager', '2024-06-10', '13:54:33', 1),
(18, 2, 'bhavi@praajasv.com', '25d55ad283aa400af464c76d713c07ad', 'Counsellor', '2024-06-10', '14:05:04', 1),
(19, 2, 'Jitendra@praajasv.com', 'e10adc3949ba59abbe56e057f20f883e', 'Acountant', '2024-06-10', '14:17:51', 1),
(20, 3, 'KRUPALI1@PRAAJASV.COM', 'e10adc3949ba59abbe56e057f20f883e', 'Counsellor', '2024-06-11', '18:52:17', 1),
(21, 3, 'ajay@praajasv.com', 'e10adc3949ba59abbe56e057f20f883e', 'Counsellor', '2024-06-13', '17:05:42', 1),
(22, 3, 'gayatri@praajasv.com', 'e10adc3949ba59abbe56e057f20f883e', 'Counsellor', '2024-06-13', '17:11:05', 1),
(23, 1, 'pg_telecaller@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Telecaller', '2024-06-21', '15:43:14', 1),
(24, 1, 'test@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Educator', '2024-06-25', '14:23:58', 1),
(25, 3, 'manish@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Educator', '2024-06-25', '15:59:23', 1),
(26, 2, 'manish@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Educator', '2024-06-25', '15:59:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
CREATE TABLE IF NOT EXISTS `user_details` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CenterID` int(11) NOT NULL DEFAULT '-1',
  `Name` varchar(100) NOT NULL DEFAULT '',
  `Mobile` varchar(50) NOT NULL DEFAULT '',
  `Email` varchar(50) NOT NULL DEFAULT '',
  `UserType` varchar(100) NOT NULL DEFAULT '',
  `CreatedDate` varchar(50) NOT NULL DEFAULT '',
  `CreatedBy` varchar(50) NOT NULL DEFAULT '',
  `IsActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`ID`, `CenterID`, `Name`, `Mobile`, `Email`, `UserType`, `CreatedDate`, `CreatedBy`, `IsActive`) VALUES
(1, -1, 'Admin', '8826789578', 'admin@praajasv.com', 'System Admin', '', '', 1),
(5, 3, 'kanubhai', '9825923630', 'kanubhai@gmail.com', 'Acountant', '2024-06-01', 'admin@praajasv.com', 1),
(9, 3, 'Milan Vyas', '9662221313', 'milan@praajasv.com', 'Center Manager', '2024-06-02', 'admin@praajasv.com', 1),
(4, 1, 'Yogendra Chaudhary', '9773732309', 'yogendra@gmail.com', 'Center Manager', '2024-06-01', 'admin@praajasv.com', 1),
(6, 1, 'Deepika', '8287247973', 'deepika@gmail.com', 'Counsellor', '2024-06-01', 'admin@praajasv.com', 1),
(7, 1, 'Anjali', '9667661547', 'anjali@gmail.com', 'Counsellor', '2024-06-01', 'admin@praajasv.com', 1),
(8, 1, 'Shagun', '8512088797', 'shagun@gmail.com', 'Counsellor', '2024-06-01', 'admin@praajasv.com', 1),
(10, 3, 'Krupali MAM', '8511164215', 'krupali@praajasv.com', 'Lead Counsellor', '2024-06-02', 'admin@praajasv.com', 1),
(11, 3, 'dipti Dighe', '9724786231', 'dipti@PRAAJASV.COM', 'Counsellor', '2024-06-02', 'krupali@gmail.com', 1),
(12, 2, 'khushbu mam', '9904041410', 'khushbu@gmail.com', 'Counsellor', '2024-06-02', 'admin@praajasv.com', 1),
(13, 1, 'Accounts', '8826789560', 'accounts@gmail.com', 'Acountant', '2024-06-07', 'admin@praajasv.com', 1),
(16, 3, 'BHAUMIK', '7863819640', 'bhaumik@praajasv.com', 'Counsellor', '2024-06-07', 'milan@praajasv.com', 1),
(15, 3, 'rahul', '7490935772', 'rahul@praajasv.com', 'Counsellor', '2024-06-07', 'admin@praajasv.com', 1),
(17, 2, 'Malhar Bhatt', '8000614930', 'malhar@praajasv.com', 'Center Manager', '2024-06-10', 'ADMIN@praajasv.COM', 1),
(18, 2, 'Bhavi', '8866781590', 'bhavi@praajasv.com', 'Counsellor', '2024-06-10', 'malhar@praajasv.com', 1),
(19, 2, 'JituUNCLE', '9328201118', 'Jitendra@praajasv.com', 'Acountant', '2024-06-10', 'malhar@praajasv.com', 1),
(20, 3, 'KRUPALI', '8980502691', 'KRUPALI1@PRAAJASV.COM', 'Counsellor', '2024-06-11', 'MILAN@PRAAJASV.COM', 1),
(21, 3, 'ajay rathod', '9316985418', 'ajay@praajasv.com', 'Counsellor', '2024-06-13', 'milan@praajasv.com', 1),
(22, 3, 'gayatri brahmbhatt', '8200301830', 'gayatri@praajasv.com', 'Counsellor', '2024-06-13', 'milan@praajasv.com', 1),
(23, 1, 'Prateek Gupta T', '8826789577', 'pg_telecaller@gmail.com', 'Telecaller', '2024-06-21', 'admin@praajasv.com', 1),
(24, 1, 'Manish', '4795794837', 'test@gmail.com', 'Educator', '2024-06-25', 'admin@praajasv.com', 1),
(25, 3, 'Manish', '4795794837', 'manish@gmail.com', 'Educator', '2024-06-25', 'admin@praajasv.com', 1),
(26, 2, 'Manish', '4795794837', 'manish@gmail.com', 'Educator', '2024-06-25', 'admin@praajasv.com', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_transaction`
--
ALTER TABLE `student_transaction` ADD FULLTEXT KEY `CreatedDate` (`CreatedDate`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
