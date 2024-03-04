-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 23, 2023 at 10:09 PM
-- Server version: 5.7.39-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zillionlinkdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Why to join Zillion Link', '<p style=\"text-align: justify;\"><font color=\"#7f8897\" face=\"sofiapro, sans-serif\">Electronic Sector is on the upswing. Consistent growing demand for electronic products, government initiatives in driving the demand, policy support along with the investments from global and Indian market, it is anticipated to catapult the industry into the high growth phase.</font><br></p>', '62798780.jpg', '2022-08-02 06:05:21', '2022-09-12 12:11:27');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT '1',
  `admin_approved` tinyint(4) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `password`, `status`, `admin_approved`, `created_at`, `updated_at`) VALUES
(1, 'gajanan@zillionlink.in', 'e6e061838856bf47e1de730719fb2609', 1, 1, '2020-11-28 00:00:00', '2022-11-10 05:12:27'),
(8, 'manoj@ycstech.in', 'e6e061838856bf47e1de730719fb2609', 1, NULL, '2021-06-23 11:07:27', '2022-09-13 05:16:37'),
(9, 'akanksha@ycstech.in', '25f9e794323b453885f5181f1b624d0b', 1, NULL, '2021-08-11 05:48:58', '2022-09-13 05:16:37'),
(10, 'sankalp@ycstech.in', 'e6e061838856bf47e1de730719fb2609', 1, 1, '2020-11-28 00:00:00', '2022-11-10 05:12:27');

-- --------------------------------------------------------

--
-- Table structure for table `aristotleenquiry`
--

CREATE TABLE `aristotleenquiry` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` varchar(15) NOT NULL,
  `character` varchar(20) NOT NULL,
  `state` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `language` varchar(1000) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `concern` mediumtext NOT NULL,
  `medium` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `description` mediumtext NOT NULL,
  `author` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `career`
--

CREATE TABLE `career` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `summary` mediumtext NOT NULL,
  `role` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `requirement` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `competencies` mediumtext NOT NULL,
  `years` mediumtext NOT NULL,
  `qualification` mediumtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `career`
--

INSERT INTO `career` (`id`, `title`, `summary`, `role`, `location`, `requirement`, `description`, `competencies`, `years`, `qualification`, `created_at`, `updated_at`) VALUES
(2, 'Stores Executive', 'Position is established to maintain store administration and ensure the execution of processes in compliance with set procedures', 'Operations head', 'General Duty', 'Not applicable', '<p>1. maintain store conditions and visual standards as per set procedures.</p><p>2. store process execution – GRN , Kitting , stock count , work order tracking , batch closure reconciliation</p><p>3. Prepare and report of buying and Inventory trends.</p><p>4. Conduct personnel performance appraisals to assess training needs.</p><p>5. to maintain stock of stores</p><p>6. Should be familiar with Tally &amp; ERP</p><p>7. maintain all documents related to stores department.</p><p>8. safety knowledge required while working.</p><p>9. support purchase team to resolve their queries</p>', '1. Inventory process, effective verbal and listening communication, Challan preparation, Understanding of Purchase order.Tally, ERP.\r\n2. Knowledge of ESD, MSD, RoHS, PPE, 5S, Material handling and storage.', '2 to 10 Years in Electronics, Electrical, Mechanical Industry. Preferred Industry Type: Electronic Manufacturing Services.', 'Diploma / BE/ BSC in Electronics, Electrical, Mechanical. Or BCOM Or BA ( Economics ) Graduate.\r\nPreferred – MBA in stores management.', '2022-11-16 17:32:37', '2022-12-15 09:32:18'),
(3, 'Sales Executive', 'This position is established to ensure the customers are served Serves customers by identifying their needs.D7', 'Business Development Head / CEO', 'General Duty / Flexible duty hours', 'Applicable', '<p>1.Identifies current and future customer service requirements by establishing personal rapport with potential and actual customers.</p><p>2.Customer interaction – Getting customer purchase Order, review of Purchase Order with planner and engineering support team, Sending PO Acknowledgement and delivery plan to customer,3 months forcast review and follow-up.</p><p>3.Prepares sales reports by collecting, analyzing, and summarizing sales information.</p><p>4. Scheduling of Domestic and International orders.</p><p>5. Customer Order Priority Management.</p><p>6. Tracking action for availability of raw material and other resources for production.</p><p>7.Release work order USING ERP as per sales order</p><div><br></div>', 'Technical Understanding, verbal communication, Understanding of product development phases, problem solving', '5 to 15 Years in Electronics Industry. Preferred Industry Type: Electronic Manufacturing Services', 'Diploma / BE in Electronics, MCOM.Preferred MBA or Business Diploma in Sales / Marketing', '2022-12-15 13:21:12', '2022-12-15 09:37:17'),
(7, 'Dispatch Executive', 'This position is established to ensure the smooth operation of finished good warehouse, production packing dispatches, deliveries and transportation', 'CEO/ Operations Head', 'General Duty', 'Not applicable', '<p>1. To perform excise documentation.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>2. Arrange for customer returned products.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p><p>3. Management of stock transfer through ERP.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>4. Ensure Transporter qualification and on time arrangement of transport.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p><p>&nbsp;5. Arranges transportation and dispatches for all orders to ensure material is delivered as per schedule.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p><p>&nbsp;6. Reviews freight rates: air, courier, and land.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>7. Liaises with custom brokers for updated reporting procedures and valuations.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p><p>8. Generate monthly sales return report, sales report etc.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>9. Co-ordinate with dispatch team for urgent requirements and pending orders.<br></p>', '1. Knowledge of excise, Freight, communication skills, ERP, Knowledge of packing and dispatch.                                2. - ESD, MSD, RoHS, Storage, handling, 5S.', '0 to 2 Years in Electronics Industry. Preferred Industry Type: Electronic Manufacturing Services.', 'B.Com / M. Com / DTL', '2022-12-15 15:47:43', '2022-12-15 22:47:43'),
(8, 'Maintenance Supervisor', 'This position is established to maintain the equipments by completing on time maintenance tasks.', 'Operations Head', 'General Duty', 'Not applicable', '<p>1. Carry out the maintenance activities as per plan.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>2. Preperation, execution and record monitoring of preventive maintenance plan.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p><p>3. Evaluates functionality and reliability of facility systems and associated equipment by conferring with operating departments; identifying problems and requirements.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>4. Experience in measuring KPI’s like MTBF and MTTR.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>5. Spares and contingency plan management.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p><p>6. Supervises and assigns the work of maintenance employees.&nbsp; &nbsp; &nbsp;</p><p>7. Inspects work for completeness.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p><p>8. Coordinates or installs, inspects repairs and maintains the electrical &amp; mechanical systems.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p><p>&nbsp;<span style=\"font-size: 1rem;\">9. Coordinate Annual Maintenance Contract activities for the listed equipments / machines.</span></p>', 'ESD, MSD, 5S, TPM Losses, Safety work practices.', '2 to 8 Years in Electronics Industry. Preferred Industry Type: Electronic Manufacturing Services.', 'ITI / Diploma / BE in Electronics, Electrical, Instrumentation.', '2022-12-15 15:55:57', '2022-12-15 22:55:57'),
(9, 'Operations Head', 'Operation Head is senior role which involves overseeing the production of goods and provision of services. Position is established to ensure the organization is running with smooth and efficient operations/processes that meet the expectations and needs of customer.', 'CEO', 'General Duty', 'Travel is primarily local during the business day, although some out-of-the-area and overnight travel may be expected.', '<p>1. Planning and controlling change management.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p><p>2. Management of Quality Assurance programs or hand to hand support to Quality Assurance programs.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>3. Researching new technologies and alternative methods of efficiency.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p><p>4. Setting and reviewing budgets and managing cost.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p><p>5. Overseeing inventory, distribution of goods and facility layout. 6. Keeping employees motivated and organizing appropriate training&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p><p>7. Working with department heads and senior management to get the best performance from staff.&nbsp; &nbsp; </p><p>8. Make sure the safety regulations are followed.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>9. Ensuring the business operates within the company\'s mission statement and set objectives.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p><p>10. Reviewing working practices to ascertain if it is successful and if not, devise an alternative.<br></p>', 'Leadership, Communication proficiency, Ethical Conduct, Problem solving / analysis, decision making, collaboration, Attention to Detail, Thoroughness, Dealing with Complexity.', '10 to 20 Years in Electronics, Electrical, Electromechanical Industry. Preferred Industry Type: Electronic Manufacturing Services.', 'Diploma / BE  in Electronics, Electrical Six Sigma Green / Black Belt.   Preferred: MBA in operations.', '2022-12-15 15:58:35', '2022-12-15 22:58:35'),
(10, 'Production Planner', '1. Position is established to ensure the goods manufactured by employer are produced in a cost-effective way that meets quality specifications.                 \r\n2. Planner should Makes sure that goods are ready to distribute to customers in a timely fashion. Improves a company\'s production and delivery processes. Ensures the production and delivery of products runs smoothly.', 'C.E.O. / Operations Head', 'General Duty', 'Travel is primarily local during the business day, although some out-of-the-area and overnight travel may be expected.', '<p>1. Liaises with sales division to determine customer requirements.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p><p>2. Develops a production plan detailing all tasks and when they should be completed by to meet predicted completion date.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p><p>3. Monitors production and raw material costs.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p><p>4. Collects and assesses data about the production and team\'s performance&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p><p>5. Prepares reports about production processes for upper management and suggests ways to improve efficiency&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>6. Liaises with customers, SCM, human resources department, and maintenance employees to ensure all workers, materials, and machinery will be available when required.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p><p>7. Monitors New project\'s progress and on time escalation to management for unresolved or pending issues.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>8. Draft Delivery trend, monthly realistic production target plan and monitor the progress.<br></p>', 'Stress Management Skills, Attention to details, Quality Control knowledge, Knowledge of Supply Chain and Distribution Management, Supervisory Experience, Apprenticeship in Production Planning', '2 to 8 Years in Electronics Industry. Preferred Industry Type: Electronic Manufacturing Services.', 'Diploma / BE  in Electronics, Electrical Preferred MBA or Business Diploma in Inventory management, Operations.', '2022-12-15 16:02:20', '2022-12-15 23:02:20'),
(11, 'Sr. Engg - Change Management', '1. Position is established to ensure the smooth and effective management of change request raised internally or by customer for raw material or process improvement.                                                              2. Change Management Engineers prime job is to implement changes effectively', 'ME Manager', 'Gereral Duty', 'NA', '<p>1. To provide alternate part numbers to purchase dept for procurement of non available raw material by acting as bridge between customer &amp; Inyantra purchase team.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p><p>2. Updating raw material changes in ERP system by developing new codes&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p><p>3. Acting bridge between IQA &amp; Purchase for material clearance with help of customer&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p><p>4. New RFQ study for code Generation in manner to avoid duplicate codes&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p><p>5. New RFQ study for master documentation up gradation&nbsp; </p><p>6. Releasing Engineering change Request – internal or external&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p><p>7. Conducting weekly review meeting for raised ECR &amp; converting ECR into ECN&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p><p>8. Implement ECR into system, releasing ECN&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>9. Maintain &amp; Update document change management due to updated ECR&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p><p>10. Maintain &amp; Update Sample record &amp; sample for ECR&nbsp;<br></p>', 'People Management, Communication proficiency, Ethical Conduct, Problem solving / analysis, decision', '3 – 5 Years in ME/Change Management Dept.', 'Diploma or BE in Industrial Electronics / Electronic / Electronic & Telecommunication / Instrumental Electronics', '2022-12-15 16:05:15', '2022-12-15 23:05:15'),
(12, 'Engineer – Documentation Management', 'Position Summary is to Prepare / Update / Maintaining documents of Engineering Dept.', 'ME Manager', 'General Duty', 'NA', '<p>1.&nbsp; Preparing / Update / Maintaining all Process Master logs – such as Stencil stroke monitoring Record, Paste Printing Machine Log, Pick &amp; Place Log, Reflow Log Etc….&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>2. Prepare / Update / Maintaining Control Copy Documents – such as EXCEL BOM, Feeder List, Etc…&nbsp; </p><p>3. Prepare / Update / Maintaining Product or Process Work instructions.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p><p>4. Prepare / Update / Maintaining Master Lists</p><div><br></div>', 'People Management, Communication proficiency, Component Knowledge, ERP Operating,  Excel Etc.', '0-1 Year in ME Dept.', 'Diploma / B.E in - Electronics / Instrumentation / Electronics Telecommunication / Industrial Engg.', '2022-12-15 16:07:21', '2022-12-15 23:07:21'),
(13, 'Asst. Manager Manufacturing Engineering', 'Position Summary is to Assist Manager ME', 'Manager -ME', 'General Duty', 'Applicable', '<p>1. Customer interaction for APQP completion for RFQ&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>2. Launching NPI&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>3. Active member of APQP team&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p><p>4. Active member of Feasibility study team&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>5. Confirming availability of all resources available on line before pilot run as – jigs, fixtures Etc..&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p><p><span style=\"font-size: 1rem;\">6. Validating all set parameters of machine at the time of proto Run&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></p><p><span style=\"font-size: 1rem;\">7. Verification of all documents required in Project run as – BOM, Layout Etc…&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></p><p><span style=\"font-size: 1rem;\">8. Understanding CSR to implement on Line&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></p><p><span style=\"font-size: 1rem;\">9. Lead PFC / PFMEA team to develop Pre &amp; Pro PFC &amp; PFMEA&nbsp; &nbsp; &nbsp; </span></p><p><span style=\"font-size: 1rem;\">10. Lead PPAP team&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></p><p><span style=\"font-size: 1rem;\">11. Co-ordinate with customer for pilot lot observations &amp; CAPA of same&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></p><p><span style=\"font-size: 1rem;\">12. Cycle time monitoring, Manpower estimation, line balancing activities.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></p><p><span style=\"font-size: 1rem;\">13. Verification / validation of Tools, jigs, Programs done on all machines.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></p><p><span style=\"font-size: 1rem;\">14. ECR &amp; ECN management&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></p><p><span style=\"font-size: 1rem;\">15. Confer with management, production, and marketing staff to discuss project specifications and procedures.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></p><p><span style=\"font-size: 1rem;\">16. Coordinate and direct projects, making detailed plans to accomplish goals and directing the integration of technical activities.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></p><p><span style=\"font-size: 1rem;\">17. Plan and direct the installation, testing, operation, maintenance, and repair of facilities and equipment.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></p><p><span style=\"font-size: 1rem;\">18. Set scientific and technical goals within broad outlines provided by top management.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></p><p><span style=\"font-size: 1rem;\">19. Process engineering and service improvement.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></p><p><span style=\"font-size: 1rem;\">20. Detailed engineering and documentation for projects.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></p><p><span style=\"font-size: 1rem;\">21. Planning of projects and evacuation infrastructure from concept to commissioning.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></p><p><span style=\"font-size: 1rem;\">22. Project implementation within set time and cost budget. Deliver projects with the required quantity.</span></p>', '1. APQP, NPI Launching, SIX SIGMA, LEAN, KAIZEN, PFMEA, PFC, CSR, MSA, PPAP Activity, BOM Creation - Performance Management, Giving Feedback, Project Management, Coaching, Foster Teamwork, Supervision, Staffing, Business Knowledge, Technical Leadership, Technical Management, Vision.                                                \r\n2. Process Improvement, Analyzing Information , Strategic Planning, Verbal Communication, Informing Others, Quality Engineering, Emphasizing Excellence, Pharmacology, Attention to Detail, Thoroughness, Dealing with Complexity.', '5 to 10 Years ME Dept.', 'Diploma / B.E in - Electronics & Telecommunication / Electronics.', '2022-12-15 16:09:34', '2022-12-15 23:09:34'),
(14, 'Manager Manufacturing Engineering', 'Position Summary is to Lead ME Department', 'CEO', 'General Duty', 'Applicable', '<p>1. Study of RFQ in line with APQP to decide project requirement&nbsp; &nbsp;</p><p>2. Customer interaction for APQP completion for RFQ</p><p>3. Launching NPI</p><p>4. ECR &amp; ECN management</p><p>5. Confer with management, production, and marketing staff to discuss project specifications and procedures.</p><p>6. Coordinate and direct projects, making detailed plans to accomplish goals and directing the integration of technical activities.</p><p>7. Analyze technology, resource needs, and market demand, to plan and assess the feasibility of projects.</p><p>8. Plan and direct the installation, testing, operation, maintenance, and repair of facilities and equipment.</p><p>9. Direct, review, and approve product design and changes.</p><p>10. Recruit employees; assign, direct, and evaluate their work; and oversee the development and maintenance of staff competence.</p><p>11. Prepare budgets, bids, and contracts, and direct the negotiation of research contracts.</p><p>12. Develop and implement policies, standards and procedures for the engineering and technical work performed in the department firm.</p><p>13. Perform administrative functions such as reviewing and writing reports, approving expenditures, enforcing rules, and making decisions about the purchase of materials or services.</p><p>14. Review and recommend or approve contracts and cost estimates.</p><p>15. Present and explain proposals, reports, and findings to clients.</p><p>16. Consult or negotiate with clients to prepare project specifications.</p><p>17. Set scientific and technical goals within broad outlines provided by top management.</p><p>18. Process engineering and service improvement.</p><p>19. Detailed engineering and documentation for projects.</p><p>20. Planning of projects and evacuation infrastructure from concept to commissioning.</p><p>21. Project implementation within set time and cost budget. Deliver projects with the required quantity.</p>', '1. APQP, NPI Launching, SIX SIGMA, LEAN, KAIZEN, PFMEA, PFC, CSR, MSA, PPAP Activity, BOM Creation - Performance Management, Giving Feedback, Project Management, Coaching, Foster Teamwork, Supervision, Staffing, Business Knowledge, Technical Leadership, Technical Management, Vision.                                                \r\n2. Process Improvement, Analyzing Information , Strategic Planning, Verbal Communication, Informing Others, Quality Engineering, Emphasizing Excellence, Pharmacology, Attention to Detail, Thoroughness, Dealing with Complexity.', '5 to 10 Years ME Dept.', 'Diploma / B.E in - Electronics & Telecommunication / Electronics.', '2022-12-15 16:13:44', '2022-12-15 23:13:44'),
(15, 'Sr. Engg. – Project Lead', 'Position Summary is to Lead Project from Proto Development up to Mass Supply.', 'ME Manager', 'General Duty', 'NA', '<p>1. Active member of APQP team</p><p>2. Active member of Feasibility study team</p><p>3. Confirming availability of all resources available on line before pilot run as – jigs, fixtures Etc..</p><p>4. Setting parameters for proto run on different machine as – Paste Printing, Reflow Etc..</p><p>5. Validating all set parameters of machine at the time of proto Run</p><p>6. Verification of all documents required in Project run as – BOM, Layout Etc…</p><p>7. Verification of received material before project Run</p><p>8. Understanding CSR to implement on Line</p><p>9. Lead PFC / PFMEA team to develop Pre &amp; Pro PFC &amp; PFMEA</p><p>10. Active member of PPAP team</p><p>11. Co-ordinate with customer for pilot lot observations &amp; CAPA of same</p><p>12. Cycle time monitoring &amp; updating&nbsp;</p><p>13. Verification / validation of Tools, jigs, Programs done on all machines.</p>', 'People Management, Communication proficiency, Ethical Conduct, Problem solving / analysis, decision making, Component Knowledge, ERP Operating,  Excel Etc.', '1 to 3 Years ME Dept.', 'Diploma / B.E in - Electronics & Telecommunication / Electronics.', '2022-12-15 16:15:35', '2022-12-15 23:15:35'),
(16, 'Executive HR', 'Position is established Maintains and enhances the organization\'s human resources by planning, implementing, and evaluating employee relations and human resources policies, programs, and practices.', 'Head HR', 'General Duty', 'NA', '<p>1. Recruitment &amp; On Boarding – Support recruitment function of the company both white collar as well as blue collar employees.&nbsp;</p><p>2. HR Administration – Supporting in admin activities.</p><p>3. Promote Cultural Activities &amp; HR Events – As per schedule. Promote employee engagement through continuous promoting the events.&nbsp;</p><p>4. Employee Welfare Activities – At minimum budget.</p><p>5. Maintain Employee Personal File – Prepare personal file of the employee as per checklist and give induction to new joined employee.&nbsp; &nbsp;</p><p>6. Time Keeping – Daily attendance of staff, contract, apprentice &amp; NEEM trainee employees.</p><p>7. Housekeeping Audit – As per checklist</p><p>8. Training &amp; Development – Maintain training calendar, training need identification form &amp; skill matrix for staff &amp; oprt.</p><p>9. CCTV Surveillance – Abnormality Report (if any)</p><p>10. Admin bill processing – Follow up of vendor&nbsp;</p><p>11. Health &amp; Safety – Address health &amp; safety requirement at plant. (Hygiene &amp; sanitation)</p><p>12. Work Environment - Work zone monitoring record, dust test.</p><p>13. Plant visit – Discuss with employee specially female employee regarding their problem on day to day basis.</p><p>14. Access Control – Check register at gate.</p><p>15. Biometrics Attendance – Routinize the biometric attendance of all employees.&nbsp;</p><p>16. Women Grievance committee – Leading the activities of the POSH &amp; women’s grievances committee at workplace, address grievances issue of women employee, follow guidelines as per the act of Prevention of Sexual Harassment at workplace. (POSH) and conduct monthly grievance committee meeting.&nbsp;&nbsp;</p><p>17. Suggestion Box – To check on monthly basis &amp; carry forward for further action.&nbsp;</p>', 'Hiring Skills, Human Resources Management, Benefits Administration, Performance Management, Communication Processes, Compensation and Wage Structure', '4 to 15 Years in Electronics, Electrical, Mechanical Industry.  Preferred Industry Type: Electronic Manufacturing services.', 'BE/ B.Sc/B.Com/BA Graduate. Preferred – MBA in Human Resource.', '2022-12-15 16:16:37', '2022-12-15 23:16:37'),
(17, 'HR Manager', 'Position is established Maintains and enhances the organization\'s human resources by planning, implementing, and evaluating employee relations and human resources policies, programs, and practices', 'C.E.O.', 'General Duty', 'NA', '<p>1. Recruitment – Handling worker recruitment procedure.</p><p>2. Induction &amp; Orientation – For new joined employees.</p><p>3. Customer Audit - Prepare &amp; maintain documentation required for audit.</p><p>4. IR Issues – Resolving issues &amp; maintaining plant discipline.</p><p>5. Housekeeping – Visiting &amp; monitoring on daily basis.</p><p>6. Policy Drafting - Drafting &amp; finalizing new policies &amp; procedures as per requirement.&nbsp;</p><p>7. Contract Compliance -</p><p>8. Employment Bond – Drafting bond for new employee.</p><p>9. Monthly town hall meeting</p><p>10. Gardening – Tree plantation&nbsp;</p><p>11. Plant Facility/Supervision – Facility management towards employee &amp; guest. Attention towards repair &amp; maintenance work of factory building.&nbsp;&nbsp;</p><p>12. MIS Report – Prepare monthly MIS Report.</p><p>13. Confirmation &amp; probation – Finding dues for further procedure.</p><p>14. Employee Transport –</p><p>15. Scrap Disposal –&nbsp;</p><p>16. Half Yearly &amp; Annual Appraisal &amp; Employee Counselling – Counselling towards employee motivation, performance management &amp; employee engagement.</p><p>17. Plant Security –</p><p>18. First Aid Box – Maintain as per list.</p><p>19. Visual display in Factory – Observation &amp; implementation</p><p>20. HR Events – Arrangement &amp; planning</p>', 'Hiring Skills, Human Resources Management, Benefits Administration, Performance Management, Communication Processes, Compensation and Wage Structure', '1. 8 to 15 Years in Electronics, Electrical, Mechanical Industry. \r\n2.Preferred Industry Type: Electronic Manufacturing Services.', 'Diploma / BE/ BSC in Electronics, Electrical, Mechanical. Or BCOM Graduate. Preferred – MBA in Human Resource.', '2022-12-15 16:17:33', '2022-12-15 23:17:33'),
(18, 'Jr. Executive', 'Position is established Maintains and enhances the organization\'s human resources by planning, implementing, and evaluating employee relations and human resources policies, programs, and practices.', 'NA', 'General Duty', 'NA', '<p>1. Joining of Contract Employees</p><p>2. Daily Attendance Report – About present &amp; absent employee.</p><p>3. Plant Housekeeping -&nbsp;</p><p>4. Guest Hospitality &amp; Material arrangement.</p><p>5. TT/OT Cash/ Cheque payment distribution.&nbsp;</p><p>6. Printing &amp; Stationery – As per requirement.</p><p>7. Cab Arrangement &amp; Ticket Booking&nbsp;</p><p>8. Canteen Service – Daily coupon tracking &amp; quantity finalize.</p><p>9. Data Entry – Contract, TT, App &amp; NEEM trainee</p><p>10. Issuing &amp; maintaining PPE&nbsp;</p><p>11. Gardening</p><p>12. Drinking Water for Staff &amp; Visitors</p><p>13. First Aid Box</p>', 'Hiring Skills, Human Resources Management, Benefits Administration, Performance Management, Communication Processes, Compensation and Wage Structure', '2 to 5 Years in Electronics, Electrical, Mechanical Industry. Preferred Industry Type: Electronic Manufacturing Services.', 'BE/ B.Sc/B.Com/BA Graduate. Preferred – MBA in Human Resource.', '2022-12-15 16:18:39', '2022-12-15 23:18:39'),
(19, 'Sr. Executive - HR', 'Position is established Maintains and enhances the organization\'s human resources by planning, implementing, and evaluating employee relations and human resources policies, programs, and practices.', 'Manager Hr & Admin', 'General Duty', 'NA', '<p>1. Staff Recruitment – Handling overall recruitment procedure.&nbsp;&nbsp;</p><p>2. Customer ISO Audits Documentation – Maintain &amp; prepare documentation related with customer audit.&nbsp;</p><p>3. Exit Interviews – To ensure exit formalities &amp; procedure of full &amp; final calculation of employee.</p><p>4. Customer Agreement (NDA) &amp; Policy Drafting – Drafting of agreement as well as new policy drafting &amp; finalizing.&nbsp;</p><p>5. Contract &amp; Factory Compliance -&nbsp;&nbsp;</p><p>6. Monthly Billing – Checking bills of contract, TT, Apprentice employee &amp; Vodafone users.&nbsp;</p><p>7. ITI Apprenticeship – Handling Apprentice portal, Enrollment, registration &amp; online compliance.&nbsp;</p><p>8. Employment Bonds-</p><p>9. Mediclaim Policy – Prepare required documentation &amp; claim settlement.</p><p>10. PF/ESIC/LWF – Resolve query regarding such compliances &amp; online claim settlement.</p><p>11. MIS Report – Prepare monthly MIS report.</p><p>12. MPCB Compliances – Renewal of MPCB Certificate.</p><p>13. Monthly KPI Data Updation –&nbsp;</p><p>14. Leave Updation - Maintain leave data updating as well as leave calculation.</p><p>15. Visual Display &amp; Guest Welcome –&nbsp;</p><p>16. HR Newsletter &amp; Events – Conduct events as per schedule.</p><p>17. Letter Processing – Issuing letters related with HR dept.</p><p>18. Printing Stationery – Receive &amp; issue.</p>', 'Hiring Skills, Human Resources Management, Benefits Administration, Performance Management, Communication Processes, Compensation and Wage Structure', '4 to 8 Years in Electronics, Electrical, Mechanical Industry. Preferred Industry Type: Electronic Manufacturing Services.', 'BE/ B.Sc/B.Com/BA Graduate. Preferred – MBA in Human Resource.', '2022-12-15 16:19:42', '2022-12-15 23:19:42'),
(20, 'HR Manager', 'Position is established Maintains and enhances the organization\'s human resources by planning, implementing, and evaluating employee relations and human resources policies, programs, and practices.', 'C.E.O.', 'General Duty', 'NA', '<p>1. Maintain organization chart by Recruitment, Interview and exit interviews.</p><p>2. Prepares employees for assignments by establishing and conducting orientation and training programs.</p><p>3. Maintains employee benefits programs and informs employees of benefits by studying and assessing benefit needs.</p><p>4. Ensures legal compliance by monitoring and implementing applicable human resource federal and state requirements.</p><p>5. Maintains management guidelines by preparing, updating, and recommending human resource policies and procedures.</p><p>6. Maintains historical human resource records by designing a filing and retrieval system; keeping past and current records.</p><p>7. Maintains human resource staff job results by counseling and disciplining employees; planning, monitoring, and appraising job results.</p><p>8. Employee Administration – Salary, wages, compensation structures, guest hospitality management, canteen, housekeeping, Labor contract management.</p>', 'Hiring Skills, Human Resources Management, Benefits Administration, Performance Management, Communication Processes, Compensation and Wage Structure', '8 to 15 Years in Electronics, Electrical, Mechanical Industry. \r\nPreferred Industry Type: Electronic Manufacturing Services.', 'Diploma / BE/ BSC in Electronics, Electrical, Mechanical. Or BCOM Graduate.\r\nPreferred – MBA in Human Resource.', '2022-12-15 17:11:38', '2022-12-16 00:11:38'),
(21, 'IT Associate', 'Position Summary is to Maintain IT Assets & ERP Server, Database. Maintain Smoothly Working of Mail Services & Internet Services.', 'Asst. Manager – IT', 'General Duty', 'Travel is primarily local during the business day, although some out-of-the-area and overnight travel may be expected.', '<p>1. Maintain All IT Assets, Servers.</p><p>2. Maintain Mail Services &amp; Internet Services.</p><p>3. Maintain ERP software and all related components.</p><p>4. Maintain SQL Database (ERP).</p><p>5. Administrate all security within the ERP system.</p><p>6. Maintain and monitor performance of the ERP system.</p><p>7. Participate in the implementation, testing, and design of new system features.</p><p>8. Perform and manage system upgrades and patches.</p><p>9. Organize and manage peripherals used by the ERP system, such as printers, and scanners, Desktops, Laptops.</p><p>10. Support to users diagnose and debug issues within the ERP system.</p><p>11. Provide end-user support via phone, messaging.</p><p>12. Conduct training for new employees, Make SOP’s Available for All ERP User’s.</p><p>13. Provide second tier support to employees.</p>', 'NA', '1 to 3 Years in IT System Administration.', 'Diploma, B.E, BCS, MCS, Any Graduation.\r\nPreferred Equivalent Graduation with Certification of IT for Example MCP, H/W & N/W Diploma.', '2022-12-15 17:14:45', '2022-12-16 00:14:45'),
(22, 'IT Executive / Engineer.', 'Position Summary is to Maintain IT Assets & ERP Server, Database. Maintain Smoothly Working of Mail Services & Internet Services.', 'C.E.O', 'General Duty', 'Travel is primarily local during the business day, although some out-of-the-area and overnight travel may be expected.', '<p>1. Maintain All IT Assets, Servers.</p><p>2. Maintain Mail Services &amp; Internet Services.</p><p>3. Maintain ERP software and all related components.</p><p>4. Maintain SQL Database (ERP).</p><p>5. Administrate all security within the ERP system.</p><p>6. Maintain and monitor performance of the ERP system.</p><p>7. Participate in the implementation, testing, and design of new system features.</p><p>8. Perform and manage system upgrades and patches.</p><p>9. Organize and manage peripherals used by the ERP system, such as printers, and scanners, Desktops, Laptops.</p><p>10. Support to users diagnose and debug issues within the ERP system.</p><p>11. Provide end-user support via phone, messaging.</p><p>12. Conduct training for new employees, Make SOP’s Available for All ERP User’s.</p><p>13. Provide second tier support to employees.</p>', 'NA', '2 to 8 Years in IT System Administration.', 'Diploma, B.E, BCS, MCS, Any Graduation.\r\nPreferred Equivalent Graduation with Certification of IT for Example MCP, H/W & N/W Diploma.', '2022-12-15 17:17:20', '2022-12-16 00:17:20'),
(23, 'Asst. Manager / Sr. Engineer - Production', 'Position is established to ensure manufacturing processes run reliably and efficient', 'Manager Production', 'General Duty', 'NA', '<p>1. Planning and organization of production schedules.</p><p>2. Organizing the repair and routine maintenance of production equipment.</p><p>3. Organizing relevant training sessions.</p><p>4. Monitor the production processes and adjust schedules as needed.</p><p>5. Monitor product standards and implement quality-control programes.</p><p>6. Provide motivation, support and guidance to all employees.</p><p>7. Establish workflow policies that enhance speed and efficiency without compromising product Quality.</p><p>8. Create schedules for employees to ensure optimum staffing levels.</p><p>9. Strive to reduce the expenses and increase the productivity across all product lines.</p><p>10. Initiate Kaizen activities</p><p>11. Estimate costs and prepare budgets.</p><p>12. Supervise and evaluate performance of production personnel.</p><p>13. Enforce health and safety precautions.</p>', '1. Proficient in MS Office and ERP software\r\n2. Strong decision-making skills and a results-driven approach\r\n3. Experience in reporting on key production metrics – OEE,Absenteesm trend, skill matrix,productivity,efficiency\r\n4. Understanding of quality standards and health & safety regulations. \r\n5. Knowledge of ESD, SMT, PCBA, MSD, RoHS, IPC 610 –F , PPE, 5S, Material handling and storage, 16 TPM losses.\r\n6. Problem solving Methods.', '4 to 8 Years in Electronics, Electrical, Electromechanical Industry. Preferred Industry Type: Electronic Manufacturing Services.', 'Diploma / BE  in Electronics, Electrical \r\nPreferred – Certification courses in production control, soft skills, six sigma.', '2022-12-15 17:19:59', '2022-12-16 00:19:59'),
(24, 'Packing stage Line Leader', 'Position is established to ensure the smooth and efficient operation of packing stage', 'Production Manager', 'General Duty', 'NA', '<p>1. To coordinate between production and logistic team</p><p>2. Administration of packing stage operators (8 to 10 operator)&nbsp;</p><p>3. Packing stage Reports&nbsp;</p><p>4. Arrangement of packing accessories / resources – packing box, bubble sheet, ESD Bags</p><p>5. Coordination with security gate, stores, logistics and production</p><p>6. Sample verification of PDI passed boards. Support PDI stage operation for physical counting of material .&nbsp;</p>', 'Knowledge of ESD, MSD, RoHS, IPC 610 –F , PPE, 5S, Material handling and storage, 16 TPM losses.\r\nProblem solving Methods.', '1 to 8 Years in Electronics, Electrical, Electromechanical Industry.                            \r\n   Preferred Industry Type: Electronic Manufacturing Services.', 'Diploma / BE  in Electronics, Electrical \r\nPreferred – Certification courses in production control, soft skills, six sigma.\r\nPreferred – Certified Internal Auditor for QMS.', '2022-12-15 17:22:55', '2022-12-16 00:22:55'),
(25, 'Production Line Leader', 'Position is established to ensure manufacturing processes run reliably and efficiently.', 'Production Manager', 'Gereral Duty', 'NA', '<p>1. Supervision of production line to ensure production orders were completed on a timely basis</p><p>2. Enforce safety and Quality rules at all time.</p><p>3. On time escalation to management regarding unresolved line issues and production goals.</p><p>4. Draft production reports and monitor the progress.</p><p>5. Initiate and complete process kaizens.Act as a coordinator for line improvements.</p><p>6. Encourage and motivate employees to meet production deadlines and goals.</p><p>7. Perform Production booking activities in ERP.</p><p>8. Administration of workers (Leave plans, Over time, Lunch breaks etc )&nbsp;</p><p>9. Demonstrate sense of urgency while completing adhoc / un planned deliveries.&nbsp;</p><p>10. Demonstrate continual improvement approach in 5S , Kaizens , Line Yields , productivity and safety .&nbsp;</p>', '1. Product line analysis, problem solving capabilities, Time – Management, Oral communication, Knowledge of QC Tools and kaizen, Leadership skiils,Knowledge of OEE,Productivity,Efficiency indicators.\r\n2. Knowledge of ESD, MSD, RoHS, IPC 610 –F , PPE, 5S, Material handling and storage, 16 TPM losses.\r\n3. Problem solving Methods.', '2 to 8 Years in Electronics, Electrical, Electromechanical Industry. Preferred Industry Type: Electronic Manufacturing Services.', 'Diploma / BE  in Electronics, Electrical \r\nPreferred – Certification courses in production control, soft skills, six sigma.\r\nPreferred – Certified Internal Auditor for QMS.', '2022-12-15 17:27:25', '2022-12-16 00:27:25'),
(26, 'Production Manager', 'Position is established to ensure manufacturing processes run reliably and efficiently.', 'Operations Head.', 'General Duty', 'NA', '<p>1. Planning and organization of production schedules.</p><p>2. Assessment of resource requirement and it’s on time communication to ME</p><p>3. Organizing / coordinate the repair and routine maintenance of production equipment.</p><p>4. Organizing relevant training sessions.</p><p>5. Monitor the production processes and adjust schedules as needed.</p><p>6. Monitor product standards and coordinate quality-control programs.</p><p>7. Provide motivation, support and guidance to all employees.</p><p>8. Establish workflow policies that enhance speed and efficiency without compromising product Quality.</p><p>9. Create schedules for employees to ensure optimum staffing levels – UPH Study.</p><p>10. Strive to reduce the expenses and increase the productivity across all product lines.</p><p>11. Initiate Kaizen activities</p><p>12. Estimate costs and prepare budgets.</p><p>13. Supervise and evaluate performance of production personnel. (150+ workers / manager)</p><p>14. Enforce health and safety precautions.</p><p>15. Demonstrate sense of urgency for all adhoc / un planned requests&nbsp;</p><p>16. On time closure of work order and escalation in case of unresolved issues&nbsp;</p>', '1. Proficient in MS Office and ERP software\r\n2. Strong decision-making skills and a results-driven approach\r\n3. Experience in reporting on key production metrics – OEE,Absenteesm trend, skill matrix,productivity,efficiency\r\n4. Understanding of quality standards and health & safety regulations. \r\n5. Knowledge of ESD, MSD, RoHS, IPC 610 –F , PPE, 5S, Material handling and storage, 16 TPM losses.\r\n6. Problem solving Methods.', '8 to 15 Years in Electronics, Electrical, Electromechanical Industry. Preferred Industry Type: Electronic Manufacturing Services.', 'Diploma / BE  in Electronics, Electrical \r\nPreferred – Certification courses in production control, soft skills, six sigma.\r\nPreferred – Certified Internal Auditor for QMS.', '2022-12-15 17:30:50', '2022-12-16 00:30:50'),
(27, 'SMT Technician / Line Leader', 'Position is established to ensure the smooth and efficient operation of assembly line.', 'Production Manager', 'General Duty', 'NA', '<p>1. Working experience to Run manual, semi-automatic and automatic SMT Machines ( Screen printing, pick and place ,Reflow and AOI )</p><p>2. Follow line stop procedures and put continuous efforts to improve OEE.</p><p>3. Set-up of the machine, which includes Component Loading, machine adjustments and ability to perform set-up (feeder loading and changing) per the manufacturing instructions and Standard Operating Procedures&nbsp;</p><p>4. Knowledge of handling and storing moisture sensitive devices (MSDs)&nbsp;</p><p>5. Draft production reports and monitor the progress.</p><p>6. Carry out autonomous maintenance of machines.</p><p>7. Hands on experience in 5S Activities.</p><p>8. Escalation of unresolved issues to management.</p><p>9. Programming of machines.</p>', '1. Knowledge of ESD, MSD, RoHS, IPC 610 –F , PPE, 5S, Material handling and storage, 16 TPM losses.\r\n2. Problem solving Methods.', '1 to 8 Years in Electronics, Electrical, Electromechanical Industry. Preferred Industry Type: Electronic Manufacturing Services.', 'Diploma / BE  in Electronics, Electrical \r\nPreferred – Certification courses in production control, soft skills, six sigma.\r\nPreferred – Certified Internal Auditor for QMS.', '2022-12-15 17:33:03', '2022-12-16 00:33:03'),
(28, 'Test engineer / Line Leader', 'Position is established to ensure the smooth and efficient operation of assembly line.', 'Production Manager', 'General Duty', 'NA', '<p>1. Working experience to Run all test equipment’s -&nbsp;</p><p>2. Testing of PCBA as per Testing procedure&nbsp;</p><p>3. Administration of testing department</p><p>4. PCBA debug support</p><p>5. Prepare Test Reports and communication to QA</p><p>6. Coordination with QA team in MRB activities.</p><p>7. Initiate test resource requirements and communicate to ME</p><p>8. Assistance to QA and ME in completing special builds.</p>', '1. Knowledge of ESD, MSD, RoHS, IPC 610 –F , PPE, 5S, Material handling and storage, 16 TPM losses.\r\n2. Problem solving Methods.', '1 to 8 Years in Electronics, Electrical, Electromechanical Industry. Preferred Industry Type: Electronic Manufacturing Services.', 'Diploma / BE  in Electronics, Electrical \r\nPreferred – Certification courses in production control, soft skills, six sigma.\r\nPreferred – Certified Internal Auditor for QMS.', '2022-12-15 17:37:37', '2022-12-16 00:37:37');
INSERT INTO `career` (`id`, `title`, `summary`, `role`, `location`, `requirement`, `description`, `competencies`, `years`, `qualification`, `created_at`, `updated_at`) VALUES
(29, 'Test Technician', 'Position is established to ensure the smooth and efficient operation of assembly line.', 'Production Manager', 'General Duty', 'NA', '<p>1. Working experience to Run all test equipment’s -&nbsp;</p><p>2. Testing of PCBA as per Testing procedure&nbsp;</p><p>3. Basic debug of PCBA&nbsp;</p><p>4. Prepare Test Reports&nbsp;</p><p>5. Coordination with QA team in debug activities.&nbsp;</p>', '1. Knowledge of ESD, MSD, RoHS, IPC 610 –F , PPE, 5S, Material handling and storage, 16 TPM losses.\r\n2. Problem solving Methods.', '1 to 8 Years in Electronics, Electrical, Electromechanical Industry. Preferred Industry Type: Electronic Manufacturing Services.', 'Diploma / BE  in Electronics, Electrical \r\nPreferred – Certification courses in production control, soft skills, six sigma.\r\nPreferred – Certified Internal Auditor for QMS.', '2022-12-15 17:39:55', '2022-12-16 00:39:55'),
(30, 'Customer Representative', 'Job Description is prepared in accordance with 5.2.2.1 clause of TS16949:2009\r\n Base line expectation from this position is to ensure the understanding of VoC ( Voice of Customer ) in a\r\n Systematic way and all the customer requirements are addressed first time right.', 'C.E.O', 'General Duty', 'Travel is primarily local during the business day, although some out-of-the-area and overnight travel may be expected.', '<p>1. Knowledge/Hands on experience of project Management.</p><p>2. Corrective and preventive action communications with customer.</p><p>3. Interactions to address all the elements included in product development phase.</p><p>4. Initiate formal / informal calls with customers on routine basis to understand VoC.</p>', 'Communication proficiency, Ethical Conduct, decision making, collaboration, Attention to Detail, Thoroughness, Patiance, Attentive.', '2 to 15 Years in Electronics, Electrical, Electromechanical Industry. Preferred Industry Type: Electronic Manufacturing Services.', 'Diploma / BE  in Electronics, Electrical \r\nPreferred - Certification course in Project Management\r\nPreferred – MBA / Diploma in Business Management.', '2022-12-15 17:41:52', '2022-12-16 00:41:52'),
(31, 'Incoming, In process and Outgoing Quality Engineer', 'Position is established to Maintains quality standards by approving incoming materials, in-process production, and finished products; recording quality results.', 'QE Supervisor / Executive', 'General Duty', 'Travel is primarily local during the business day, although some out-of-the-area and overnight travel may be expected.', '<p>1. Incoming: Approves incoming materials by confirming specifications; conducting visual and measurement tests; rejecting and returning unacceptable materials.</p><p>2. Shall Participate in supplier audits, supplier evaluation and supplier development program.</p><p>3. In process: Approves in-process production by confirming specifications; conducting visual and measurement tests; communicating required adjustments to production supervisor.</p><p>4. Out Going: Approves finished products by confirming specifications; conducting visual and measurement tests; returning products for re-work, Rescreening and confirming re-work.</p><p>5. Documents inspection results by completing reports and logs; summarizing re-work and waste; inputting data into quality database.</p><p>6. Keeps measurement equipment operating by following operating instructions; calling for repairs.</p><p>7. Participation in Continual Improvement programs. Lead /Drive Kaizen Activities.</p><p>8. Lead/ drive Material review board, Purge, Deviation, and Problem solving meetings.</p><p>9. Publish daily process performance reports to Top Management.</p><p>10. Skilled in operation of measuring instruments.</p><p>11. Updates job knowledge by participating in educational opportunities; reading technical publications.</p><p>12. Accomplishes quality and organization mission by completing related results as needed.</p><p>13. Participation in New Product Introduction activities.</p>', '1. Documentation skills, Analysing of information, Process improvement ideas, kaizen, Collaboration, Reporting, Excel and ppt.\r\n2. Knowledge of ESD, MSD, RoHS, IPC 610 –F , PPE, 5S, Material handling and storage, 16 TPM losses.', '0 to 6 Years in Electronics Industry. Preferred Industry Type: Electronic Manufacturing Services.', 'Diploma / BE  in Electronics, Electrical \r\nPreferred certification courses in Lean, Six Sigma, QMS, APQP, and PPAP Etc.', '2022-12-15 17:44:05', '2022-12-16 00:44:05'),
(32, 'Management Representative', 'Job Description is prepared in accordance with 5.2.2 clause of TS16949:2009\r\n Base line expectation from this position is to ensure the promotion of Quality culture throughout the \r\n Organization.', 'C.E.O', 'General Duty', 'Travel is primarily local during the business day, although some out-of-the-area and overnight travel may be expected.', '<p>1. Ensuring that processes needed for the quality management system are established, implemented and maintained,</p><p>2. Reporting to top management on the performance of the quality management system and any need for</p><p>Improvement.</p><p>3. Ensuring the promotion of awareness of customer requirements throughout the organization.</p><p>4. Drive / Lead Management Review Meetings.</p><p>5. Drive / Lead Monthly Operations Meetings</p><p>6. Drive HR Support programs</p><p>7. Preferred - Draft HR Policies.</p><p>8. Development of training culture and promot the importance of training throughout the organization.</p>', 'Leadership, Communication proficiency, Ethical Conduct, Problem solving / analysis, decision making, collaboration, Attention to Detail, Thoroughness.', '8 to 15 Years in Electronics, Electrical, Electromechanical Industry. Preferred Industry Type: Electronic Manufacturing Services.', 'Diploma / BE  in Electronics, Electrical \r\nSix Sigma Green / Black Belt.\r\nCertified Internal / Lead QMS Auditor', '2022-12-15 17:46:16', '2022-12-16 00:46:16'),
(33, 'QE Manager  / Senior Quality Manager', '1. Position is established to ensure the required (by customer, by inYantra operations) Quality processes are established, documented, Executed and sustained at inYantra.\r\n2. Assures consistent quality of production by developing and enforcing good manufacturing practice, systems, validating processes; providing documentation; managing staff and through trainings.', 'C.E.O', 'General Duty', 'Travel is primarily local during the business day, although some out-of-the-area and overnight travel may be expected.', '<p>1. Accomplishes quality assurance human resource objectives by recruiting, selecting, orienting, training, assigning, scheduling, coaching, counseling, and disciplining employees; communicating job expectations; planning, monitoring, appraising, and reviewing job contributions; planning and reviewing compensation actions; enforcing policies and procedures.</p><p>2. Achieves quality assurance operational objectives by contributing information and analysis to strategic plans and reviews; preparing and completing action plans; implementing production, productivity, quality, and customer-service standards; identifying and resolving problems; completing audits; determining system improvements; implementing change.</p><p>3. Meets quality assurance financial objectives by estimating requirements; preparing an annual budget; scheduling expenditures; analyzing variances; initiating corrective actions.</p><p>4. Validates quality processes by establishing product specifications and quality attributes; measuring production; documenting evidence; determining operational and performance qualification; writing and updating quality assurance procedures.</p><p>5. Maintains and improves product quality by completing product, company, system, compliance, and surveillance audits; investigating customer complaints; collaborating with other members of management to develop new product , manufacturing and training methods.</p><p>6. Prepares quality documentation and reports by collecting, analyzing and summarizing information and trends including failed processes, stability studies, recalls, corrective actions, and re-validations.</p><p>7. Updates job knowledge by studying trends in and developments in quality management; participating in educational opportunities; reading professional publications; maintaining personal networks; participating in professional organizations.</p><p>8. Enhances department and organization reputation by accepting ownership for accomplishing new and different requests; exploring opportunities to add value to job accomplishments.</p>', '1. Leadership, Communication proficiency, Ethical Conduct, Problem solving / analysis, decision making, collaboration, Attention to Detail, Thoroughness, Dealing with Complexity.\r\n2. Knowledge of ESD, MSD, RoHS, IPC 610 –F , PPE, 5S, Material handling and storage, 16 TPM losses', '8 to 15 Years in Electronics, Electrical, Electromechanical Industry. Preferred Industry Type: Electronic Manufacturing Services.', 'Diploma / BE  in Electronics, Electrical \r\nSix Sigma Green / Black Belt.\r\nCertified Internal / Lead QMS Auditor.', '2022-12-15 17:49:40', '2022-12-16 00:49:40'),
(34, 'QE Supervisor / QE Executive', '1. Position is established to ensure the smooth and effective operation of QE Department.\r\n2. QE Supervisor shall act as a catalyst between engineers and manager and ensure on time execution of defined tasks.', 'QE Manager', 'General Duty', 'Travel is primarily local during the business day, although some out-of-the-area and overnight travel may be expected.', '<p>1. Supervises and coordinates activities of workers/engineers engaged in Incoming, In process and outgoing process/ product inspections.</p><p>2. Knowledge of quality assurance standards, procedures and Documentation Management System.&nbsp;</p><p>3. Management (Tracking, Monitoring and Coordination) of ESD, MSD, RoHS, Incoming Quality Assurance, In process Quality Assurance, Outgoing Quality Assurance, Deviation, Purge, Calibration and Kaizen processes. Awareness / Work experience in ISO9001, TS 16949, PPAP, APQP execution.</p><p>4. Drive material review Board Meetings.</p><p>5. Review and Drive product / process issues.</p><p>6. Generate and maintain various MIS Such as ppm trends, Yield Reports, Cost of poor Quality, % Lot Acceptance trends, Audit reports, Non Conformity Reports Etc.</p><p>7. Maintain RMA (Return Material Authorization Track) and drive to take disposition actions for customer return products.</p><p>8. Follow Line stop and escalation procedure and ensure the unresolved issues are highlighted to management on time.</p><p>9. Management of QE Department trainings.</p><p>10. Train production and CFT on Quality processes.</p><p>11. Work with Product Development and Production personnel to analyze and trend product/process performance.</p><p>12. Assist Quality Manager in QMS, Customer 8D</p><p>13. Administration (Leave plan, work analysis, over time) of QE Department.</p><p>14. Knowledge of QC Tools, Lean, Six Sigma tools &amp; measuring instruments.</p>', '1. Leadership, Communication proficiency, Ethical Conduct, Problem solving / analysis, decision making, People Management.\r\n2. Knowledge of ESD, MSD, RoHS, IPC 610 –F , PPE, 5S, Material handling and storage, 16 TPM losses.', '4 to 8 Years in Electronics Industry. Preferred Industry Type: Electronic Manufacturing Services.', 'Diploma / BE  in Electronics, Electrical \r\nPreferred certification courses in Lean, Six Sigma, QMS, APQP, and PPAP Etc.', '2022-12-15 17:52:18', '2022-12-16 00:52:18'),
(35, 'Test Engineer', '1. This position is established to ensure the smooth operation of functional testing, burn in and reliability testing stages.\r\n2. The candidate must have the ability to plan and execute projects to complete on time at required performance levels, including complete and accurate documentation.', 'QE & Production Manager', 'General Duty', 'Travel is primarily local during the business day, although some out-of-the-area and overnight travel may be expected.', '<p>1. Develop test setup and Test procedures.</p><p>2. Training to Testing team.</p><p>3. Preparation of Test performance report Eg: Yield Reports, failure analysis reports, Top Hitter failure report.</p><p>4. Drive Debug team and ensure on time analysis of failure product.</p><p>5. Shall carry out Test equipment validation and maintenance.</p><p>6. Able to independently handle customer communication to resolve testing issues.</p>', '1. Exp. In production test environment, Reading and understanding of circuit diagrams, Communication proficiency. \r\n2. Knowledge of ESD, MSD, RoHS, IPC 610 –F , PPE, 5S, Material handling and storage, 16 TPM losses.\r\n3. Problem solving Methods.', '0 to 6 Years in Electronics Industry. Preferred Industry Type: Electronic Manufacturing Services.', 'Diploma / BE  in Electronics, Electrical \r\nPreferred – Knowledge of Lab view, PLC, SCADA, C,C+,VB Etc.', '2022-12-15 17:54:10', '2022-12-16 00:54:10'),
(36, 'Visual Inspection stage Line Leader.', '1. Position is established to ensure the smooth and effective operation of Visual Inspection stages.\r\n2. Visual Inspection Leader shall act as a catalyst between production and Quality processes and ensure right quality and quantity.', 'QE Supervisor / Executive.', 'General Duty', 'NA', '<p>1. Responsible to lead a team of VI operators to fulfill VI Stage output with prime focus on Quality.</p><p>2. Responsible the training of new employees and coaching of existing employees.</p><p>3. Ensure 5S among all VI Stages.</p><p>4. To escalate all yield loss conditions immediately to production, Quality and ME team without delays.</p><p>5. Conduct operator’s performance management.</p><p>6. Manage Attendance and OT Records of VI operators.</p><p>7. Responsibility of VI stage data management.&nbsp;</p><p>8. Drive Weekly MRB Meeting.</p><p>9. Responsible to drive on line rework of defective PCBA’s</p><p>10. Generate daily Yield Reports and it’s communication to Management.</p><p>11. To drive process Kaizens and act as a CFT in Yield Improvement projects.</p><p>12. Hands on experience of IPCA 610 F.</p><p>13. Participation in Line audits, Petrolling Inspection</p>', '1. People Management, Communication proficiency, Ethical Conduct, Problem solving / analysis, decision making, Visual Inspection standard, Excel Etc.\r\n2. Knowledge of ESD, MSD, RoHS, IPC 610 –F , PPE, 5S, Material handling and storage, 16 TPM losses.', '0 to 4 Years in Electronics Industry. Preferred Industry Type: Electronic Manufacturing Services.', 'Diploma / BE  in Electronics, Electrical \r\nPreferred certification courses in Lean, Six Sigma, QMS, APQP, and PPAP Etc.', '2022-12-15 17:55:55', '2022-12-16 00:55:55'),
(37, 'Procurement Engineer / Buyer', 'This position is established to ensure reliable and efficient operation included in supply chain processes (sourcing,procurement,costing,supplier selection, evaluation and development, Post supply claim management )', 'SCM Manager', 'General Duty', 'Travel is primarily local during the business day, although some out-of-the-area and overnight travel may be expected.', '<p>1. Evaluate MRP action reports to define the need for the purchased product, prepare RFQs, evaluate quotes, select suppliers, create and approve purchase orders (POs), as well as the delivery of approved POs to suppliers.</p><p>2. Monitor multiple performance characteristics such as OTD and Quality, supplier audits and monitor corrective actions.</p><p>3. Drive alternate supplier development and cost optimization efforts.</p><p>4. Develop Experience in Supplier Management to foster relationships with suppliers.</p><p>5. Determines the need for and leads, supplier meeting on Agreements concerns and coordinates other supplier activities as appropriate.</p>', 'Stress Management Skills, spoken and written communication skills, problem solving and maths skills, good geographical knowledge, planning and organizational skills, Knowledge of logistic terms, Knowledge of ERP. Purchase order evaluation and approval process, People Management Skills.', '0  to 10 Years in Electronics Industry. Preferred Industry Type: Electronic Manufacturing Services.', 'Diploma / BE  in Electronics, Electrical \r\nPreferred MBA or Business Diploma in Supply chain management, Inventory management.', '2022-12-15 17:58:02', '2022-12-16 00:58:02'),
(38, 'Supply Chain Manager', 'This position is established to ensure reliable and efficient operation included in supply chain processes (sourcing,procurement,costing,supplier selection, evaluation and development, Post supply claim management )', 'C.E.O./ Finance Head', 'General Duty', 'Travel is primarily local during the business day, although some out-of-the-area and overnight travel may be expected.', '<p>1. Source and identify potential suppliers within and outside the India.&nbsp;</p><p>2. Conducting engineering discussions with marketing and engineering team&nbsp;</p><p>3. Negotiating and managing contracts with suppliers.</p><p>4. Planning the best way ( Lead time ,cost optimization , error free goods ) to get goods from suppliers to distribution</p><p>5. Ref : QP-11-00 –Supplier selection , evaluation and development procedure&nbsp;</p><p>6. Tracking shipments and stock levels using through excel database and ERP</p><p>7. Looking at ways to improve supply chain networks.</p><p>8. Monitoring overall performance to make sure targets are met.</p><p>9. Preparing forecasts and inventories reports and monitor the progress.</p><p>10. Recruiting, training and managing a team of supply chain staff</p><p>11. Ownership of supplier selection, evaluation and development process</p>', 'Stress Management Skills, spoken and written communication skills, problem solving and maths skills, good geographical knowledge, planning and organizational skills, Knowledge of logistic terms, Knowledge of ERP', '5 to 15 Years in Electronics Industry. Preferred Industry Type: Electronic Manufacturing Services.', 'Diploma / BE  in Electronics, Electrical \r\nPreferred MBA or Business Diploma in Supply chain management, Inventory management.', '2022-12-15 17:59:53', '2022-12-16 00:59:53');

-- --------------------------------------------------------

--
-- Table structure for table `careerenquiry`
--

CREATE TABLE `careerenquiry` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `location` varchar(1000) NOT NULL,
  `city` varchar(255) NOT NULL,
  `resume` varchar(255) DEFAULT NULL,
  `comment` mediumtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext CHARACTER SET utf8,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Yuva Program', '<p><b>YUVA :</b> Youth Up skilling Via Anomaly (Make difference strategy)</p><p><span style=\"font-size: 1rem;\">Better interaction between Technical institutions and industry is the need of the hour. With the advent of globalization and the opening up of the Indian economy to the outside world, competition among industries has become stiff. There is an urgent need to prepare engineering students for jobs &amp; entrepreneurship by exposing them to newer technologies, best practices &amp; Zero to One thought process. These objectives can only be achieved well by bridging the gap between industry and the academic institute</span><br></p><p><span style=\"font-size: 1rem;\">To promote Industry - Institute Interaction, Zillion Link is specifically working on a planned strategy. Our mission is to develop competent, skilled, capable youth guzzled with the spirit of entrepreneurship to meet the global workforce.</span><br></p><p><span style=\"font-size: 1rem;\">Zillion Link is the first of its kind pioneering models specifically working on psychology counselling of youth. The students &amp; Employees are free to contact the counseling service with a wide range of worries, including personal, home and family relationships, depression, anxiety, and loneliness Counselling psychologists help students and employees with physical, emotional and mental health issues improve their sense of well-being, alleviate feelings of distress and resolve crises.</span><br></p>', '2022-08-05 12:11:44', '2022-09-26 11:52:09'),
(3, 'Acceleration Programs', '<p style=\"text-align: justify; padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(127, 136, 151); font-family: sofiapro, sans-serif;\">Whether looking to streamline functions for your business or seeking ways to improve the Top Line and Bottom Line of your business. Whatever the size of your organization, Subject Matter Experts at Zillion Link will create an impactful solutions for you. We have started working on all these models when our associates decided to make expensive education to more affordable, practical, time efficient and entertaining. Education should not waste your time with knowledge that is only useful in an exam. It should make you better in practice.</p><p style=\"text-align: justify; padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(127, 136, 151); font-family: sofiapro, sans-serif;\">All course developers and lecturers involved are Subject Matter Experts and Industry working professionals</p>', '2022-08-25 18:39:08', '2022-09-26 11:52:09'),
(5, 'Cyber Security Awareness', '<h6 style=\"text-align: justify; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: sofiapro, sans-serif; color: rgb(35, 61, 99); font-size: 30px; padding: 0px;\"><span style=\"color: rgb(127, 136, 151); font-size: 1rem;\">Crimes are not be measured by the issue of events, but the bad intentions of men</span><br></h6><p style=\"text-align: justify; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(127, 136, 151); font-family: sofiapro, sans-serif;\">The modern thief can steal more with a computer than with a gun. Tomorrow’s terrorists may be able to do more damage with a keyboard than a bomb</p><p style=\"text-align: justify; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(127, 136, 151); font-family: sofiapro, sans-serif;\">Awareness of Application Cyber security is a need of hour.</p>', '2022-09-08 12:38:45', '2022-12-01 21:40:31'),
(7, 'Job Oriented Training', NULL, '2022-10-03 10:52:09', '2022-10-03 05:22:09');

-- --------------------------------------------------------

--
-- Table structure for table `consumerenquiry`
--

CREATE TABLE `consumerenquiry` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `place` varchar(255) NOT NULL,
  `service` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consumerenquiry`
--

INSERT INTO `consumerenquiry` (`id`, `name`, `company`, `phone`, `email`, `state`, `place`, `service`, `experience`, `created_at`, `updated_at`) VALUES
(8, 'AMEY', 'Mundle', '9404172172', 'amey@ycstech.in', 'mh', 'mh', 'Other', '2', '2022-12-21 14:45:33', '2022-12-21 21:45:33');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` mediumtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `phone`, `email`, `address`, `created_at`, `updated_at`) VALUES
(0, '+91 8605008590', 'edu@zillionlink.in, trade@zillionlink.in, connect@zillionlink.in', 'Renuka Industrial Estate, Unit No. 1, Darshana Properties, Narhe Industrial Estate Rd, Dhayari Phata, Pune', '2022-11-02 13:22:54', '2022-12-21 22:02:53');

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `counter` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`id`, `title`, `counter`, `created_at`, `updated_at`) VALUES
(1, 'EXPERT INSTRUCTORS', '7520', '2022-08-02 06:55:54', '2022-09-12 12:11:27');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `category_id`, `title`, `price`, `image`, `description`, `type`, `created_at`, `updated_at`) VALUES
(1, 5, 'Electronics paper', '500', '16843406.png', '<p>Electronics paper<br></p>', 'Online', '2022-08-30 12:12:31', '2022-08-30 06:42:31'),
(2, 6, 'Electronics Practical', '500', '85738695.png', '<p>Electronics Practical<br></p>', 'Offline', '2022-08-30 12:15:43', '2022-08-30 06:45:43');

-- --------------------------------------------------------

--
-- Table structure for table `courses_ques`
--

CREATE TABLE `courses_ques` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `remark` text,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses_ques`
--

INSERT INTO `courses_ques` (`id`, `course_id`, `question`, `remark`, `created_at`, `updated_at`) VALUES
(17, 13, 'Soldering is done to improve.\r\n1. Conductivity\r\n2. Mechanical Strength\r\n3. Mechanical Power\r\n4. Ductility', NULL, '2022-10-11 12:22:18', '2022-10-11 06:52:18'),
(18, 13, 'Solder which is used for joining metal pieces is the alloy of\r\n1. Tin & Lead\r\n2. Zink and Lead\r\n3. Zink and tin\r\n4. None', NULL, '2022-10-11 12:23:46', '2022-10-11 06:53:46'),
(20, 13, 'IPC7711 is\r\n1. Rework process standard\r\n2. Quality Management System Standard\r\n3. UL certificate\r\n4. Repair of IC’s', NULL, '2022-10-11 12:26:22', '2022-10-11 06:56:22'),
(21, 13, 'Electronic Products are classified as \r\n1. Class A , Class B , Class C\r\n2. Class 1 , Class 2 , Class 3\r\n3. Class A1 , Class A2 , Class A3', NULL, '2022-10-11 12:27:02', '2022-10-11 06:57:02'),
(22, 13, 'Electrical clearance means\r\n1. Difference between 2 conductors\r\n2. Distance between 2 conductors\r\n3. Electrical component\r\n4. Electrical characteristic of conductor', NULL, '2022-10-11 12:28:09', '2022-10-11 06:58:09'),
(23, 13, 'Write any 2 reasons of cold solder', NULL, '2022-10-11 12:28:40', '2022-10-11 06:58:40'),
(24, 13, 'Write brief note about VI zone', NULL, '2022-10-11 12:28:55', '2022-10-11 06:58:55'),
(25, 13, 'Write any 2 differences between leaded and lead free solder', NULL, '2022-10-11 12:29:06', '2022-10-11 06:59:06'),
(26, 13, 'Write brief note on TARGET condition of all class 1 , class 2 and class 3 lead free product', NULL, '2022-10-11 12:29:32', '2022-10-11 06:59:32'),
(27, 13, 'Write any 5 SMT defects', NULL, '2022-10-11 12:29:44', '2022-10-11 06:59:44'),
(28, 13, 'Write 3 levels of conformance', NULL, '2022-10-11 12:29:58', '2022-10-11 06:59:58'),
(29, 13, 'Write 3 skill levels in rework', NULL, '2022-10-11 12:30:08', '2022-10-11 07:00:08'),
(30, 13, 'Points to fulfil / take care in rework process', NULL, '2022-10-11 12:30:16', '2022-10-11 07:00:16'),
(31, 13, 'Write any 5 tools / material required for soldering , write the temperature requirements of tin lead and lead free soldering', NULL, '2022-10-11 12:30:35', '2022-10-11 07:00:35'),
(32, 13, 'Write any 5 electronic components and legend markings', NULL, '2022-10-11 12:30:51', '2022-10-11 07:00:51'),
(33, 13, 'Write brief note on soldering method', NULL, '2022-10-11 12:31:01', '2022-10-11 07:01:01'),
(34, 13, 'Write brief note on PCB Handling and storage', NULL, '2022-10-11 12:31:11', '2022-10-11 07:01:11'),
(36, 14, 'Write your understanding on visual inspection', NULL, '2022-10-11 12:52:13', '2022-10-11 07:22:13'),
(37, 14, 'What is IPCA 610 F', NULL, '2022-10-11 12:52:26', '2022-10-11 07:22:26'),
(38, 14, 'Electronic Products are classified as', NULL, '2022-10-11 12:52:37', '2022-10-11 07:22:37'),
(39, 14, 'Write any 5 SMT defects', NULL, '2022-10-11 12:52:46', '2022-10-11 07:22:46'),
(40, 14, 'Assembly conditions\r\n1. Target , Acceptable , defect\r\n2. Target , defect , rejection\r\n3. Target , deviation , not acceptable\r\n4. Process indication , deviation , acceptable , reject', NULL, '2022-10-11 12:53:13', '2022-10-11 07:23:13'),
(41, 14, 'Write any 2 benefits of using magnifier', NULL, '2022-10-11 12:53:27', '2022-10-11 07:23:27'),
(42, 14, 'Write brief note about VI zone', NULL, '2022-10-11 12:53:36', '2022-10-11 07:23:36'),
(43, 14, 'Write any 2 do’s and don’ts in inspection stage', NULL, '2022-10-11 12:53:45', '2022-10-11 07:23:45'),
(44, 14, 'Write any 10 defects in electronic assembly', NULL, '2022-10-11 12:53:58', '2022-10-11 07:23:58'),
(45, 14, 'Write any 2 defects related to lamination', NULL, '2022-10-11 12:54:11', '2022-10-11 07:24:11'),
(46, 14, 'Write any 2 defects related to hardware', NULL, '2022-10-11 12:54:20', '2022-10-11 07:24:20'),
(47, 14, 'Write your understanding on CDC Method', NULL, '2022-10-11 12:54:29', '2022-10-11 07:24:29'),
(48, 14, 'Write 5S', NULL, '2022-10-11 12:54:38', '2022-10-11 07:24:38'),
(49, 14, 'What shall be the lux requirement in inspection stage\r\n1. 1000 lm/m2\r\n2. 1000 cm / s2\r\n3. 1000 mtr\r\n4. 1000 Kg', NULL, '2022-10-11 12:55:09', '2022-10-11 07:25:09'),
(50, 14, 'What is the long form of ESD\r\n1. Electrostatic Discharge\r\n2. Electrostatic charge\r\n3. Electron Surface Devices\r\n4. Electro static Device', NULL, '2022-10-11 12:55:36', '2022-10-11 07:25:36'),
(51, 15, 'Whats is ESD? Write your understanding in brief', NULL, '2022-10-11 13:02:50', '2022-10-11 07:32:50'),
(53, 15, 'What type of parts are ESD Sensitive? \r\n1. Integrated Circuits (DIPs, QFP, BGA, SOT, etc.)\r\n2. Crystals and oscillators.\r\n3. Printed Circuit Board Assemblies.\r\n4. When in doubt, treat it as ESDS!\r\n5. All above', NULL, '2022-10-11 13:03:46', '2022-10-11 07:33:46'),
(54, 15, '3 ESD Source Models \r\n1. HBM , CDM , MM\r\n2. HBM , SDM ,MM\r\n3. HBM , HDM , MM\r\n4. BBM , HDM , MM', NULL, '2022-10-11 13:04:13', '2022-10-11 07:34:13'),
(55, 15, 'Write any 2 common causes of ESD', NULL, '2022-10-11 13:04:24', '2022-10-11 07:34:24'),
(56, 15, 'Write note on catastrophic failure and latent failure', NULL, '2022-10-11 13:04:32', '2022-10-11 07:34:32'),
(57, 15, 'What is the impact of ESD non-compliance on business\r\n1. Higher manufacturing costs- Rework ,Repair ,Scrap\r\n2. Lower production yields\r\n3. Unhappy customers - Shorter product life , Reduce product reliability\r\n4. All above', NULL, '2022-10-11 13:05:04', '2022-10-11 07:35:04'),
(58, 15, 'How are ESD Control Areas identified?\r\n1. An ESD Control Area sign\r\n2. With red tape on the floor\r\n3. By your supervisor\r\n4. By the customers', NULL, '2022-10-11 13:05:33', '2022-10-11 07:35:33'),
(59, 15, 'What is the most effective way of keeping a person grounded? \r\n1. Wrist strap.\r\n2. Touching a dissipative mat.\r\n3. Wearing all cotton clothing.\r\n4. Touching insulator.', NULL, '2022-10-11 13:06:01', '2022-10-11 07:36:01'),
(60, 15, 'Which of the following should you do to help the ESD controls at our site? \r\n1. Test and log your heel and wrist strap daily\r\n2. Check your work bench for proper grounding when beginning work\r\n3. Always look for ESD violations, everyone be an auditor\r\n4. Move ESDS components and assemblies in the proper containers\r\n5. All of the above', NULL, '2022-10-11 13:06:29', '2022-10-11 07:36:29'),
(61, 15, 'Practical – Measurements', NULL, '2022-10-11 13:06:42', '2022-10-11 07:36:42'),
(62, 18, 'Brief on ESD', NULL, '2022-10-11 13:07:13', '2022-10-11 07:37:13'),
(63, 18, 'Brief about MSD', NULL, '2022-10-11 13:07:24', '2022-10-11 07:37:24'),
(64, 18, 'Brief about RoHS', NULL, '2022-10-11 13:07:32', '2022-10-11 07:37:32'),
(65, 18, 'Brief about IPCA 610 F', NULL, '2022-10-11 13:07:43', '2022-10-11 07:37:43'),
(66, 18, 'Write any 4 do’s and don’ts at SMT', NULL, '2022-10-11 13:07:52', '2022-10-11 07:37:52'),
(67, 18, 'Write process flow of SMT', NULL, '2022-10-11 13:08:01', '2022-10-11 07:38:01'),
(68, 18, 'Write any 8 SMT defects', NULL, '2022-10-11 13:08:09', '2022-10-11 07:38:09'),
(69, 18, 'Write brief on solder paste management', NULL, '2022-10-11 13:08:17', '2022-10-11 07:38:17'),
(70, 18, 'Write 4 important parameter of screen printing programing', NULL, '2022-10-11 13:08:24', '2022-10-11 07:38:24'),
(71, 18, 'Write any 2 feeder type used in pick and place machine', NULL, '2022-10-11 13:08:34', '2022-10-11 07:38:34'),
(72, 18, 'Which nozzle type is used for 0201 and 0402 components', NULL, '2022-10-11 13:08:41', '2022-10-11 07:38:41'),
(73, 18, 'How to optimise pick and place cycle. Give any 2 suggestions', NULL, '2022-10-11 13:08:50', '2022-10-11 07:38:50'),
(74, 18, 'Write short note on reflow profiling', NULL, '2022-10-11 13:08:58', '2022-10-11 07:38:58'),
(75, 18, 'Write short note on AOI', NULL, '2022-10-11 13:09:09', '2022-10-11 07:39:09'),
(76, 18, 'Write short note on SPI', NULL, '2022-10-11 13:09:17', '2022-10-11 07:39:17'),
(77, 19, 'Solder ability Defects Created During BGA Rework\r\n1. Solder void\r\n2. Solder Short\r\n3. Solder open\r\n4. All above', NULL, '2022-10-11 13:10:20', '2022-10-11 07:40:20'),
(79, 19, 'Write any 6 Material, Equipment and Tooling Used in BGA rework', NULL, '2022-10-11 13:10:44', '2022-10-11 07:40:44'),
(80, 19, 'Write any 5 BGA defect', NULL, '2022-10-11 13:10:59', '2022-10-11 07:40:59'),
(81, 19, 'Write your understanding on PCB X raY Inspection system', NULL, '2022-10-11 13:11:08', '2022-10-11 07:41:08'),
(82, 19, 'Write any 2 parameters in X Ray machine programing', NULL, '2022-10-11 13:11:17', '2022-10-11 07:41:17'),
(83, 19, 'Write any 2 features of CPB X ray inspection device', NULL, '2022-10-11 13:11:25', '2022-10-11 07:41:25'),
(84, 19, 'What components are inspected at X ray', NULL, '2022-10-11 13:11:33', '2022-10-11 07:41:33'),
(86, 19, 'X ray inspection system can observe the inside object in \r\n1. Non-destructive manner\r\n2. Destructive Manner\r\n3. Haloic Manner\r\n4. Non of above', NULL, '2022-10-11 13:12:12', '2022-10-11 07:42:12'),
(87, 21, 'Dross formation occur because of \r\n1. Molten Solder\r\n2. Oxygen\r\n3. Contaminants\r\n4. Surface area\r\n5. Sum of above', NULL, '2022-10-11 13:16:24', '2022-10-11 07:46:24'),
(88, 21, 'Purpose of preheating \r\n1. To Activate the Flux\r\n2. To Reduce Thermal Shock of the circuit board and components\r\n3. Increase the speed of soldering\r\n4. Evaporate the flux solvents\r\n5. Assist in top side hole fill\r\n6. All above', NULL, '2022-10-11 13:16:54', '2022-10-11 07:46:54'),
(89, 21, 'Elements required to solder\r\n1. Base metal\r\n2. Solder\r\n3. Flux\r\n4. All', NULL, '2022-10-11 13:17:18', '2022-10-11 07:47:18'),
(91, 21, 'Wave solder machine module consists of\r\n1. Conveyor\r\n2. Spray Fluxer\r\n3. Preheat\r\n4. Solder Pot & Nozzles\r\n5. Software\r\n6. All above', NULL, '2022-10-11 13:18:57', '2022-10-11 07:48:57'),
(92, 21, 'Types of spray fluxer \r\n1. Ultrasonic -\r\n2. Drum -\r\n3. Nozzle\r\n4. All above', NULL, '2022-10-11 13:19:24', '2022-10-11 07:49:24'),
(93, 21, 'Chip wave required ……………….&………………….to avoid shadow effect \r\n1. 20 deg angle and 2mm opening\r\n2. 15 deg angle and 10mm opening\r\n3. 30 deg angle and 20 mm opening\r\n4. 10 deg angle and 1 mm opening', NULL, '2022-10-11 13:20:15', '2022-10-11 07:50:15'),
(94, 21, 'The three critical parameters that must be monitored daily are\r\n1. Pre-Heat Slope\r\n2. Dwell Time\r\n3. Wave Parallelism\r\n4. All above', NULL, '2022-10-11 13:20:33', '2022-10-11 07:50:33'),
(95, 21, 'Write brief on Wave solder steps\r\n1. Fluxing\r\n2. Pre-heating\r\n3. Soldering\r\n4. Cool down', NULL, '2022-10-11 13:21:03', '2022-10-11 07:51:03'),
(96, 21, 'Write brief on temperature profiling. Why temperature profiling', NULL, '2022-10-11 13:21:14', '2022-10-11 07:51:14'),
(97, 21, 'Write important steps in pallet design\r\n1. Determine max allowable clearance between the underside of the PCB &amp; top of wave pot.\r\n2. Combined with the height of the tallest underside SMT + Clearance allowance this will give you your pallet thickness.\r\n3. Design the PTH apertures to give maximum open area and clearances & 12mm from aperture edge to PTH joint\r\n4. All above', NULL, '2022-10-11 13:22:03', '2022-10-11 07:52:03'),
(98, 21, 'Write any 2 PPE’s required in wave soldering operation', NULL, '2022-10-11 13:22:11', '2022-10-11 07:52:11'),
(99, 21, 'Write 4 phases of trouble shooting', NULL, '2022-10-11 13:22:21', '2022-10-11 07:52:21'),
(100, 21, 'Basic causes of defect\r\n1. Machine Related\r\n2. Design Related\r\n3. Material Related\r\n4. Human Error\r\n5. Act of God???\r\n6. All above', NULL, '2022-10-11 13:22:43', '2022-10-11 07:52:43'),
(104, 22, 'Stencil printing process flow true or false – \r\n 1.Aperture filling\r\n2. Stencil separation\r\n3. Paste release\r\n4. Solder deposit', NULL, '2022-10-14 11:08:46', '2022-10-14 18:08:46'),
(105, 22, 'Stencil fabrication is \r\n\r\n 1. Chemically etched\r\n\r\n  2. Laser\r\n 3. Electroformed\r\n 4. All above', NULL, '2022-10-14 11:16:14', '2022-10-14 18:16:14'),
(106, 22, 'Vehicle by which the volume and placement location of solder paste deposition is controlled.\r\n  1. True\r\n  2. False', NULL, '2022-10-14 11:16:14', '2022-10-14 18:16:14'),
(107, 22, '60% - 70% of all defects are attributed to solder paste and stencil printing process \r\n  1. True\r\n  2. False', NULL, '2022-10-14 11:16:14', '2022-10-14 18:16:14'),
(108, 22, 'Write any 5 screen printing defects \r\n   1. Paste misalignment\r\n2. In complete print\r\n3. Smudged print\r\n 4. Bridging\r\n 5. Paste scooping\r\n 6. Paste residue', NULL, '2022-10-14 11:16:14', '2022-10-14 18:16:14'),
(109, 22, 'Write the long form of SPC', NULL, '2022-10-14 11:16:14', '2022-10-14 18:16:14'),
(110, 22, 'What to check in misalignment defect\r\n1. Verify PCB and stencil alignment.\r\n2. Check machine offsets.\r\n3. Check fiducials.\r\n4. All above', NULL, '2022-10-14 11:16:14', '2022-10-14 18:16:14'),
(111, 22, 'Top cover of machine – Prevents solder paste from being exposed to environment.\r\n1. True\r\n2. False', NULL, '2022-10-14 11:21:05', '2022-10-14 18:21:05'),
(112, 22, 'Emergency Stop buttons – Used to stop the machine when there is a problem.\r\n1. True\r\n2. False', NULL, '2022-10-14 11:21:05', '2022-10-14 18:21:05'),
(113, 22, 'There are 2 categories of screen printer – Semi automatic and Automatic.\r\n1. True\r\n2. False', NULL, '2022-10-14 11:21:05', '2022-10-14 18:21:05'),
(114, 22, 'Write any 4 print machine program parameters.', NULL, '2022-10-14 11:21:05', '2022-10-14 18:21:05'),
(115, 22, 'Why stencil cleaning required?', NULL, '2022-10-14 11:21:05', '2022-10-14 18:21:05'),
(116, 23, 'High resolution camera improves.\r\n1. increased acceptance rate during vision\r\n2. detection of miss pick up of components\r\n3. Both', NULL, '2022-10-14 11:30:15', '2022-10-14 18:30:15'),
(117, 23, 'Different placement profiles.\r\n1. No air kiss\r\n2. Short air kiss\r\n3. Normal air kiss as used\r\n4. All above', NULL, '2022-10-14 11:34:32', '2022-10-14 18:34:32'),
(118, 23, 'Write 7 placement sequence.', NULL, '2022-10-14 11:34:32', '2022-10-14 18:34:32'),
(119, 23, 'Primary attributes of component placement system.\r\n1. Accuracy\r\n2. Speed\r\n3. Flexibility\r\n4. Resolution\r\n5. All above', NULL, '2022-10-14 11:34:32', '2022-10-14 18:34:32'),
(120, 23, 'Write any 2 defects occur during placement .\r\n1. Missing Part\r\n2. Wrong orientation\r\n3. Wrong part\r\n4. Mis-aligned component\r\n5. All above', NULL, '2022-10-14 11:34:32', '2022-10-14 18:34:32'),
(121, 23, 'Most common feeder types.\r\n1. tape and reel\r\n2. matrix tray\r\n\r\n3. magazine or tube\r\n4. bulk\r\n5. All above', NULL, '2022-10-14 11:34:32', '2022-10-14 18:34:32'),
(122, 24, 'Joining 2 (Base) metals using a 3 rd metal called “SOLDER”.\r\n1. True\r\n2. False', NULL, '2022-10-14 12:02:50', '2022-10-14 19:02:50'),
(123, 24, 'Soldering requirement.\r\n1. Solder metal\r\n2. Heat\r\n3. Clean surfaces\r\n4. Flux\r\n5. All above', NULL, '2022-10-14 12:02:50', '2022-10-14 19:02:50'),
(124, 24, '63sn /37pb lead time loquadious temperature.\r\n1. 183\r\n2. 179\r\n3. 218\r\n4. 220', NULL, '2022-10-14 12:02:50', '2022-10-14 19:02:50'),
(125, 24, 'Flux: Removes oxidation from the metal surfaces to be soldered.\r\n1. True\r\n2. False', NULL, '2022-10-14 12:02:50', '2022-10-14 19:02:50'),
(126, 24, 'Reflow profile consists of.\r\n1. Preheat (Ramp)\r\n2. Preflow (Soak,Preheat)\r\n3. Reflow (Spike)\r\n4. Cooldown\r\n5. All above', NULL, '2022-10-14 12:02:50', '2022-10-14 19:02:50'),
(127, 24, 'With SAC reflow occurs at.\r\n1. 217 deg\r\n2. 220 deg\r\n3. 230 deg\r\n4. 183 deg', NULL, '2022-10-14 12:02:50', '2022-10-14 19:02:50'),
(128, 24, 'Oven control parameters.\r\n1. Conveyor Speed\r\n2. Heat Zone Temperatures\r\n3. Convection Level (Fan Speed)\r\n4. All above', NULL, '2022-10-14 12:02:50', '2022-10-14 19:02:50'),
(129, 24, 'Solder ball troubleshooting.\r\n1. Adjust preheat profile\r\n2. Reduce fines in paste powder\r\n3. Increase paste viscosity\r\n4. Increase paste metal content\r\n5. All above', NULL, '2022-10-14 12:02:50', '2022-10-14 19:02:50'),
(130, 24, 'IPC7095 is.\r\n1. Design and Assembly Process Implementation for BGAs\r\n2. Design and Assembly Process Implementation for routers\r\n3. Design and Assembly Process Implementation for SOP\r\n4. Design and Assembly Process Implementation for Diodes', NULL, '2022-10-14 12:02:50', '2022-10-14 19:02:50'),
(131, 24, 'Write brief on cooling zone.', NULL, '2022-10-14 12:02:50', '2022-10-14 19:02:50'),
(132, 25, 'Why ICT test coverage is LOW.\r\n1. Poor Design For Testability (DFT)\r\n\r\n2. Lack of test access\r\n3. No special test modes for complex ICs or ASICs\r\n4. Poor fixture quality\r\n5. All above', NULL, '2022-10-14 12:12:29', '2022-10-14 19:12:29'),
(133, 25, 'ICT limitations. Can’t detect certain ICT Failures.\r\n1. Parametric failures\r\n2. Device matching problem\r\n3. Component reliability issue\r\n4. Speed problem\r\n5. All above', NULL, '2022-10-14 12:12:29', '2022-10-14 19:12:29'),
(134, 25, 'The long form of ICT.', NULL, '2022-10-14 12:12:29', '2022-10-14 19:12:29'),
(135, 25, 'ICT fixtures use bed-of-nails technology and are adversely affected by movement of components and test targets.\r\n1. True\r\n2. False', NULL, '2022-10-14 12:12:29', '2022-10-14 19:12:29'),
(136, 25, 'ICT and IR are electrical inspection tests.\r\n1. True\r\n2. False', NULL, '2022-10-14 12:12:29', '2022-10-14 19:12:29'),
(137, 25, 'AOI and X ray are physical inspection tests.\r\n1. True\r\n2. False', NULL, '2022-10-14 12:12:29', '2022-10-14 19:12:29'),
(138, 25, 'Major advantages of AOI.\r\n1. Almost zero investment since AOI is common configuration in SMT line\r\n\r\n2. Real time data collection\r\n3. Better accuracy and flexible\r\n4. Simple architecture means more reliable &amp; robust\r\n5. All above', NULL, '2022-10-14 12:12:29', '2022-10-14 19:12:29'),
(139, 25, 'Long form of AOI', NULL, '2022-10-14 12:12:29', '2022-10-14 19:12:29'),
(140, 25, 'Write any 5 defect that AOI detects.\r\n1. Solder bridge\r\n2. Component polarity\r\n3. Missing components\r\n4. Component misalignment\r\n5. Spacing violation\r\n6. Component body marking\r\n7. Violation of electrical clearance\r\n8. Wrong component', NULL, '2022-10-14 12:12:29', '2022-10-14 19:12:29'),
(141, 25, 'Write any 2 defects that ICT detects.\r\n1. In correct components\r\n2. Wrong value\r\n3. Short Circuit\r\n4. Open circuit', NULL, '2022-10-14 12:12:29', '2022-10-14 19:12:29'),
(142, 25, 'Elements of ICT.\r\n1. In circuit tester\r\n2. Fixture\r\n3. Software\r\n4. All above', NULL, '2022-10-14 12:12:29', '2022-10-14 19:12:29'),
(143, 25, 'In circuit test advantages.\r\n1. Easy detection manufacturing defects\r\n2. Program generation is easy\r\n3. Test result easy to interpret', NULL, '2022-10-14 12:12:29', '2022-10-14 19:12:29'),
(144, 26, 'Robotic soldering solutions help enterprises with huge workload complete their projects on time every time.\r\n1. True\r\n2. False', NULL, '2022-10-14 12:56:30', '2022-10-14 19:56:30'),
(145, 26, 'A Soldering Robot can be described as a fully automated system that is designed toperform a defined task, assigned by a custom program, precisely and on a repeated basis.\r\n1. True\r\n2. False', NULL, '2022-10-14 12:56:31', '2022-10-14 19:56:31'),
(146, 26, 'They save time, energy and boost the overall efficiency in a precise way.\r\n1. True\r\n2. False', NULL, '2022-10-14 12:56:31', '2022-10-14 19:56:31'),
(147, 26, 'Types of soldering robot.\r\n1. Cartesian\r\n2. SCARA\r\n3. Six-axis\r\n4. All above', NULL, '2022-10-14 12:56:31', '2022-10-14 19:56:31'),
(148, 26, 'Advantages of robotic soldering.\r\n1. Higher level of precision\r\n2. Increased throughput\r\n3. More consistent production\r\n4. All above', NULL, '2022-10-14 12:56:31', '2022-10-14 19:56:31'),
(149, 26, 'Applications where robotic soldering can be found include.\r\n1. Circuit boards\r\n2. Wires\r\n3. Flex circuits\r\n4. All above', NULL, '2022-10-14 12:56:31', '2022-10-14 19:56:31'),
(150, 26, 'What is the target condition of PTH soldering.', NULL, '2022-10-14 12:56:31', '2022-10-14 19:56:31'),
(151, 26, 'Preventive maintenance is required for robotic soldering machine.\r\n1. True\r\n2. False', NULL, '2022-10-14 12:56:31', '2022-10-14 19:56:31'),
(152, 26, 'What are the 3 types of components soldered using robotic soldering.', NULL, '2022-10-14 12:56:31', '2022-10-14 19:56:31'),
(153, 26, 'You shall be aware of following while choosing solder wire.\r\n1. Lead content\r\n2. Flux content\r\n3. Wire size\r\n4. All above', NULL, '2022-10-14 12:56:31', '2022-10-14 19:56:31'),
(154, 26, 'Write any 4 solder defects.', NULL, '2022-10-14 12:56:31', '2022-10-14 19:56:31'),
(155, 26, 'Write brief note on temperature settings for lead and lead free.', NULL, '2022-10-14 12:56:31', '2022-10-14 19:56:31'),
(156, 28, 'Components of wire harness.\r\n1. Wire\r\n2. Terminals\r\n3. Connectors\r\n4. Caps &amp; sleeves\r\n5. Fuse boxes\r\n6. All above', NULL, '2022-10-14 13:30:05', '2022-10-14 20:30:05'),
(157, 28, 'Symbol B stands for.', NULL, '2022-10-14 13:30:05', '2022-10-14 20:30:05'),
(158, 28, 'Symbol BR stands for.', NULL, '2022-10-14 13:30:05', '2022-10-14 20:30:05'),
(159, 28, 'Caps are used to protect terminal from being damaged.\r\n1. True\r\n2. False', NULL, '2022-10-14 13:30:05', '2022-10-14 20:30:05'),
(160, 28, 'Connectors are used to make connections from one device to another.\r\n1. True\r\n2. False', NULL, '2022-10-14 13:30:05', '2022-10-14 20:30:05'),
(161, 28, 'Cable is made of Conductor , insulator , shield & strength element.\r\n1. True\r\n2. False', NULL, '2022-10-14 13:30:05', '2022-10-14 20:30:05'),
(162, 28, 'Terminal Insulation Type.\r\n1. Partially insulated\r\n2. Fully Insulated\r\n3. Both', NULL, '2022-10-14 13:30:05', '2022-10-14 20:30:05'),
(163, 28, 'Write any 4 types of wire harness.', NULL, '2022-10-14 13:30:05', '2022-10-14 20:30:05'),
(164, 28, 'What is the use of wire harness?', NULL, '2022-10-14 13:30:05', '2022-10-14 20:30:05'),
(165, 28, 'Wire Harnesses Used For ?\r\n1. Automotive\r\n2. Flight simulators\r\n3. Flat panel displays\r\n4. Heavy equipment’s\r\n5. Computers\r\n6. All above', NULL, '2022-10-14 13:30:05', '2022-10-14 20:30:05'),
(166, 28, 'IPC Standard for wire harness.', NULL, '2022-10-14 13:30:05', '2022-10-14 20:30:05'),
(167, 28, 'Write any 2 wire harness defects.', NULL, '2022-10-14 13:30:05', '2022-10-14 20:30:05'),
(168, 16, 'DFM can solve the following issues.\r\n1. Solderability\r\n2. Placement\r\n3. Assembly\r\n4. Excessive product costs\r\n5. All above', NULL, '2022-10-14 13:49:32', '2022-10-14 20:49:32'),
(169, 16, 'Required documents for DFM Analysis.', NULL, '2022-10-14 13:49:32', '2022-10-14 20:49:32'),
(170, 16, 'BOM / AVL should contain at least the following entries.', NULL, '2022-10-14 13:49:32', '2022-10-14 20:49:32'),
(171, 16, 'DFM Analysis covers 2 areas.\r\n1. Fabrication analysis PCB\r\n2. Assembly analysis PCBA\r\n3. Both', NULL, '2022-10-14 13:49:32', '2022-10-14 20:49:32'),
(172, 16, 'Design for Manufacturing is the process of insuring minimum total life cycle cost,maximum quality and shortest design cycle by applying to the design process.\r\n1. True\r\n2. False', NULL, '2022-10-14 13:49:32', '2022-10-14 20:49:32'),
(173, 16, 'Process for Manufacturing is the process for applying manufacturing influence to product design.\r\n1. True\r\n2. False', NULL, '2022-10-14 13:49:32', '2022-10-14 20:49:32'),
(174, 16, 'There should be a set of design rules that are agreed to.\r\n\r\n IPC Specs\r\n Minimum/Maximum limits\r\n Types of components allowed\r\n\r\n1. True\r\n2. False', NULL, '2022-10-14 13:49:32', '2022-10-14 20:49:32'),
(175, 16, 'Pallet design should be such that the bottom of the PWB,is flush to the pallet.\r\n1. True\r\n2. False', NULL, '2022-10-14 13:49:32', '2022-10-14 20:49:32'),
(176, 16, 'The two most important “documents” the electronic assembler should have are.', NULL, '2022-10-14 13:49:32', '2022-10-14 20:49:32'),
(177, 16, 'Ultimate Purpose of DFM is to Prevent Defects.\r\n1. True\r\n2. False', NULL, '2022-10-14 13:49:32', '2022-10-14 20:49:32'),
(178, 16, 'Solder mask purpose.\r\n1- Prevent Solder Bridging\r\n\r\n2- Protect Traces from Mechanical Damage\r\n3- Prevent Flow of Solder Down Conductor Paths\r\n4- All above', NULL, '2022-10-14 13:49:32', '2022-10-14 20:49:32');

-- --------------------------------------------------------

--
-- Table structure for table `donateenquiry`
--

CREATE TABLE `donateenquiry` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `designation` varchar(1000) NOT NULL,
  `comment` mediumtext NOT NULL,
  `amount` varchar(255) NOT NULL,
  `razorpay_payment_id` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donateenquiry`
--

INSERT INTO `donateenquiry` (`id`, `firstname`, `lastname`, `phone`, `email`, `designation`, `comment`, `amount`, `razorpay_payment_id`, `created_at`, `updated_at`) VALUES
(19, 'Sankalp', 'Khot', '1234567890', 'sankalp@ycstech.in', 'test', 'test', '100', 'pay_Kusjc7TGIwBq9q', '2022-12-22 13:28:58', '2022-12-22 20:28:58');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` mediumtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `trainer_id` int(11) NOT NULL,
  `event_type` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `totime` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trainer_feedback` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `trainer_id`, `event_type`, `location`, `title`, `image`, `date`, `time`, `totime`, `description`, `status`, `trainer_feedback`, `created_at`, `updated_at`) VALUES
(7, 43, NULL, NULL, 'Test', '42635.png', '2022-10-19', '10:00', '08:00', '<p>Test</p>', 1, 0, '2022-10-18 12:16:05', '2022-10-18 19:16:05'),
(8, 44, NULL, NULL, 'Test', '', '2022-10-29', '10:00', '10:00', '<h4 style=\"border: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; font-family: &quot;Work Sans&quot;, sans-serif; font-size: 20px; line-height: 1.2em; color: rgb(58, 58, 58);\"><span id=\"4_Prioritize_the_Tests\" style=\"border: 0px; margin: 0px; padding: 0px;\"><span style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(255, 102, 0);\">#4) Prioritize the Tests</span></span></h4><p style=\"border: 0px; margin-right: 0px; margin-bottom: 1.4em; margin-left: 0px; padding: 0px; color: rgb(58, 58, 58); font-family: &quot;Work Sans&quot;, sans-serif; font-size: 15px;\">We often have stringent timelines to finish up testing for an application. Here, we may miss testing some of the important functionalities and aspects of the software. In order to avoid this, tag a priority with each test while documenting it.</p><p style=\"border: 0px; margin-right: 0px; margin-bottom: 1.4em; margin-left: 0px; padding: 0px; color: rgb(58, 58, 58); font-family: &quot;Work Sans&quot;, sans-serif; font-size: 15px;\">You can use any encoding for defining the priority of a test. It is better to use any of the 3 levels,&nbsp;<span style=\"border: 0px; margin: 0px; padding: 0px; font-weight: 700;\">high, medium, and low</span>, or 1, 50, and 100. So, when you have a strict timeline, complete all the high-priority tests first and then move to the medium and low priority tests.</p><p style=\"border: 0px; margin-right: 0px; margin-bottom: 1.4em; margin-left: 0px; padding: 0px; color: rgb(58, 58, 58); font-family: &quot;Work Sans&quot;, sans-serif; font-size: 15px;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-weight: 700;\"><span style=\"border: 0px; margin: 0px; padding: 0px; text-decoration-line: underline;\">For Example,</span></span>&nbsp;for a shopping website, verifying access denial for an invalid attempt to log into the app can be a high priority case, verifying the display of relevant products on the user screen can be a medium priority case, and verifying the color of the text displayed on the screen buttons can be a low priority test.</p><h4 style=\"border: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; font-family: &quot;Work Sans&quot;, sans-serif; font-size: 20px; line-height: 1.2em; color: rgb(58, 58, 58);\"><span id=\"5_Sequence_Matters\" style=\"border: 0px; margin: 0px; padding: 0px;\"><span style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(255, 102, 0);\">#5) Sequence Matters</span></span></h4><p style=\"border: 0px; margin-right: 0px; margin-bottom: 1.4em; margin-left: 0px; padding: 0px; color: rgb(58, 58, 58); font-family: &quot;Work Sans&quot;, sans-serif; font-size: 15px;\">Confirm whether the sequence of steps in the test is absolutely correct. A wrong sequence of steps can lead to confusion.</p><p style=\"border: 0px; margin-right: 0px; margin-bottom: 1.4em; margin-left: 0px; padding: 0px; color: rgb(58, 58, 58); font-family: &quot;Work Sans&quot;, sans-serif; font-size: 15px;\">Preferably, the steps should also define the entire sequence from entering the app until exiting the app for a particular scenario that is being tested.</p><h4 style=\"border: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; font-family: &quot;Work Sans&quot;, sans-serif; font-size: 20px; line-height: 1.2em; color: rgb(58, 58, 58);\"><span id=\"6_Add_Timestamp_and_Tester8217s_Name_to_the_Comments\" style=\"border: 0px; margin: 0px; padding: 0px;\"><span style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(255, 102, 0);\">#6) Add Timestamp and Tester’s Name to the Comments</span></span></h4><p style=\"border: 0px; margin-right: 0px; margin-bottom: 1.4em; margin-left: 0px; padding: 0px; color: rgb(58, 58, 58); font-family: &quot;Work Sans&quot;, sans-serif; font-size: 15px;\">There may be a case where you are testing an application, and someone is making modifications in parallel to the same app, or someone may update the app after your testing is done. This leads to a situation where your test results can vary with time.</p><p style=\"border: 0px; margin-right: 0px; margin-bottom: 1.4em; margin-left: 0px; padding: 0px; color: rgb(58, 58, 58); font-family: &quot;Work Sans&quot;, sans-serif; font-size: 15px;\">So, it is always better to add a timestamp with the tester’s name in the testing comments so that a test result (pass or fail) can be attributed to the state of an application at that particular time. Alternatively, you can have an ‘<span style=\"border: 0px; margin: 0px; padding: 0px; font-weight: 700;\">Executed Date</span>’ column added separately to the test case, and this will explicitly identify the timestamp of the test.</p><h4 style=\"border: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; font-family: &quot;Work Sans&quot;, sans-serif; font-size: 20px; line-height: 1.2em; color: rgb(58, 58, 58);\"><span id=\"7_Include_Browser_Details\" style=\"border: 0px; margin: 0px; padding: 0px;\"><span style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(255, 102, 0);\">#7) Include Browser Details</span></span></h4><p style=\"border: 0px; margin-right: 0px; margin-bottom: 1.4em; margin-left: 0px; padding: 0px; color: rgb(58, 58, 58); font-family: &quot;Work Sans&quot;, sans-serif; font-size: 15px;\">As you know, if it’s a web application, test results can differ based on the browser on which the test is executed.</p><p style=\"border: 0px; margin-right: 0px; margin-bottom: 1.4em; margin-left: 0px; padding: 0px; color: rgb(58, 58, 58); font-family: &quot;Work Sans&quot;, sans-serif; font-size: 15px;\">For the ease of other testers, developers, or whoever is reviewing the test document, should add the browser name and version to the case so that the defect can be replicated easily.</p><h4 style=\"border: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; font-family: &quot;Work Sans&quot;, sans-serif; font-size: 20px; line-height: 1.2em; color: rgb(58, 58, 58);\"><span id=\"8_Keep_two_separate_sheets_8211_Bugs_Summary_in_the_Document\" style=\"border: 0px; margin: 0px; padding: 0px;\"><span style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(255, 102, 0);\">#8) Keep two separate sheets – ‘Bugs’ &amp; ‘Summary’ in the Document</span></span></h4><p style=\"border: 0px; margin-right: 0px; margin-bottom: 1.4em; margin-left: 0px; padding: 0px; color: rgb(58, 58, 58); font-family: &quot;Work Sans&quot;, sans-serif; font-size: 15px;\">If you are documenting in excel, then the first two sheets of the workbook should be Summary and Bugs. The Summary sheet should summarize the test scenario and the Bugs sheet should list all the issues encountered during testing.</p><p style=\"border: 0px; margin-right: 0px; margin-bottom: 1.4em; margin-left: 0px; padding: 0px; color: rgb(58, 58, 58); font-family: &quot;Work Sans&quot;, sans-serif; font-size: 15px;\">The significance of adding these two sheets is that it will give a clear understanding of the testing to the reader/user of the document. So, when time is restricted, these two sheets can prove very useful in providing an overview of testing.</p><p style=\"border: 0px; margin-right: 0px; margin-bottom: 1.4em; margin-left: 0px; padding: 0px; color: rgb(58, 58, 58); font-family: &quot;Work Sans&quot;, sans-serif; font-size: 15px;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-weight: 700;\"><em style=\"border: 0px; margin: 0px; padding: 0px;\">The test document should provide the best possible test coverage, excellent readability and should follow one standard format throughout.</em></span></p><p style=\"border: 0px; margin-right: 0px; margin-bottom: 1.4em; margin-left: 0px; padding: 0px; color: rgb(58, 58, 58); font-family: &quot;Work Sans&quot;, sans-serif; font-size: 15px;\">We can achieve excellence in test documentation by just keeping few essential tips in mind as the organization of test case documents, prioritizing the TCs, having everything in proper sequence, including all mandatory details to execute a TC, and providing clear &amp; lucid test steps, etc. as discussed above.</p><hr style=\"background-color: rgba(0, 0, 0, 0.1); border-top: 0px; height: 1px; margin-bottom: 40px; margin-top: 40px; color: rgb(58, 58, 58); font-family: &quot;Work Sans&quot;, sans-serif; font-size: 15px;\"><h2 style=\"border: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; font-family: &quot;Work Sans&quot;, sans-serif; font-size: 26px; font-weight: 600; line-height: 1.3em; text-transform: capitalize; color: rgb(58, 58, 58);\"><span id=\"How_NOT_to_Write_Tests\" style=\"border: 0px; margin: 0px; padding: 0px;\">How NOT To Write Tests</span></h2><p style=\"border: 0px; margin-right: 0px; margin-bottom: 1.4em; margin-left: 0px; padding: 0px; color: rgb(58, 58, 58); font-family: &quot;Work Sans&quot;, sans-serif; font-size: 15px;\">We spend most of our time writing, reviewing, executing, or maintaining these. It is quite unfortunate that tests are also the most error-prone ones. The differences in understanding, organization testing practices, lack of time, etc. are some of the reasons why we often see tests that leave a lot to be desired.</p><p style=\"border: 0px; margin-right: 0px; margin-bottom: 1.4em; margin-left: 0px; padding: 0px; color: rgb(58, 58, 58); font-family: &quot;Work Sans&quot;, sans-serif; font-size: 15px;\">There are a lot of tutorials on our site on this topic, but here will see&nbsp;<em style=\"border: 0px; margin: 0px; padding: 0px;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-weight: 700;\">How NOT to write test cases – a few tips that will help to create distinctive, quality, and effective tests.</span></em></p><p style=\"border: 0px; margin-right: 0px; margin-bottom: 1.4em; margin-left: 0px; padding: 0px; color: rgb(58, 58, 58); font-family: &quot;Work Sans&quot;, sans-serif; font-size: 15px;\">Let’s read on and please note that these tips are for both new and experienced testers.</p>', 1, 0, '2022-10-27 14:17:05', '2022-10-27 21:17:22');

-- --------------------------------------------------------

--
-- Table structure for table `exam_ans`
--

CREATE TABLE `exam_ans` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_id` text,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam_ans`
--

INSERT INTO `exam_ans` (`id`, `question`, `answer`, `course_id`, `user_id`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 'Different types of communications? Explain.', '11', 2, 64, 'aI7O7TVPrLYCub3086ulAoedq0bA486IS6Z8L3vx', '2022-09-29 15:46:00', '2022-12-08 12:18:18'),
(2, 'How can a Pseudo Random Noise Code be usable?', '22', 2, 40, 'aI7O7TVPrLYCub3086ulAoedq0bA486IS6Z8L3vx', '2022-09-29 15:46:00', '2022-09-29 10:20:34'),
(3, 'What is an Integrated Circuit?', '33', 2, 40, 'aI7O7TVPrLYCub3086ulAoedq0bA486IS6Z8L3vx', '2022-09-29 15:46:00', '2022-09-29 10:20:37'),
(4, '22', 'test 1', 3, 40, 'QEIVIKiZRMnDXkgzHAlMrAOqt4xqgLgZonS0P8J5', '2022-09-29 15:50:08', '2022-09-29 10:20:08'),
(5, '11', 'test 2', 3, 40, 'QEIVIKiZRMnDXkgzHAlMrAOqt4xqgLgZonS0P8J5', '2022-09-29 15:50:08', '2022-09-29 10:20:42'),
(6, 'Different types of communications? Explain.', 'wew', 2, 40, 'bLBZzY4CHbpFzpV3dfp796HXZfbHj5AqBSQKNpSR', '2022-09-29 15:51:19', '2022-09-29 10:21:19'),
(7, 'How can a Pseudo Random Noise Code be usable?', 'fdfsf', 2, 40, 'bLBZzY4CHbpFzpV3dfp796HXZfbHj5AqBSQKNpSR', '2022-09-29 15:51:19', '2022-09-29 10:21:19'),
(8, 'What is an Integrated Circuit?', 'sdfsdf', 2, 40, 'bLBZzY4CHbpFzpV3dfp796HXZfbHj5AqBSQKNpSR', '2022-09-29 15:51:19', '2022-09-29 10:21:19'),
(9, 'What is an Integrated Circuit?', '33', 2, 54, 'Snz23FYz4IpOT6x9vXsdIDpUD1SgfZ', '2022-09-30 12:21:42', '2022-09-30 06:51:42'),
(10, 'How can a Pseudo Random Noise Code be usable?', '22', 2, 54, 'Snz23FYz4IpOT6x9vXsdIDpUD1SgfZ', '2022-09-30 12:21:42', '2022-09-30 06:51:42'),
(11, 'Different types of communications? Explain.', '11', 2, 54, 'Snz23FYz4IpOT6x9vXsdIDpUD1SgfZ', '2022-09-30 12:21:42', '2022-09-30 06:51:42'),
(12, '22', '22', 3, 55, 'yYUg5GMSnFyDgC3nff2NVRxsgZBUJf', '2022-10-03 15:05:04', '2022-10-03 09:35:04'),
(13, '11', '11', 3, 55, 'yYUg5GMSnFyDgC3nff2NVRxsgZBUJf', '2022-10-03 15:05:04', '2022-10-03 09:35:04'),
(14, '11', '11', 3, 55, 'xPPpzWRjrtJIXRj3WlGnjp88t51mKL', '2022-10-03 15:06:54', '2022-10-03 09:36:54'),
(15, '22', '22', 3, 55, 'xPPpzWRjrtJIXRj3WlGnjp88t51mKL', '2022-10-03 15:06:54', '2022-10-03 09:36:54'),
(16, 'What is an Integrated Circuit?', '1', 2, 55, 'n2myUwoXcfHl0g0POYUHGektkzJ9xC', '2022-10-03 16:29:28', '2022-10-03 10:59:28'),
(17, 'Different types of communications? Explain.', '1', 2, 55, 'n2myUwoXcfHl0g0POYUHGektkzJ9xC', '2022-10-03 16:29:28', '2022-10-03 10:59:28'),
(18, 'How can a Pseudo Random Noise Code be usable?', '1', 2, 55, 'n2myUwoXcfHl0g0POYUHGektkzJ9xC', '2022-10-03 16:29:28', '2022-10-03 10:59:28'),
(19, 'What is an Integrated Circuit?', 'Test jdvkjfkfgbjgbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb', 2, 48, '0mJpj4nBFXAP3HrOkgKZaFXSGvJ0En', '2022-10-12 09:39:01', '2022-10-12 16:39:01'),
(20, 'Different types of communications? Explain.', 'test', 2, 48, '0mJpj4nBFXAP3HrOkgKZaFXSGvJ0En', '2022-10-12 09:39:01', '2022-10-12 16:39:01'),
(21, 'Write any 5 SMT defects', '1', 13, 55, 'vSMY64heVRecd23KnZ9EZFaAMWf58Z', '2022-10-14 10:54:35', '2022-10-14 17:54:35'),
(22, 'Electrical clearance means\r\n1. Difference between 2 conductors\r\n2. Distance between 2 conductors\r\n3. Electrical component\r\n4. Electrical characteristic of conductor', '1', 13, 55, 'vSMY64heVRecd23KnZ9EZFaAMWf58Z', '2022-10-14 10:54:35', '2022-10-14 17:54:35'),
(23, 'Electronic Products are classified as \r\n1. Class A , Class B , Class C\r\n2. Class 1 , Class 2 , Class 3\r\n3. Class A1 , Class A2 , Class A3', '1', 13, 55, 'vSMY64heVRecd23KnZ9EZFaAMWf58Z', '2022-10-14 10:54:35', '2022-10-14 17:54:35'),
(24, 'Write brief note on TARGET condition of all class 1 , class 2 and class 3 lead free product', '1', 13, 55, 'vSMY64heVRecd23KnZ9EZFaAMWf58Z', '2022-10-14 10:54:35', '2022-10-14 17:54:35'),
(25, 'Write 3 levels of conformance', '1', 13, 55, 'vSMY64heVRecd23KnZ9EZFaAMWf58Z', '2022-10-14 10:54:35', '2022-10-14 17:54:35'),
(26, 'Write brief note about VI zone', '1', 13, 55, 'vSMY64heVRecd23KnZ9EZFaAMWf58Z', '2022-10-14 10:54:35', '2022-10-14 17:54:35'),
(27, 'Write any 5 electronic components and legend markings', '1', 13, 55, 'vSMY64heVRecd23KnZ9EZFaAMWf58Z', '2022-10-14 10:54:35', '2022-10-14 17:54:35'),
(28, 'Write any 2 reasons of cold solder', '1', 13, 55, 'vSMY64heVRecd23KnZ9EZFaAMWf58Z', '2022-10-14 10:54:35', '2022-10-14 17:54:35'),
(29, 'Points to fulfil / take care in rework process', '1', 13, 55, 'vSMY64heVRecd23KnZ9EZFaAMWf58Z', '2022-10-14 10:54:35', '2022-10-14 17:54:35'),
(30, 'Write brief note on PCB Handling and storage', '1', 13, 55, 'vSMY64heVRecd23KnZ9EZFaAMWf58Z', '2022-10-14 10:54:35', '2022-10-14 17:54:35'),
(31, 'IPC7711 is\r\n1. Rework process standard\r\n2. Quality Management System Standard\r\n3. UL certificate\r\n4. Repair of IC’s', '1', 13, 55, 'vSMY64heVRecd23KnZ9EZFaAMWf58Z', '2022-10-14 10:54:35', '2022-10-14 17:54:35'),
(32, 'Solder which is used for joining metal pieces is the alloy of\r\n1. Tin & Lead\r\n2. Zink and Lead\r\n3. Zink and tin\r\n4. None', '1', 13, 55, 'vSMY64heVRecd23KnZ9EZFaAMWf58Z', '2022-10-14 10:54:35', '2022-10-14 17:54:35'),
(33, 'Write any 2 differences between leaded and lead free solder', '1', 13, 55, 'vSMY64heVRecd23KnZ9EZFaAMWf58Z', '2022-10-14 10:54:35', '2022-10-14 17:54:35'),
(34, 'Soldering is done to improve.\r\n1. Conductivity\r\n2. Mechanical Strength\r\n3. Mechanical Power\r\n4. Ductility', '1', 13, 55, 'vSMY64heVRecd23KnZ9EZFaAMWf58Z', '2022-10-14 10:54:35', '2022-10-14 17:54:35'),
(35, 'Write 3 skill levels in rework', '1', 13, 55, 'vSMY64heVRecd23KnZ9EZFaAMWf58Z', '2022-10-14 10:54:35', '2022-10-14 17:54:35'),
(36, 'Write brief note on soldering method', '1', 13, 55, 'vSMY64heVRecd23KnZ9EZFaAMWf58Z', '2022-10-14 10:54:35', '2022-10-14 17:54:35'),
(37, 'Write any 5 tools / material required for soldering , write the temperature requirements of tin lead and lead free soldering', '1', 13, 55, 'vSMY64heVRecd23KnZ9EZFaAMWf58Z', '2022-10-14 10:54:35', '2022-10-14 17:54:35'),
(38, 'DFM can solve the following issues.\r\n1. Solderability\r\n2. Placement\r\n3. Assembly\r\n4. Excessive product costs\r\n5. All above', '5', 16, 48, 'm6rxmAXwk2A85MbfrfM7SmtIU0KPfL', '2022-10-14 14:12:57', '2022-10-14 21:12:57'),
(39, 'There should be a set of design rules that are agreed to.\r\n\r\n IPC Specs\r\n Minimum/Maximum limits\r\n Types of components allowed\r\n\r\n1. True\r\n2. False', 'true', 16, 48, 'm6rxmAXwk2A85MbfrfM7SmtIU0KPfL', '2022-10-14 14:12:57', '2022-10-14 21:12:57'),
(40, 'Design for Manufacturing is the process of insuring minimum total life cycle cost,maximum quality and shortest design cycle by applying to the design process.\r\n1. True\r\n2. False', 'true', 16, 48, 'm6rxmAXwk2A85MbfrfM7SmtIU0KPfL', '2022-10-14 14:12:57', '2022-10-14 21:12:57'),
(41, 'DFM Analysis covers 2 areas.\r\n1. Fabrication analysis PCB\r\n2. Assembly analysis PCBA\r\n3. Both', '1', 16, 48, 'm6rxmAXwk2A85MbfrfM7SmtIU0KPfL', '2022-10-14 14:12:57', '2022-10-14 21:12:57'),
(42, 'Process for Manufacturing is the process for applying manufacturing influence to product design.\r\n1. True\r\n2. False', '2', 16, 48, 'm6rxmAXwk2A85MbfrfM7SmtIU0KPfL', '2022-10-14 14:12:57', '2022-10-14 21:12:57'),
(43, 'Pallet design should be such that the bottom of the PWB,is flush to the pallet.\r\n1. True\r\n2. False', '1', 16, 48, 'm6rxmAXwk2A85MbfrfM7SmtIU0KPfL', '2022-10-14 14:12:57', '2022-10-14 21:12:57'),
(44, 'Required documents for DFM Analysis.', '1', 16, 48, 'm6rxmAXwk2A85MbfrfM7SmtIU0KPfL', '2022-10-14 14:12:57', '2022-10-14 21:12:57'),
(45, 'Ultimate Purpose of DFM is to Prevent Defects.\r\n1. True\r\n2. False', '1', 16, 48, 'm6rxmAXwk2A85MbfrfM7SmtIU0KPfL', '2022-10-14 14:12:57', '2022-10-14 21:12:57'),
(46, 'Solder mask purpose.\r\n1- Prevent Solder Bridging\r\n\r\n2- Protect Traces from Mechanical Damage\r\n3- Prevent Flow of Solder Down Conductor Paths\r\n4- All above', '4', 16, 48, 'm6rxmAXwk2A85MbfrfM7SmtIU0KPfL', '2022-10-14 14:12:57', '2022-10-14 21:12:57'),
(47, 'Electrical clearance means\r\n1. Difference between 2 conductors\r\n2. Distance between 2 conductors\r\n3. Electrical component\r\n4. Electrical characteristic of conductor', '1', 13, 56, 'rfWXcQfNPtuOAqP9Ag9mWItsJFGh55', '2022-10-14 14:55:48', '2022-10-14 21:55:48'),
(48, 'Write any 5 electronic components and legend markings', '1', 13, 56, 'rfWXcQfNPtuOAqP9Ag9mWItsJFGh55', '2022-10-14 14:55:48', '2022-10-14 21:55:48'),
(49, 'Write brief note about VI zone', '1', 13, 56, 'rfWXcQfNPtuOAqP9Ag9mWItsJFGh55', '2022-10-14 14:55:48', '2022-10-14 21:55:48'),
(50, 'Write any 5 SMT defects', '1', 13, 56, 'rfWXcQfNPtuOAqP9Ag9mWItsJFGh55', '2022-10-14 14:55:48', '2022-10-14 21:55:48'),
(51, 'Write 3 levels of conformance', '1', 13, 56, 'rfWXcQfNPtuOAqP9Ag9mWItsJFGh55', '2022-10-14 14:55:48', '2022-10-14 21:55:48'),
(52, 'Write 3 skill levels in rework', '1', 13, 56, 'rfWXcQfNPtuOAqP9Ag9mWItsJFGh55', '2022-10-14 14:55:48', '2022-10-14 21:55:48'),
(53, 'Write any 2 reasons of cold solder', '1', 13, 56, 'rfWXcQfNPtuOAqP9Ag9mWItsJFGh55', '2022-10-14 14:55:48', '2022-10-14 21:55:48'),
(54, 'Write brief note on PCB Handling and storage', '1', 13, 56, 'rfWXcQfNPtuOAqP9Ag9mWItsJFGh55', '2022-10-14 14:55:48', '2022-10-14 21:55:48'),
(55, 'Soldering is done to improve.\r\n1. Conductivity\r\n2. Mechanical Strength\r\n3. Mechanical Power\r\n4. Ductility', '1', 13, 56, 'rfWXcQfNPtuOAqP9Ag9mWItsJFGh55', '2022-10-14 14:55:48', '2022-10-14 21:55:48'),
(56, 'IPC7711 is\r\n1. Rework process standard\r\n2. Quality Management System Standard\r\n3. UL certificate\r\n4. Repair of IC’s', '1', 13, 56, 'rfWXcQfNPtuOAqP9Ag9mWItsJFGh55', '2022-10-14 14:55:48', '2022-10-14 21:55:48'),
(57, 'Write brief note on TARGET condition of all class 1 , class 2 and class 3 lead free product', '1', 13, 56, 'rfWXcQfNPtuOAqP9Ag9mWItsJFGh55', '2022-10-14 14:55:48', '2022-10-14 21:55:48'),
(58, 'Solder which is used for joining metal pieces is the alloy of\r\n1. Tin & Lead\r\n2. Zink and Lead\r\n3. Zink and tin\r\n4. None', '1', 13, 56, 'rfWXcQfNPtuOAqP9Ag9mWItsJFGh55', '2022-10-14 14:55:48', '2022-10-14 21:55:48'),
(59, 'Write brief note on soldering method', '1', 13, 56, 'rfWXcQfNPtuOAqP9Ag9mWItsJFGh55', '2022-10-14 14:55:48', '2022-10-14 21:55:48'),
(60, 'Electronic Products are classified as \r\n1. Class A , Class B , Class C\r\n2. Class 1 , Class 2 , Class 3\r\n3. Class A1 , Class A2 , Class A3', '1', 13, 56, 'rfWXcQfNPtuOAqP9Ag9mWItsJFGh55', '2022-10-14 14:55:48', '2022-10-14 21:55:48'),
(61, 'Points to fulfil / take care in rework process', '1', 13, 56, 'rfWXcQfNPtuOAqP9Ag9mWItsJFGh55', '2022-10-14 14:55:48', '2022-10-14 21:55:48'),
(62, 'Write any 5 tools / material required for soldering , write the temperature requirements of tin lead and lead free soldering', '1', 13, 56, 'rfWXcQfNPtuOAqP9Ag9mWItsJFGh55', '2022-10-14 14:55:48', '2022-10-14 21:55:48'),
(63, 'The two most important “documents” the electronic assembler should have are.', 'test', 16, 57, 'UKDl8zJDJa6uJcOdTI0cnzYp6coTlm', '2022-10-14 15:00:44', '2022-10-14 22:00:44'),
(64, 'Solder mask purpose.\r\n1- Prevent Solder Bridging\r\n\r\n2- Protect Traces from Mechanical Damage\r\n3- Prevent Flow of Solder Down Conductor Paths\r\n4- All above', '4', 16, 57, 'UKDl8zJDJa6uJcOdTI0cnzYp6coTlm', '2022-10-14 15:00:44', '2022-10-14 22:00:44'),
(65, 'There should be a set of design rules that are agreed to.\r\n\r\n IPC Specs\r\n Minimum/Maximum limits\r\n Types of components allowed\r\n\r\n1. True\r\n2. False', '1', 16, 57, 'UKDl8zJDJa6uJcOdTI0cnzYp6coTlm', '2022-10-14 15:00:44', '2022-10-14 22:00:44'),
(66, 'DFM can solve the following issues.\r\n1. Solderability\r\n2. Placement\r\n3. Assembly\r\n4. Excessive product costs\r\n5. All above', '5', 16, 57, 'UKDl8zJDJa6uJcOdTI0cnzYp6coTlm', '2022-10-14 15:00:44', '2022-10-14 22:00:44'),
(67, 'Process for Manufacturing is the process for applying manufacturing influence to product design.\r\n1. True\r\n2. False', '1', 16, 57, 'UKDl8zJDJa6uJcOdTI0cnzYp6coTlm', '2022-10-14 15:00:44', '2022-10-14 22:00:44'),
(68, 'Design for Manufacturing is the process of insuring minimum total life cycle cost,maximum quality and shortest design cycle by applying to the design process.\r\n1. True\r\n2. False', 't', 16, 57, 'UKDl8zJDJa6uJcOdTI0cnzYp6coTlm', '2022-10-14 15:00:44', '2022-10-14 22:00:44'),
(69, 'DFM Analysis covers 2 areas.\r\n1. Fabrication analysis PCB\r\n2. Assembly analysis PCBA\r\n3. Both', '3', 16, 57, 'UKDl8zJDJa6uJcOdTI0cnzYp6coTlm', '2022-10-14 15:00:44', '2022-10-14 22:00:44'),
(70, 'Ultimate Purpose of DFM is to Prevent Defects.\r\n1. True\r\n2. False', 't', 16, 57, 'UKDl8zJDJa6uJcOdTI0cnzYp6coTlm', '2022-10-14 15:00:44', '2022-10-14 22:00:44'),
(71, 'Required documents for DFM Analysis.', 'test', 16, 57, 'UKDl8zJDJa6uJcOdTI0cnzYp6coTlm', '2022-10-14 15:00:44', '2022-10-14 22:00:44'),
(72, 'Pallet design should be such that the bottom of the PWB,is flush to the pallet.\r\n1. True\r\n2. False', '1', 16, 57, 'UKDl8zJDJa6uJcOdTI0cnzYp6coTlm', '2022-10-14 15:00:44', '2022-10-14 22:00:44'),
(73, 'BOM / AVL should contain at least the following entries.', 'test', 16, 57, 'UKDl8zJDJa6uJcOdTI0cnzYp6coTlm', '2022-10-14 15:00:44', '2022-10-14 22:00:44'),
(74, 'Write any 5 electronic components and legend markings', 'qqqq', 13, 56, 'xsGghrkrpMnYWr7wIrxpR8eITGqGUW', '2022-10-14 19:07:05', '2022-10-15 02:07:05'),
(75, 'Solder which is used for joining metal pieces is the alloy of\r\n1. Tin & Lead\r\n2. Zink and Lead\r\n3. Zink and tin\r\n4. None', 'asss', 13, 56, 'A5GtIyIH6bgLbhsg8P2HhVPllVXQv4', '2022-10-14 19:07:49', '2022-10-15 02:07:49'),
(76, 'There should be a set of design rules that are agreed to.\r\n\r\n IPC Specs\r\n Minimum/Maximum limits\r\n Types of components allowed\r\n\r\n1. True\r\n2. False', '1', 16, 57, 'Mcdxrq54ufiYH3YtGHkfe5hLR6SvFz', '2022-10-28 19:17:34', '2022-10-29 02:17:34'),
(77, 'BOM / AVL should contain at least the following entries.', 'test', 16, 57, 'Mcdxrq54ufiYH3YtGHkfe5hLR6SvFz', '2022-10-28 19:17:34', '2022-10-29 02:17:34'),
(78, 'Required documents for DFM Analysis.', 'test', 16, 57, 'Mcdxrq54ufiYH3YtGHkfe5hLR6SvFz', '2022-10-28 19:17:34', '2022-10-29 02:17:34'),
(79, 'Solder mask purpose.\r\n1- Prevent Solder Bridging\r\n\r\n2- Protect Traces from Mechanical Damage\r\n3- Prevent Flow of Solder Down Conductor Paths\r\n4- All above', '4', 16, 57, 'Mcdxrq54ufiYH3YtGHkfe5hLR6SvFz', '2022-10-28 19:17:34', '2022-10-29 02:17:34'),
(80, 'The two most important “documents” the electronic assembler should have are.', 'test', 16, 57, 'Mcdxrq54ufiYH3YtGHkfe5hLR6SvFz', '2022-10-28 19:17:34', '2022-10-29 02:17:34'),
(81, 'DFM can solve the following issues.\r\n1. Solderability\r\n2. Placement\r\n3. Assembly\r\n4. Excessive product costs\r\n5. All above', '5', 16, 57, 'Mcdxrq54ufiYH3YtGHkfe5hLR6SvFz', '2022-10-28 19:17:34', '2022-10-29 02:17:34'),
(82, 'Pallet design should be such that the bottom of the PWB,is flush to the pallet.\r\n1. True\r\n2. False', '1', 16, 57, 'Mcdxrq54ufiYH3YtGHkfe5hLR6SvFz', '2022-10-28 19:17:34', '2022-10-29 02:17:34'),
(83, 'Process for Manufacturing is the process for applying manufacturing influence to product design.\r\n1. True\r\n2. False', '1', 16, 57, 'Mcdxrq54ufiYH3YtGHkfe5hLR6SvFz', '2022-10-28 19:17:34', '2022-10-29 02:17:34'),
(84, 'Ultimate Purpose of DFM is to Prevent Defects.\r\n1. True\r\n2. False', '1', 16, 57, 'Mcdxrq54ufiYH3YtGHkfe5hLR6SvFz', '2022-10-28 19:17:34', '2022-10-29 02:17:34'),
(85, 'DFM Analysis covers 2 areas.\r\n1. Fabrication analysis PCB\r\n2. Assembly analysis PCBA\r\n3. Both', '1', 16, 57, 'Mcdxrq54ufiYH3YtGHkfe5hLR6SvFz', '2022-10-28 19:17:34', '2022-10-29 02:17:34'),
(86, 'Electronic Products are classified as', 'Class 1 , Class 2 & Class 3', 14, 67, 'DqIQBnUVAXdKPILBn20vP80EEBrMXD', '2022-12-25 13:04:35', '2022-12-25 20:04:35'),
(87, 'Assembly conditions\r\n1. Target , Acceptable , defect\r\n2. Target , defect , rejection\r\n3. Target , deviation , not acceptable\r\n4. Process indication , deviation , acceptable , reject', '1', 14, 67, 'DqIQBnUVAXdKPILBn20vP80EEBrMXD', '2022-12-25 13:04:35', '2022-12-25 20:04:35'),
(88, 'Write any 2 benefits of using magnifier', 'Reduce stress on eye \r\nDefect identification will be more accurate', 14, 67, 'DqIQBnUVAXdKPILBn20vP80EEBrMXD', '2022-12-25 13:04:35', '2022-12-25 20:04:35'),
(89, 'Write your understanding on CDC Method', 'Check Do Check is the method of defect control . Check the work of previous stage , execute my work and check my own work done', 14, 67, 'DqIQBnUVAXdKPILBn20vP80EEBrMXD', '2022-12-25 13:04:35', '2022-12-25 20:04:35'),
(90, 'Write any 2 do’s and don’ts in inspection stage', 'Dos\' \r\n1. 5S \r\n2. Cleaning of magnifier \r\n3. Follow ESD \r\nDon\'t \r\n1.  Dont keep rejected boards on stage without identification\r\n2. Dont do inspection without magnifier \r\n3. Dont start inspection without correct tools', 14, 67, 'DqIQBnUVAXdKPILBn20vP80EEBrMXD', '2022-12-25 13:04:35', '2022-12-25 20:04:35'),
(91, 'Write brief note about VI zone', '1. VI to be done left to right and top to bottom \r\n2. VI to be done using correct tools \r\n3. Lux shall be 1000 lux \r\n4. Inform supervisor as and when defect get detected', 14, 67, 'DqIQBnUVAXdKPILBn20vP80EEBrMXD', '2022-12-25 13:04:35', '2022-12-25 20:04:35'),
(92, 'Write any 5 SMT defects', 'Bridging \r\nOpen solder \r\ntombstone \r\ndewetting \r\nbillboarding \r\nwrong components', 14, 67, 'DqIQBnUVAXdKPILBn20vP80EEBrMXD', '2022-12-25 13:04:35', '2022-12-25 20:04:35'),
(93, 'Write any 10 defects in electronic assembly', 'Bridging \r\nOpen solder \r\ntombstone \r\ndewetting \r\nbillboarding \r\nwrong components \r\nComponent shift \r\nComponent damage \r\nsolder balls \r\nsolder splashes \r\nElectrical clearance violation \r\nCold solder', 14, 67, 'DqIQBnUVAXdKPILBn20vP80EEBrMXD', '2022-12-25 13:04:35', '2022-12-25 20:04:35'),
(94, 'Write your understanding on visual inspection', 'Inspection is nothing but to check the correctness of work done by previous stage . In case of defect then inform same to seniors so that necessary actions can be taken . Machines don\'t give 100% accuracy but at the same time customer want 100 % quality . In this case inspection and rectifications are 2 important stages . Inspector shall be aware on IPCA 610A H', 14, 67, 'DqIQBnUVAXdKPILBn20vP80EEBrMXD', '2022-12-25 13:04:35', '2022-12-25 20:04:35'),
(95, 'Write 5S', '5S is a methodology to expose the abnormalities in the workplace . Sorting , systemisation , cleaning , standardisation and self disciplines . For inspection stage below 5S will be done \r\n1. Sort : Non required things such as rejected boards , rework tools etc to be removed \r\n2. Systemisation : Identification for magnifier , inspection templates etc \r\n3. Clean : Clean surface .No dust \r\n4. Standardise : Follow given work instructions \r\n5. Self discipline : do 5S daily practice', 14, 67, 'DqIQBnUVAXdKPILBn20vP80EEBrMXD', '2022-12-25 13:04:35', '2022-12-25 20:04:35'),
(96, 'Write any 2 defects related to hardware', 'Heat sink contact \r\nscrew loose \r\nhardware electrical clearance', 14, 67, 'DqIQBnUVAXdKPILBn20vP80EEBrMXD', '2022-12-25 13:04:35', '2022-12-25 20:04:35'),
(97, 'What shall be the lux requirement in inspection stage\r\n1. 1000 lm/m2\r\n2. 1000 cm / s2\r\n3. 1000 mtr\r\n4. 1000 Kg', '1', 14, 67, 'DqIQBnUVAXdKPILBn20vP80EEBrMXD', '2022-12-25 13:04:35', '2022-12-25 20:04:35'),
(98, 'Write any 2 defects related to lamination', 'blistering \r\ndelamination', 14, 67, 'DqIQBnUVAXdKPILBn20vP80EEBrMXD', '2022-12-25 13:04:35', '2022-12-25 20:04:35'),
(99, 'What is IPCA 610 F', 'Electronic product acceptance criteria', 14, 67, 'DqIQBnUVAXdKPILBn20vP80EEBrMXD', '2022-12-25 13:04:35', '2022-12-25 20:04:35'),
(100, 'What is the long form of ESD\r\n1. Electrostatic Discharge\r\n2. Electrostatic charge\r\n3. Electron Surface Devices\r\n4. Electro static Device', '1', 14, 67, 'DqIQBnUVAXdKPILBn20vP80EEBrMXD', '2022-12-25 13:04:35', '2022-12-25 20:04:35');

-- --------------------------------------------------------

--
-- Table structure for table `exam_papers`
--

CREATE TABLE `exam_papers` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `time` time NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_papers_grades`
--

CREATE TABLE `exam_papers_grades` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `grades` varchar(255) NOT NULL,
  `out_of` varchar(255) DEFAULT NULL,
  `remarks` text,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam_papers_grades`
--

INSERT INTO `exam_papers_grades` (`id`, `course_id`, `user_id`, `session_id`, `grades`, `out_of`, `remarks`, `created_at`, `updated_at`) VALUES
(3, 2, 40, 'bLBZzY4CHbpFzpV3dfp796HXZfbHj5AqBSQKNpSR', '42', '80', 'good', '2022-09-30 16:41:13', '2022-09-30 11:18:23'),
(5, 2, 55, 'n2myUwoXcfHl0g0POYUHGektkzJ9xC', '50', '80', 'good', '2022-10-11 15:50:50', '2022-10-11 22:59:39'),
(6, 2, 48, '0mJpj4nBFXAP3HrOkgKZaFXSGvJ0En', '1', '40', '25', '2022-10-14 13:00:50', '2022-10-14 20:00:50'),
(7, 16, 48, 'm6rxmAXwk2A85MbfrfM7SmtIU0KPfL', '35', '40', '30', '2022-10-14 14:13:31', '2022-10-14 21:14:12'),
(8, 13, 56, 'rfWXcQfNPtuOAqP9Ag9mWItsJFGh55', '25', '40', 'A', '2022-10-14 14:56:18', '2022-10-14 21:56:18'),
(9, 16, 57, 'UKDl8zJDJa6uJcOdTI0cnzYp6coTlm', '32', '40', '40', '2022-10-14 15:01:15', '2022-10-14 22:01:15'),
(10, 2, 64, 'aI7O7TVPrLYCub3086ulAoedq0bA486IS6Z8L3vx', '40', '40', 'A', '2022-12-08 17:48:35', '2022-12-09 00:48:35'),
(11, 14, 67, 'DqIQBnUVAXdKPILBn20vP80EEBrMXD', '40', '40', 'A', '2022-12-26 10:07:36', '2022-12-26 17:07:36');

-- --------------------------------------------------------

--
-- Table structure for table `freecourse`
--

CREATE TABLE `freecourse` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `time` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `links` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `freecourse`
--

INSERT INTO `freecourse` (`id`, `title`, `description`, `time`, `date`, `links`, `status`, `created_at`, `updated_at`) VALUES
(5, 'test', '<p>testing&nbsp;</p>', '20:00', '2022-11-04', 'https://zillionlink.in/', 1, '2022-10-31 12:56:12', '2023-02-24 00:09:27');

-- --------------------------------------------------------

--
-- Table structure for table `ideaenquiry`
--

CREATE TABLE `ideaenquiry` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `place` varchar(255) NOT NULL,
  `companyname` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `idea` varchar(255) NOT NULL,
  `current` varchar(255) NOT NULL,
  `future` varchar(255) NOT NULL,
  `benefited` varchar(255) NOT NULL,
  `pdf` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ideaenquiry`
--

INSERT INTO `ideaenquiry` (`id`, `category`, `name`, `place`, `companyname`, `email`, `phone`, `idea`, `current`, `future`, `benefited`, `pdf`, `created_at`, `updated_at`) VALUES
(81, 'Consumer Electronics', 'Sankalp Khot', 'Pune', 'test', 'sankalp@ycstech.in', '1234567890', 'test', 'test', 'test', 'Impact on society', 'null', '2022-12-22 12:10:13', '2022-12-22 19:10:13'),
(82, 'Medical Electronics', 'Sankalp Khot', 'Pune', 'test', 'sankalp@ycstech.in', '1234567890', 'test', 'test', 'test', 'Skills India', 'null', '2022-12-22 12:19:45', '2022-12-22 19:19:45'),
(83, 'Medical Electronics', 'Sankalp Khot', 'Pune', 'test', 'sankalp@ycstech.in', '1234567890', 'test', 'test', 'test', 'Pollution Control', 'null', '2022-12-22 12:21:24', '2022-12-22 19:21:24'),
(84, 'Medical Electronics', 'Sankalp Khot', 'Pune', 'test', 'sankalp@ycstech.in', '1234567890', 'test', 'test', 'test', 'Swatch Bharat Abhiyan', 'null', '2022-12-22 12:43:18', '2022-12-22 19:43:18');

-- --------------------------------------------------------

--
-- Table structure for table `incubationenquiry`
--

CREATE TABLE `incubationenquiry` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` varchar(20) NOT NULL,
  `character` varchar(20) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `category` varchar(1000) NOT NULL,
  `concern` mediumtext NOT NULL,
  `benefits` varchar(255) NOT NULL,
  `expected` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `innovationenquiry`
--

CREATE TABLE `innovationenquiry` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `character` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `concern` mediumtext NOT NULL,
  `benefits` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kaizen`
--

CREATE TABLE `kaizen` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kaizen`
--

INSERT INTO `kaizen` (`id`, `name`, `date`, `email`, `category`, `created_at`, `updated_at`) VALUES
(2, 'Sankalp Khot', '2022-10-11', 'sankalp@ycstech.in', 'IT / Digital Category', '2022-10-13 11:55:40', '2022-11-23 19:40:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_11_19_112958_users', 2),
(5, '2020_11_19_113540_users', 3),
(6, '2020_11_25_051133_create_news_table', 4),
(7, '2020_11_25_065442_create_subscriptions_table', 5),
(8, '2020_12_03_094355_create_cart_table', 6),
(9, '2020_12_04_103504_create_orders_table', 7),
(10, '2020_12_04_105012_create_orders_product_table', 8),
(11, '2020_12_04_111501_create_orders_notation_table', 9),
(12, '2020_12_05_054216_create_newsletter_table', 10),
(13, '2020_12_05_142539_create_reviews_table', 11),
(14, '2020_12_18_122113_create_wish_list_table', 12),
(15, '2020_12_22_073911_create_subscription_orders_tables', 13),
(16, '2020_12_25_235107_create__print_purchase_orders_table', 14),
(17, '2021_01_04_072803_create_most_views_table', 15),
(18, '2021_01_05_073535_create_contact_enquiry_table', 16),
(19, '2021_01_06_052131_create_terms_conditions_table', 17),
(20, '2021_01_06_054808_create_privacy_policy_table', 17),
(21, '2021_01_06_054920_create_contact_page_table', 17),
(22, '2021_01_14_050246_create_subscribed_notation_view_table', 18),
(23, '2021_01_14_093001_create_subscribed_print_purchase_orders_table', 19),
(24, '2021_01_14_114529_create_search_records_table', 20),
(25, '2021_01_14_121058_create_watermark_table', 21),
(26, '2021_01_30_054924_create_notation_upgrades_table', 22);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `newsviews`
--

CREATE TABLE `newsviews` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `offline`
--

CREATE TABLE `offline` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offline`
--

INSERT INTO `offline` (`id`, `name`, `course`, `grade`, `date`, `number`, `created_at`, `updated_at`) VALUES
(3, 'Sankalp Khot', 'PCBA Visual Inspection Difference IPCA610G & IPCA610H', 'C', '2023-01-30', 'ZL / 2022 / 025', '2023-01-19 18:23:10', '2023-01-19 12:53:25');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `razorpay_payment_id` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `course_id`, `user_id`, `price`, `razorpay_payment_id`, `created_at`, `updated_at`) VALUES
(44, 2, 48, '17700', 'pay_KSippMXTZYdEan', '2022-10-12 09:35:53', '2022-10-12 16:35:53'),
(45, 8, 48, '3540', 'pay_KSjeUfx8WxgZQb', '2022-10-12 10:25:36', '2022-10-12 17:25:36'),
(47, 22, 48, '4071', 'pay_KTXJBr9wRGEDVO', '2022-10-14 10:58:26', '2022-10-14 17:58:26'),
(48, 22, 48, '4071', 'pay_KTXwIALFWtxHtB', '2022-10-14 11:35:22', '2022-10-14 18:35:22'),
(49, 22, 48, '4071', 'pay_KTXyySK6F7Qcdx', '2022-10-14 11:38:03', '2022-10-14 18:38:03'),
(50, 16, 48, '4425', 'pay_KTaaShdMVPRa5T', '2022-10-14 14:10:48', '2022-10-14 21:10:48'),
(51, 2, 56, '17700', 'pay_KTbJQDOtJzGLZP', '2022-10-14 14:53:20', '2022-10-14 21:53:20'),
(52, 13, 56, '2065', 'pay_KTbLK7EoZV2mkz', '2022-10-14 14:55:12', '2022-10-14 21:55:12'),
(53, 16, 57, '4425', 'pay_KTbQ5CKaB8BJpT', '2022-10-14 14:59:40', '2022-10-14 21:59:40'),
(54, 4, 56, '4720', 'pay_KTbUODOoPHmX2R', '2022-10-14 15:03:43', '2022-10-14 22:03:43'),
(55, 4, 57, '4720', 'pay_KZCRD4vDqgoq86', '2022-10-28 18:27:24', '2022-10-29 01:27:24'),
(56, 5, 57, '3540', 'pay_Kb7deVZICptpPa', '2022-11-02 15:03:44', '2022-11-02 22:03:44'),
(57, 26, 61, '4071', 'pay_Kbq3sxuGHRZDFG', '2022-11-04 10:31:41', '2022-11-04 17:31:41'),
(58, 37, 61, '2891', 'pay_KbqAPX8XHrQnGB', '2022-11-04 10:37:29', '2022-11-04 17:37:29'),
(60, 2, 61, '1.18', 'pay_KeD0q7WehFHKRC', '2022-11-10 10:17:42', '2022-11-10 17:17:42'),
(61, 2, 63, '88500', 'pay_KmYQoqK9bFtRDH', '2022-12-01 12:25:18', '2022-12-01 19:25:18'),
(62, 11, 64, '17700', 'pay_KmbBAceLmEP5qq', '2022-12-01 15:06:34', '2022-12-01 22:06:34'),
(63, 2, 64, '88500', 'pay_Kmbnid0Us4GuHh', '2022-12-01 15:43:03', '2022-12-01 22:43:03'),
(64, 6, 64, '47200', 'pay_KmbtRnwcuvZpsa', '2022-12-01 15:48:29', '2022-12-01 22:48:29'),
(65, 14, 67, '2065', 'pay_Kw3H25aOqDlzdg', '2022-12-25 12:30:14', '2022-12-25 19:30:14');

-- --------------------------------------------------------

--
-- Table structure for table `ppt`
--

CREATE TABLE `ppt` (
  `id` int(11) NOT NULL,
  `education` varchar(255) NOT NULL,
  `electronics` varchar(255) NOT NULL,
  `trading` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ppt`
--

INSERT INTO `ppt` (`id`, `education`, `electronics`, `trading`, `created_at`, `updated_at`) VALUES
(4, '167645816167819.pdf', '167645816185387.pdf', '167645816138418.pdf', '2023-02-15 16:19:21', '2023-02-15 23:19:21');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(4) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `document` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `projectenquiry`
--

CREATE TABLE `projectenquiry` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `comment` mediumtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `project_category`
--

CREATE TABLE `project_category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_category`
--

INSERT INTO `project_category` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'test', '2022-09-16 17:08:01', '2022-09-16 11:38:01');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `description` mediumtext NOT NULL,
  `additional` mediumtext CHARACTER SET utf8 NOT NULL,
  `type` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `cat_id`, `name`, `image`, `description`, `additional`, `type`, `price`, `duration`, `created_at`, `updated_at`) VALUES
(2, 1, 'Student Acceleration Program (SAP)', '5182.jpg', '<p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"font-weight: bolder; text-align: justify;\">Syllabus :</span><span style=\"text-align: justify;\">&nbsp;</span>30 Hours Agreement with ITI, Polytechnic, Engineering and MBA institutions / Students.</p>', '<p></p><p></p><ul><ul></ul></ul><p></p><p style=\"text-align: justify;\"><span style=\"font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\"><font color=\"#9c9c94\">✓</font></span><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">&nbsp;</span>Origin of Negativity&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓</span><span style=\"color: rgb(99, 99, 99); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">&nbsp;</span><span style=\"text-align: left;\">Goal Setting</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓</span><span style=\"color: rgb(99, 99, 99); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">&nbsp;</span>Reality of Todays Youth&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓</span><span style=\"color: rgb(99, 99, 99); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">&nbsp;</span><span style=\"text-align: left;\">Priority Management ( Time )</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓</span><span style=\"color: rgb(99, 99, 99); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">&nbsp;</span>Ego Vs Attitude&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓</span><span style=\"color: rgb(99, 99, 99); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">&nbsp;</span><span style=\"text-align: left;\">Introductionto Human Thoughts &amp; Behaviours</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓</span><span style=\"color: rgb(99, 99, 99); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">&nbsp;</span>Human Programing&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓</span><span style=\"color: rgb(99, 99, 99); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">&nbsp;</span><span style=\"text-align: left;\">Relationship Management</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓</span><span style=\"color: rgb(99, 99, 99); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">&nbsp;</span>How to Change Human Program ?&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓</span><span style=\"color: rgb(99, 99, 99); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">&nbsp;</span><span style=\"text-align: left;\">Depression,Anxiety, and Loneliness</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓</span><span style=\"color: rgb(99, 99, 99); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">&nbsp;</span>Personality Development&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓</span><span style=\"color: rgb(99, 99, 99); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">&nbsp;</span><span style=\"text-align: left;\">Law of Attraction</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓</span><span style=\"color: rgb(99, 99, 99); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">&nbsp;</span>Communication Skills&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓</span><span style=\"color: rgb(99, 99, 99); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">&nbsp;</span><span style=\"text-align: left;\">Change Management</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓</span><span style=\"color: rgb(99, 99, 99); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">&nbsp;</span>Daily Habits &amp; Cultural Traits&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓</span><span style=\"color: rgb(99, 99, 99); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">&nbsp;</span><span style=\"text-align: left;\">Leadership &amp; Team Management</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓</span><span style=\"color: rgb(99, 99, 99); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">&nbsp;</span>In search of Happiness&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓</span><span style=\"color: rgb(99, 99, 99); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">&nbsp;</span><span style=\"text-align: left;\">Speed, Quality, Response, Consistency</span></p><p style=\"text-align: justify;\"><br></p>', 'Offline', '40000', '12 Hours Class room sessions, 04 Hours participation in Aristotle Club events, 04 hours Group discussions, 10 hours online seminars', '2022-08-05 13:00:17', '2022-12-08 00:06:48'),
(3, 1, 'Faculty Development Program (FDP)', '75083.jpg', '<p style=\"text-align: justify; \"><span style=\"font-weight: bolder;\">Syllabus :</span>&nbsp;&nbsp;16 Hours Agreement with ITI, Polytechnic, Engineering and MBA institutions / Faculties from Electronics, IT, Electrical<span style=\"font-size: 1rem;\">stream / departments. Skill Specific Program&nbsp;</span></p>', '<p style=\"text-align: justify;\"><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Definition of Quality&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>RoHS Compliance<span style=\"font-size: 1rem;\">&nbsp;&nbsp;</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Skill / Will Matrix<span style=\"font-size: 1rem;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"text-align: left;\">SMT &amp; PTH Techniques</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Counselling Psychology&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"text-align: left;\">Soldering – Manual / Robotic</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Electronics Manufacturing &amp; Services &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"text-align: left;\">Visual Inspection</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Job Opportunities&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Component Identification&amp; Insertion<span style=\"font-size: 1rem;\">&nbsp;</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"text-align: left;\">Electro Static Discharge&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Gerber Reading<span style=\"font-size: 1rem;\">&nbsp;</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Moisture Sensitive Devices<span style=\"font-size: 1rem;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>SMART City Projects<span style=\"font-size: 1rem;\">&nbsp;</span></p><p style=\"text-align: justify;\"></p><div style=\"text-align: justify;\"><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Manufacturing Control Plan &amp; Sampling<span style=\"font-size: 1rem;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Practical\'s&nbsp;</div><span style=\"font-size: 1rem;\"><br></span><p></p>', 'Offline', '35000', '12 hours classroom sessions & 04 hours Practical sessions', '2022-08-25 18:37:32', '2022-12-08 00:05:41'),
(4, 3, 'Continual Improvement', '70166.jpg', '<p><b>Outcome / Assured Result :</b> Min 50 kaizens by your employees at your organisation<br></p>', '<p><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>5SWasteologist&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"font-size: 1rem;\">Lean ECRS</span></p><p><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Gemba Walk&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"font-size: 1rem;\">Quality Costs</span></p><p><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Kaizen Eye&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"font-size: 1rem;\">Lean Six Sigma Yellow Belt</span></p><p><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"font-size: 1rem;\">TMP Awareness</span></p><p> </p>', 'Offline', '30000', '14 Hours', '2022-08-25 18:43:27', '2022-12-05 18:09:32'),
(5, 3, 'Quality Improvement', '84140.jpg', '<p><b>Fee: </b>Rs. 20, 000 if course to be conducted at client premises Rs. 3000 per candidate if course&nbsp;<span style=\"font-size: 1rem;\">to be conducted on line. Ref website for calendar</span></p>', '<p><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Quality First Mentality&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"font-size: 1rem;\">Cost Of Poor Quality</span></p><p><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"font-size: 1rem;\">Electronic Manufacturing process Audits&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"font-size: 1rem;\">Statistical Process Control</span></p><p><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>QC Tools&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"font-size: 1rem;\">PFMEA Control Plan</span></p><p><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"font-size: 1rem;\">8D</span></p>', 'Offline', '30000', '14 Hours', '2022-08-25 18:46:37', '2022-12-05 18:22:01'),
(6, 3, 'Operations Improvement', '60034.jpg', '<p><b>Fee : </b>Rs. 50, 000 if course to be conducted at client premises &amp;amp; Rs. 15,000 per candidate if&nbsp;<span style=\"font-size: 1rem;\">course to be conducted on line. Ref website for calendar</span></p>', '<p><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Leadership &amp; Team Management&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"font-size: 1rem;\">Lean Six Sigma Green Belt</span></p><p><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Finance &amp; Cost Control&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"font-size: 1rem;\">Risk Management</span></p><p><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"font-size: 1rem;\">TPM</span></p>', 'Offline', '40000', '25 Hours', '2022-08-25 18:47:59', '2022-12-05 18:22:35'),
(7, 3, 'Change Management', '21695.jpg', '<p><b>Fee :</b> Rs. 30, 000 if course to be conducted at client premises & Rs.2000 per candidate if course&nbsp;<span style=\"font-size: 1rem;\">to be conducted on line. Ref website for calendar</span></p><p><b>Life changing program</b></p>', '<p><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Counselling Psychology&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"font-size: 1rem;\">Leadership and Team Management</span></p><p><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>4D&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"font-size: 1rem;\">In search Of Happiness</span></p><p> </p>', 'Offline', '30000', '14 Hours', '2022-08-25 18:49:07', '2022-12-05 18:26:31'),
(8, 3, 'Operator Boost', '2511.jpg', '<p><b>Fee: </b>Tailor made program. Case to case<br></p>', '<p><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Psychology counselling &amp; change management&nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"font-size: 1rem;\">Development of Kaizen Culture</span></p><p><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>In search of happiness&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"font-size: 1rem;\">Awareness of 16 losses</span></p><p><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Total employee involvement&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"font-size: 1rem;\">Reward / recognition policies for operators</span></p><p><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"font-size: 1rem;\">Awareness of Productivity, Quality, Cost, Delivery, Moral and Safety</span></p>', 'Offline', '80000', '100 Hours with HR and Top Management support', '2022-08-25 18:50:13', '2022-12-05 18:32:05'),
(9, 3, 'EMS Boot Camp', '85825.jpg', '<p><b>Fee : </b>Rs. 30, 000 if course to be conducted at client premises Rs. 4000 per candidate if course&nbsp;<span style=\"font-size: 1rem;\">to be conducted on line. Ref website for calendar</span></p>', '<p><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Introduction&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"font-size: 1rem;\">RoHS Compliance</span></p><p><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Surface Mount Technology&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"font-size: 1rem;\">PCBA Handling and Storage</span></p><p><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Pin Through Hole Technology&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"font-size: 1rem;\">PCBA Visual Inspection</span></p><p><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Electro Static Discharge&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"font-size: 1rem;\">PCBA Rework / Manual Soldering</span></p><p><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Moisture Sensitive Devices&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"font-size: 1rem;\">First Article Inspection &amp; Control Plan</span></p><p> </p>', 'Offline', '30000', '16 Hours', '2022-08-25 18:51:37', '2022-12-05 18:32:33'),
(11, 5, 'Cyber Security Awareness', '62583.png', '<h6 style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 30px; color: rgb(35, 61, 99); font-family: sofiapro, sans-serif;\"><br></h6>', '<p><font color=\"#7f8897\" face=\"sofiapro, sans-serif\"><span style=\"font-size: 15px; background-color: rgb(251, 251, 251);\"></span></font></p><p><font color=\"#7f8897\" face=\"sofiapro, sans-serif\"><span style=\"font-size: 15px; background-color: rgb(251, 251, 251);\"></span></font></p><ul></ul><p></p><p><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Cyber world&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"font-size: 1rem;\">How to safe yourself from cyber crime</span></p><p><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>How you connected to cyber world&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"font-size: 1rem;\">Malware and malware protection tips</span></p><p><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>What is Cyber crime&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"font-size: 1rem;\">Spam and spam protection tips</span></p><p><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Motivation behind cyber crime&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"font-size: 1rem;\">Hacked account protection tips</span></p><p><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Cyber crime categories&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"font-size: 1rem;\">Unsecure network protection tips</span></p><p><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Types of cyber crime&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"font-size: 1rem;\">Data Gone AWOL protection tips</span></p><p><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"font-size: 1rem;\">Malware solutions ( security suite )</span></p><p style=\"padding-top: 0px; padding-right: 0px; padding-left: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(35, 61, 99); font-family: sofiapro, sans-serif; font-weight: 600 !important; font-size: 24px !important;\"><br></p>', 'Offline', '15000', '12 Hours', '2022-09-08 12:42:58', '2022-12-05 18:36:37'),
(13, 7, 'Hand Soldering Technician / Operator', '4627.jpg', '<p style=\"text-align: justify; \"><b>Role Description : </b>Individually operating soldering operation and doing basic maintenance. Carry out inspection of soldered part.</p><p style=\"text-align: justify; \"><b style=\"font-size: 1rem;\">Skill Level : 1/2 - </b><span style=\"font-size: 1rem;\">Intermediate / Advanced</span><br></p><p style=\"text-align: justify; \"><b style=\"font-size: 1rem;\">Minimum Education Qualification : </b><span style=\"font-size: 1rem;\">10th /12th standard passed</span><br></p><p style=\"text-align: justify; \"><b style=\"font-size: 1rem;\">Maximum Education Qualification :</b><span style=\"font-size: 1rem;\"> ITI/Diploma/BSc/BE</span><br></p><p style=\"text-align: justify; \"><b style=\"font-size: 1rem;\">Course Duration : </b><span style=\"font-size: 1rem;\">8 Hours</span><br></p><p style=\"text-align: justify; \"><b style=\"font-size: 1rem;\">Experience : </b><span style=\"font-size: 1rem;\">0 to 2 years</span><br></p><p style=\"text-align: justify; \"><b style=\"font-size: 1rem;\">Occupation : </b><span style=\"font-size: 1rem;\">Manufacturing / service centre</span><br></p><p style=\"text-align: justify; \"><b style=\"font-size: 1rem;\">Reference ID :&nbsp; </b><span style=\"font-size: 1rem;\">ZL / TC / 001</span><br></p><p style=\"text-align: justify; \"><b style=\"font-size: 1rem;\">Applicable ZL Modules : </b><span style=\"font-size: 1rem;\">Hand Soldering , Topic sensitisation , International standards</span><br></p><p><b>Fee</b>&nbsp;: <b>Rs.1750</b> / Candidate including Training , food , assessments ,&nbsp;<span style=\"font-size: 1rem;\">certificate</span></p>', '<p><b>Brief Job Description</b> :&nbsp;The individual on the job is responsible for manual hand&nbsp;<span style=\"font-size: 1rem;\">soldering of different types of components on the PCB as per&nbsp;</span><span style=\"font-size: 1rem;\">the ZL module.</span></p>', 'Offline', '1750', '8 Hours', '2022-09-27 10:56:27', '2022-11-18 01:14:35'),
(14, 7, 'PCBA Visual Inspection Operator / Tech', '4627.jpg', '<p style=\"text-align: justify; \"><b>Role Description</b> : Independently carry out the operation of Printed Circuit&nbsp;<span style=\"font-size: 1rem;\">Board Assembly Inspection using 4X , 40 X , 100 X Magnification</span></p><p style=\"text-align: justify; \"><b>Skill Level</b> : 1/2&nbsp; Intermediate / Advanced</p><p style=\"text-align: justify; \"><b>Minimum Education Qualification</b> : 10th /12th standard passed</p><p style=\"text-align: justify; \"><b>Maximum Education Qualification</b> : ITI/Diploma/BSc/BE</p><p style=\"text-align: justify; \"><b>Fee</b> : Rs.1750 / Candidate including Training , food , assessments , certificate</p><p style=\"text-align: justify; \"><b>Course Duration</b> : 8 Hours</p><p style=\"text-align: justify; \"><b>Experience</b> : 0 to 2 years</p><p style=\"text-align: justify; \"><b>Occupation</b> : Manufacturing / service centre&nbsp;</p><p style=\"text-align: justify; \"><b>Reference ID</b> : ZL / TC / 002</p><p style=\"text-align: justify; \"><b>Applicable ZL Modules</b> : Visual Inspection , Topic sensitisation , International standards.</p><div><br></div>', '<p style=\"text-align: justify; \"><b>Brief Job Description</b> : The individual on the job is responsible for visual inspection&nbsp;<span style=\"font-size: 1rem;\">of single, double, multilayer and flexible printed circuit board assembly inspection as per the ZL module.</span></p>', 'Offline', '1750', '8 Hours ', '2022-09-27 11:18:30', '2022-11-17 12:44:59'),
(15, 7, 'ESD ( Electrostatic Discharge )', '4627.jpg', '<p style=\"text-align: justify; \"><b>Role Description</b> : Independently carry out the ESD Program at organisation</p><p style=\"text-align: justify;\"><span style=\"font-size: 1rem;\"><b>Skill Level :</b> 1/2 - Intermediate / Advanced</span><br></p><p style=\"text-align: justify;\"><b>Minimum Education Qualification</b> : 10th /12th standard passed</p><p style=\"text-align: justify;\"><b>Maximum Education Qualification</b> : ITI/Diploma/BSc/BE</p><p style=\"text-align: justify;\"><b>Fee</b> : Rs.2750 / Candidate including Training , food , assessments , certificate</p><p style=\"text-align: justify;\"><b>Course Duration</b> : 20 Hours</p><p style=\"text-align: justify;\"><b>Experience</b> : 0 to 2 years</p><p style=\"text-align: justify;\"><b>Occupation </b>: Manufacturing / service centre / Entrepreneurship</p><p style=\"text-align: justify;\"><b>Reference ID</b> : ZL / TC / 003</p><p style=\"text-align: justify;\"><b>Applicable ZL Modules</b> : DFM Assessment&nbsp; , Topic sensitisation , International standards</p>', '<p style=\"text-align: justify; \"><b>Brief Job Description</b> : The individual on the job is responsible for ESD Coordination , Setup audit , ESD Awareness Program and ESD Control program.<br></p>', 'Offline', '2750', '20 Hours ', '2022-09-27 11:24:36', '2022-11-17 12:45:03'),
(16, 7, 'DFM Technician', '4627.jpg', '<p style=\"text-align: justify; \"><b>Role Description</b> : Independently carry out the basic DFM Studies of Printed Circuit Board Assemblies</p><p style=\"text-align: justify; \"><b>Skill Level :</b> 1/2 - Intermediate / Advanced</p><p style=\"text-align: justify; \"><b>Minimum Education Qualification</b> : 10th /12th standard passed</p><p style=\"text-align: justify; \"><b>Maximum Education Qualification</b> : ITI/Diploma/BSc/BE</p><p style=\"text-align: justify; \"><b>Fee </b>: Rs.3750 / Candidate including Training , food , assessments , certificate</p><p style=\"text-align: justify; \"><b>Course Duration</b> : 32 Hours</p><p style=\"text-align: justify; \"><b>Experience </b>: 0 to 2 years</p><p style=\"text-align: justify; \"><b>Occupation </b>: Manufacturing / service centre / Entrepreneurship</p><p style=\"text-align: justify; \"><b>Reference ID</b> : ZL / TC / 004</p><p style=\"text-align: justify; \"><b>Applicable ZL Modules</b> : DFM Assessment&nbsp; , Topic sensitisation , International standards.</p>', '<p style=\"text-align: justify; \"><b>Brief Job Description</b> : The individual on the job is responsible for Design For Manufacturing study of single &amp;amp; double side printed circuit board assembly.<br></p>', 'Offline', '3750', '32 Hours ', '2022-09-27 11:28:15', '2022-11-17 12:45:06'),
(17, 7, 'Debug Technician', '4627.jpg', '<p style=\"text-align: justify; \"><b>Role Description</b> : Independently carry out the basic Debug analysis of Printed Circuit Board Assemblies</p><p style=\"text-align: justify; \"><b>Skill Level :</b> 1/2 - Intermediate / Advanced</p><p style=\"text-align: justify; \"><b>Minimum Education Qualification</b> : 10th /12th standard passed</p><p style=\"text-align: justify; \"><b>Maximum Education Qualification</b> : ITI/Diploma/BSc/BE</p><p style=\"text-align: justify; \"><b>Fee </b>: Rs.3750 / Candidate including Training , food , assessments , certificate</p><p style=\"text-align: justify; \"><b>Course Duration</b> : 32 Hours</p><p style=\"text-align: justify; \"><b>Experience</b> : 0 to 2 years</p><p style=\"text-align: justify; \"><b>Occupation</b> : Manufacturing / service centre / Entrepreneurship</p><p style=\"text-align: justify; \"><b>Reference ID</b> : ZL / TC / 005</p><p style=\"text-align: justify; \"><b>Applicable ZL Modules</b> : Debug Assessment&nbsp; , Topic sensitisation , International standards&nbsp;</p><div><br></div>', '<p style=\"text-align: justify; \"><b>Brief Job Description</b> : The individual on the job is responsible for debug For of single &amp; double side printed circuit board assembly.<br></p>', 'Offline', '3750', '32 Hours ', '2022-09-27 11:33:36', '2022-11-17 12:45:09'),
(18, 7, 'SMT  Technician', '4627.jpg', '<p style=\"text-align: justify; \"><b>Role Description</b> : Independently carry out the Supervision and basic operation of SMT Assembly Line.</p><p style=\"text-align: justify; \"><b>Skill Level </b>:&nbsp; 1/2 - Intermediate / Advanced</p><p style=\"text-align: justify; \"><b>Minimum Education Qualification</b> : 10th /12th standard passed</p><p style=\"text-align: justify; \"><b>Maximum Education Qualification</b> : ITI/Diploma/BSc/BE ( Electronics )&nbsp;</p><p style=\"text-align: justify; \"><b>Fee </b>: Rs.3950 / Candidate including Training , food , assessments , certificate</p><p style=\"text-align: justify; \"><b>Course Duration</b> : 40 Hours</p><p style=\"text-align: justify; \"><b>Experience</b> : 0 to 2 years</p><p style=\"text-align: justify; \"><b>Occupation</b> : Manufacturing / service centre&nbsp;</p><p style=\"text-align: justify; \"><b>Reference ID</b> : ZL / TC / 006</p><p style=\"text-align: justify; \"><b>Applicable ZL Modules</b> : SMT Module, Topic sensitisation, International standards&nbsp; &nbsp;</p>', '<p style=\"text-align: justify; \"><b>Brief Job Description</b> : The individual on the job is responsible for Supervision , Process Audit , PCBA Inspection , basic machine operation and JH of SMT Line&nbsp;<br></p>', 'Offline', '3950', '40 Hours ', '2022-09-27 11:38:39', '2022-11-17 12:45:13'),
(19, 7, 'BGA Visual Inspection & X Ray Technician', '4627.jpg', '<p style=\"text-align: justify; \"><b>Role Description</b> : Independently carry out the BGA PCBA Visual inspection and X Ray.<span style=\"font-size: 1rem;\">&nbsp;</span></p><p style=\"text-align: justify; \"><b>Skill Level</b> : 1/2 - Intermediate / Advanced</p><p style=\"text-align: justify; \"><b>Minimum Education Qualification</b> : 10th /12th standard passed</p><p style=\"text-align: justify; \"><b>Maximum Education Qualification </b>: ITI/Diploma/BSc/BE ( Electronics )&nbsp;</p><p style=\"text-align: justify; \"><b>Fee </b>: Rs.3950 / Candidate including Training , food , assessments , certificate</p><p style=\"text-align: justify; \"><b>Course Duration</b> : 40 Hours</p><p style=\"text-align: justify; \"><b>Experience </b>: 0 to 2 years</p><p style=\"text-align: justify; \"><b>Occupation</b> : Manufacturing / service centre&nbsp;</p><p style=\"text-align: justify; \"><b>Reference ID</b> : ZL / TC / 007</p><p style=\"text-align: justify; \"><b>Applicable ZL Modules</b> : SMT Module, Topic sensitisation, International standards&nbsp; &nbsp;</p>', '<p style=\"text-align: justify; \"><b>Brief Job Description</b> : The individual on the job is responsible for BGA Inspection , X Ray , Report generation and defect identification.<br></p>', 'Offline', '3950', '40 Hours ', '2022-09-27 11:42:56', '2022-11-17 12:45:16'),
(20, 7, 'Manual Preparation & Insertion operator ( electronic  components )', '4627.jpg', '<p style=\"text-align: justify; \"><b>Role Description</b> : Mounting electronic components on the printed circuits board manually and performing quality check Forming, bending and cutting the components extra leads to make it suitable for through hole assembly.</p><p style=\"text-align: justify; \"><span style=\"font-size: 1rem;\"><b>Skill Level</b> : 1/2 - Intermediate / Advanced</span><br></p><p style=\"text-align: justify; \"><b>Minimum Education Qualification</b> : 10th /12th standard passed</p><p style=\"text-align: justify; \"><b>Maximum Education Qualification</b> : ITI/Diploma/BSc/BE ( Electronics )&nbsp;</p><p style=\"text-align: justify; \"><b>Fee </b>: Rs.1850 / Candidate including Training , food , assessments , certificate</p><p style=\"text-align: justify; \"><b>Course Duration</b> : 16 Hours</p><p style=\"text-align: justify; \"><b>Experience </b>: 0 to 2 years</p><p style=\"text-align: justify; \"><b>Occupation </b>: Manufacturing&nbsp;</p><p style=\"text-align: justify; \"><b>Reference ID</b> : ZL / TC / 008</p><p style=\"text-align: justify; \"><b>Applicable ZL Modules</b> : Assessment , Topic sensitisation , International standards</p>', '<p style=\"text-align: justify;\"><b>Brief Job Description</b> : The individuals on the job is responsible for manually fixing different electronic components especially in through hole assembly of components that cannot be inserted using pick and place machine because of reasons such as inconsistent shape or size or hand soldering requirement&nbsp;</p><p style=\"text-align: justify; \">The individual at work is responsible for forming bending and cutting the components extra leads, by using hand tools or machines to make them suitable for the through hole assembly.</p>', 'Offline', '1850', '16 Hours ', '2022-09-27 11:48:05', '2022-11-17 12:45:19'),
(21, 7, 'Wave Soldering Operator / Technician', '4627.jpg', '<p style=\"text-align: justify; \"><b>Role Description</b> :&nbsp;Running and maintaining wave soldering machine to solder&nbsp;<span style=\"font-size: 1rem;\">different batches of assembled PCBs as per prescribed quality&nbsp;</span><span style=\"font-size: 1rem;\">standard and check validity.</span></p><p><span style=\"font-size: 1rem;\"><b>Skill Level</b> : 1/2 - Intermediate / Advanced</span><br></p><p><b>Minimum Education Qualification</b> : 10th /12th standard passed</p><p><b>Maximum Education Qualification</b> : ITI/Diploma/BSc/BE ( Electronics )&nbsp;</p><p><b>Fee </b>: Rs.<font face=\"Calibri, sans-serif\"><span style=\"font-size: 14.6667px;\">3450</span></font>/ Candidate including Training , food , assessments , certificate</p><p><b>Course Duration</b> : 16 Hours</p><p><b>Experience </b>: 0 to 2 years</p><p><b>Occupation </b>: Manufacturing&nbsp;</p><p><b>Reference ID</b> : ZL / TC / 009</p><p><b>Applicable ZL Modules</b> : Assessment , Topic sensitisation , International standards</p>', '<p style=\"text-align: justify; \"><b>Brief Job Description</b> :&nbsp;The individual at work is responsible for setting up, operating&nbsp;<span style=\"font-size: 1rem;\">and maintaining the wave soldering machine in order to&nbsp;</span><span style=\"font-size: 1rem;\">solder the different lots of assembled PCBs as per prescribed&nbsp;</span><span style=\"font-size: 1rem;\">quality standards.</span></p>', 'Offline', '3450', '16 Hours ', '2022-09-27 11:52:02', '2022-11-17 12:45:22'),
(22, 7, 'SMT Screen Printer Operator / Tech', '4627.jpg', '<p style=\"text-align: justify; \"><b>Role Description</b> : Applying solder paste to the required area on the bare unpopulated PCB board using stencil printing machine or manual stencil</p><p style=\"text-align: justify; \"><span style=\"font-size: 1rem;\"><b>Skill Level</b> : 1/2 - Intermediate / Advanced</span><br></p><p style=\"text-align: justify; \"><b>Minimum Education Qualification</b> : 10th /12th standard passed</p><p style=\"text-align: justify; \"><b>Maximum Education Qualification</b> : ITI/Diploma/BSc/BE ( Electronics )&nbsp;</p><p style=\"text-align: justify; \"><b>Fee </b>: Rs.3450 / Candidate including Training , food , assessments , certificate</p><p style=\"text-align: justify; \"><b>Course Duration</b> : 40 Hours</p><p style=\"text-align: justify; \"><b>Experience</b> : 0 to 2 years</p><p style=\"text-align: justify; \"><b>Occupation</b> : Manufacturing&nbsp;</p><p style=\"text-align: justify; \"><b>Reference ID</b> : ZL / TC / 010</p><p style=\"text-align: justify; \"><b>Applicable ZL Modules</b> : Assessment, Topic sensitisation, International standards.</p>', '<p style=\"text-align: justify; \"><b>Brief Job Description</b> : The individual at work is responsible for applying solder paste on PCBs to the assembled with SMT components for oven soldering at the wave soldering or reflow oven stage.<br></p>', 'Offline', '3450', '40 Hours ', '2022-09-27 11:58:31', '2022-11-17 12:45:25'),
(23, 7, 'SMT Pick & Place Operator / Tech', '4627.jpg', '<p style=\"text-align: justify; \"><b>Role Description</b> : Operating the automated pick-and-place machine for assembling components on PCB surface; loading and maintaining the machines.</p><p style=\"text-align: justify; \"><span style=\"font-size: 1rem;\"><b>Skill Level</b> : 1/2 - Intermediate / Advanced</span><br></p><p style=\"text-align: justify; \"><b>Minimum Education Qualification</b> : 10th /12th standard passed</p><p style=\"text-align: justify; \"><b>Maximum Education Qualification</b> : ITI/Diploma/BSc/BE ( Electronics )&nbsp;</p><p style=\"text-align: justify; \"><b>Fee</b> : Rs.3450 / Candidate including Training , food , assessments , certificate</p><p style=\"text-align: justify; \"><b>Course Duration</b> : 40 Hours</p><p style=\"text-align: justify; \"><b>Experience</b> : 0 to 2 years</p><p style=\"text-align: justify; \"><b>Occupation</b> : Manufacturing&nbsp;</p><p style=\"text-align: justify; \"><b>Reference ID</b> : ZL / TC / 011</p><p style=\"text-align: justify; \"><b>Applicable ZL Modules</b> : Assessment, Topic sensitisation, International standards.</p>', '<p style=\"text-align: justify; \"><b>Brief Job Description</b> : The individual on the job, programs, operates and maintains the automated pick-and -place machine for placing different types of components on the surface of PCBs for soldering.<br></p>', 'Offline', '3450', '40 Hours ', '2022-09-27 12:01:27', '2022-11-17 12:45:30'),
(24, 7, 'SMT Reflow Technician', '4627.jpg', '<p style=\"text-align: justify; \"><b>Role Description</b> : Loading, setting, operating and maintaining reflow-open soldering machine in order to solder assembled SMT components on PCB and checking visually.</p><p style=\"text-align: justify; \"><span style=\"font-size: 1rem;\"><b>Skill Level</b> : 1/2 - Intermediate / Advanced</span><br></p><p style=\"text-align: justify; \"><b>Minimum Education Qualification</b> : 10th /12th standard passed</p><p style=\"text-align: justify; \"><b>Maximum Education Qualification</b> : ITI/Diploma/BSc/BE ( Electronics )&nbsp;</p><p style=\"text-align: justify; \"><b>Fee</b> : Rs.3450 / Candidate including Training , food , assessments , certificate</p><p style=\"text-align: justify; \"><b>Course Duration</b> : 40 Hours</p><p style=\"text-align: justify; \"><b>Experience</b> : 0 to 2 years</p><p style=\"text-align: justify; \"><b>Occupation</b> : Manufacturing&nbsp;</p><p style=\"text-align: justify; \"><b>Reference ID</b> : ZL / TC / 012</p><p style=\"text-align: justify; \"><b>Applicable ZL Modules</b> : Assessment, Topic sensitisation, International standards</p>', '<p style=\"text-align: justify; \"><b>Brief Job Description </b>: The individual at work is responsible for loading, operating and maintaining the reflow -oven soldering machine.<br></p>', 'Offline', '3450', '40 Hours ', '2022-09-27 12:08:42', '2022-11-17 12:45:32');
INSERT INTO `services` (`id`, `cat_id`, `name`, `image`, `description`, `additional`, `type`, `price`, `duration`, `created_at`, `updated_at`) VALUES
(25, 7, 'AOI & ICT Operator', '4627.jpg', '<p style=\"text-align: justify; \"><b>Role Description</b> : Testing the assembled PCB for open circuit ,short circuit ,&nbsp;<span style=\"font-size: 1rem;\">missing or incorrect components and incorrect placing to&nbsp;</span><span style=\"font-size: 1rem;\">identify manufacturing defects ,using the in-circuit testing&nbsp;</span><span style=\"font-size: 1rem;\">machine</span></p><p style=\"text-align: justify; \"><span style=\"font-size: 1rem;\">Testing the bare or assembled PCB at different stages of&nbsp;</span><span style=\"font-size: 1rem;\">assembly and visually checking for scratches ,stains ,open,&nbsp;</span><span style=\"font-size: 1rem;\">short ,thinning solder missing on incorrect components and&nbsp;</span><span style=\"font-size: 1rem;\">placing</span></p><p style=\"text-align: justify; \"><span style=\"font-size: 1rem;\"><b>Skill Level</b> : 1/2 - Intermediate / Advanced</span><br></p><p style=\"text-align: justify;\"><b>Minimum Education Qualification</b> : 10th /12th standard passed</p><p style=\"text-align: justify;\"><b>Maximum Education Qualification</b> : ITI/Diploma/BSc/BE ( Electronics )&nbsp;</p><p style=\"text-align: justify;\"><b>Fee </b>: Rs.3450 / Candidate including Training , food , assessments , certificate</p><p style=\"text-align: justify;\"><b>Course Duration</b> : 40 Hours</p><p style=\"text-align: justify;\"><b>Experience </b>: 0 to 2 years</p><p style=\"text-align: justify;\"><b>Occupation </b>: Manufacturing&nbsp;</p><p style=\"text-align: justify;\"><b>Reference ID</b> : ZL / TC / 013</p><p style=\"text-align: justify;\"><b>Applicable ZL Modules</b> : Assessment, Topic sensitisation, International standards&nbsp; &nbsp;</p><div><br></div>', '<p style=\"text-align: justify; \"><b>Brief Job Description</b> : The individual at work is responsible for testing the PCB&nbsp;<span style=\"font-size: 1rem;\">assembly by using the ICT machine to check for short circuit,&nbsp;</span><span style=\"font-size: 1rem;\">open circuits missing components, incorrect components and&nbsp;</span><span style=\"font-size: 1rem;\">incorrect placing of components -that is parts with limited or&nbsp;</span><span style=\"font-size: 1rem;\">known variations.</span></p><p style=\"text-align: justify; \">The individual at work is responsible for testing the pcb at&nbsp;<span style=\"font-size: 1rem;\">several stages of assembly by using the AOI machine to check&nbsp;</span><span style=\"font-size: 1rem;\">for scratches ,stains opens short thinning solder missing on&nbsp;</span><span style=\"font-size: 1rem;\">incorrect components and placing of components -that is part&nbsp;</span><span style=\"font-size: 1rem;\">with limited or known variations .The individual also conducts&nbsp;</span><span style=\"font-size: 1rem;\">visual checks to identify any faults in the automotive&nbsp;</span><span style=\"font-size: 1rem;\">electronic component</span></p>', 'Offline', '3450', '40 Hours ', '2022-09-27 14:41:59', '2022-11-17 12:45:36'),
(26, 7, 'Robotic Soldering', '4627.jpg', '<p style=\"text-align: justify; \"><b>Role Description</b> : Skilled person will operate the fully automated system that is&nbsp;<span style=\"font-size: 1rem;\">defined to perform the defined task ,assigned by a customer&nbsp;</span><span style=\"font-size: 1rem;\">program ,precisely and on repeated basis</span></p><p style=\"text-align: justify; \"><span style=\"font-size: 1rem;\"><b>Skill Level</b> :&nbsp; 1/2 - Intermediate / Advanced</span><br></p><p style=\"text-align: justify; \"><b>Minimum Education Qualification</b> : 10th /12th standard passed</p><p style=\"text-align: justify; \"><b>Maximum Education Qualification</b> : ITI/Diploma/BSc/BE ( Electronics )&nbsp;</p><p style=\"text-align: justify; \"><b>Fee</b> : Rs.3450 / Candidate including Training , food , assessments , certificate</p><p style=\"text-align: justify; \"><b>Course Duration</b> : 16 Hours</p><p style=\"text-align: justify; \"><b>Experience </b>: 0 to 2 years</p><p style=\"text-align: justify; \"><b>Occupation </b>: Manufacturing&nbsp;</p><p style=\"text-align: justify; \"><b>Reference ID</b> : ZL / TC / 014</p><p style=\"text-align: justify; \"><b>Applicable ZL Modules</b> : Assessment, Topic sensitisation, International standards.</p>', '<p style=\"text-align: justify; \"><b>Brief Job Description</b> : The individual at work is responsible for the machine&nbsp;<span style=\"font-size: 1rem;\">operation , programing , maintenance and inspection</span></p>', 'Offline', '3450', '16 Hours ', '2022-09-27 14:46:22', '2022-11-17 12:45:39'),
(27, 7, 'Automotive Optics tech', '4627.jpg', '<p style=\"text-align: justify; \"><b>Role Description</b> : Contact : Connect@zillionlink.in</p><p style=\"text-align: justify; \"><span style=\"font-size: 1rem;\"><b>Skill Level</b> : 1/2 - Intermediate / Advanced</span><br></p><p style=\"text-align: justify; \"><b>Minimum Education Qualification</b> : 10th /12th standard passed</p><p style=\"text-align: justify; \"><b>Maximum Education Qualification</b> : ITI/Diploma/BSc/BE ( Electronics )&nbsp;</p><p style=\"text-align: justify; \"><b>Fee </b>: Rs.3450 / Candidate including Training , food , assessments , certificate</p><p style=\"text-align: justify; \"><b>Course Duration</b> : 32 Hours</p><p style=\"text-align: justify; \"><b>Experience </b>: 0 to 2 years</p><p style=\"text-align: justify; \"><b>Occupation </b>: Manufacturing&nbsp;</p><p style=\"text-align: justify; \"><b>Reference ID</b> : ZL / TC / 015</p><p style=\"text-align: justify; \"><b>Applicable ZL Modules</b> : Assessment, Topic sensitisation, International standards&nbsp;</p>', '<p>Brief Job Description : Contact : Connect@zillionlink.in<br></p>', 'Offline', '3450', '32 Hours ', '2022-09-27 14:48:54', '2022-11-17 12:45:42'),
(28, 7, 'Wire harness assembly operator', '4627.jpg', '<p style=\"text-align: justify; \"><b>Role Description</b> : After completing this course, the student will be able to perform basic wire harness assembly processes within <span style=\"font-size: 1rem;\">manufacturing facility.</span></p><p style=\"text-align: justify; \"><span style=\"font-size: 1rem;\"><b>Skill Level</b> : 1/2 - Intermediate / Advanced</span><br></p><p style=\"text-align: justify; \"><b>Minimum Education Qualification</b> : 10th /12th standard passed</p><p style=\"text-align: justify; \"><b>Maximum Education Qualification</b> : ITI/Diploma/BSc/BE ( Electronics )&nbsp;</p><p style=\"text-align: justify; \"><b>Fee </b>: Rs.3450 / Candidate including Training , food , assessments , certificate</p><p style=\"text-align: justify; \"><b>Course Duration </b>: 32 Hours</p><p style=\"text-align: justify; \"><b>Experience </b>: 0 to 2 years</p><p style=\"text-align: justify; \"><b>Occupation </b>: Manufacturing&nbsp;</p><p style=\"text-align: justify; \"><b>Reference ID</b> : ZL / TC / 016</p><p style=\"text-align: justify; \"><b>Applicable ZL Modules</b> : Assessment, Topic sensitisation, International standards&nbsp;&nbsp;</p>', '<p style=\"text-align: justify; \"><b>Brief Job Description</b> : Contact : The Wire Harness Assembly for Operators training course will give each participant the ability to identify and use the key tools, materials, and processes that wire harness operators need to reliably and repeatably assemble quality harnesses.<br></p>', 'Offline', '3450', '32 Hours ', '2022-09-27 14:53:08', '2022-11-17 12:46:06'),
(29, 7, 'Production Supervision', '4627.jpg', '<p style=\"text-align: justify; \"><b>Role Description</b> : Production Supervision ( Administration of 6M )</p><p style=\"text-align: justify; \"><span style=\"font-size: 1rem;\"><b>Skill Level</b> : 1/2 - Intermediate / Advanced</span><br></p><p style=\"text-align: justify; \"><b>Minimum Education Qualification</b> : 10th /12th standard passed</p><p style=\"text-align: justify; \"><b>Maximum Education Qualification</b> : ITI/Diploma/BSc/BE ( Electronics )&nbsp;</p><p style=\"text-align: justify; \"><b>Fee </b>: Rs.4450 / Candidate including Training , food , assessments , certificate</p><p style=\"text-align: justify; \"><b>Course Duration</b> : 40 Hours</p><p style=\"text-align: justify; \"><b>Experience </b>: 1 to 5 years</p><p style=\"text-align: justify; \"><b>Occupation </b>: Manufacturing&nbsp;</p><p style=\"text-align: justify; \"><b>Reference ID</b> : ZL / CI / 001</p><p style=\"text-align: justify; \"><b>Applicable ZL Modules</b> : Training Module, Topic sensitisation</p>', '<p style=\"text-align: justify; \"><b>Brief Job Description</b> : The individual at work is responsible &amp;amp; accountable for Supervision of productivity, Quality, Cost, Delivery, Moral and Safety of production processes. He is responsible for Kaizen Culture and good internal Communication.<br></p>', 'Offline', '4450', '40 Hours ', '2022-09-27 15:03:04', '2022-11-17 12:46:11'),
(30, 7, 'Quality Supervision', '4627.jpg', '<p><b>Role Description</b> : Quality Supervision ( Administration of Incoming , In process&nbsp;<span style=\"font-size: 1rem;\">and Outgoing Quality , Customer Complaints &amp; COPQ )</span></p><p><span style=\"font-size: 1rem;\"><b>Skill Level</b> : 1/2 - Intermediate / Advanced</span><br></p><p><b>Minimum Education Qualification</b> : ITI standard passed</p><p><b>Maximum Education Qualification</b> : ITI/Diploma/BSc/BE ( Electronics )&nbsp;</p><p><b>Fee </b>: Rs.4450 / Candidate including Training , food , assessments , certificate</p><p><b>Course Duration</b> : 40 Hours</p><p><b>Experience </b>: 1 to 5 years</p><p><b>Occupation </b>: Manufacturing&nbsp;</p><p><b>Reference ID</b> : ZL / CI / 002</p><p><b>Applicable ZL Modules</b> : Training Module, Topic sensitisation</p>', '<p><b>Brief Job Description</b> : The individual at work is responsible &amp; accountable for&nbsp;<span style=\"font-size: 1rem;\">Supervision of Incoming Quality, Outgoing Quality, In process&nbsp;</span><span style=\"font-size: 1rem;\">Quality, Customer complaints, Cost of Poor Quality &amp; Audits.&nbsp;</span><span style=\"font-size: 1rem;\">He is responsible for Kaizen Culture and good internal&nbsp;</span><span style=\"font-size: 1rem;\">Communication.</span></p>', 'Offline', '4450', '40 Hours ', '2022-09-27 15:07:32', '2022-11-17 12:46:16'),
(31, 7, 'TPM Professional', '4627.jpg', '<p><b>Role Description</b> : TPM Coordination / Supervision ( Administration of operation through TPM Pillars )</p><p><span style=\"font-size: 1rem;\"><b>Skill Level</b> : 1/2 - Intermediate / Advanced</span><br></p><p><b>Minimum Education Qualification</b> : ITI standard passed</p><p><b>Maximum Education Qualification</b> : ITI/Diploma/BSc/BE ( Electronics )&nbsp;</p><p><b>Fee</b> : Rs.4450 / Candidate including Training , food , assessments , certificate</p><p><b>Course Duration</b> : 40 Hours</p><p><b>Experience </b>: 1 to 5 years</p><p><b>Occupation </b>: Manufacturing&nbsp;</p><p><b>Reference ID</b> : ZL / CI / 003</p><p><b>Applicable ZL Modules</b> : Training Module, Topic sensitisation</p>', '<p style=\"text-align: justify; \"><b>Brief Job Description</b> : The individual at work is responsible &amp; accountable for the supervision and coordination of operations through TPM Pillars and kaizen approach.<br></p>', 'Offline', '4450', '40 Hours ', '2022-09-27 15:10:16', '2022-11-17 12:46:21'),
(32, 7, 'Lean Manufacturing Professional ( Bronze )', '4627.jpg', '<p style=\"text-align: justify; \"><b>Role Description</b> : Lean / 7 waste identification and analysis Coordination /&nbsp;<span style=\"font-size: 1rem;\">Supervision ( Tracking , monitoring and coordination of&nbsp;</span><span style=\"font-size: 1rem;\">operation through Lean tools )&nbsp;</span><span style=\"font-size: 1rem;\">Skill Level 1/2 - Intermediate / Advanced</span></p><p style=\"text-align: justify; \"><b>Minimum Education Qualification</b> : ITI standard passed</p><p style=\"text-align: justify; \"><b>Maximum Education Qualification</b> : ITI/Diploma/BSc/BE ( Electronics )&nbsp;</p><p style=\"text-align: justify; \"><b>Fee </b>: Rs.4450 / Candidate including Training , food , assessments , certificate</p><p style=\"text-align: justify; \"><b>Course Duration</b> : 40 Hours</p><p style=\"text-align: justify; \"><b>Experience </b>: 1 to 5 years</p><p style=\"text-align: justify; \"><b>Occupation </b>: Manufacturing&nbsp;</p><p style=\"text-align: justify; \"><b>Reference ID</b> : ZL / CI / 004</p><p style=\"text-align: justify; \"><b>Applicable ZL Modules</b> : Training Module, Topic sensitisation&nbsp; &nbsp;</p>', '<p style=\"text-align: justify; \"><b>Brief Job Description</b> : The individual at work is responsible &amp;amp; accountable for the&nbsp;<span style=\"font-size: 1rem;\">execution, tracking , monitoring and coordination of&nbsp;</span><span style=\"font-size: 1rem;\">operations using lean tools and kaizen approach</span></p><p><br></p>', 'Offline', '4450', '40 Hours ', '2022-09-27 15:13:09', '2022-11-17 12:46:25'),
(33, 7, 'Kaizen Professional ( Wasteologist )', '4627.jpg', '<p><b>Role Description</b> : Kaizen culture administration and execution</p><p><span style=\"font-size: 1rem;\"><b>Skill Level</b> : 1/2 - Intermediate / Advanced</span><br></p><p><b>Minimum Education Qualification</b> : ITI standard passed</p><p><b>Maximum Education Qualification</b> : ITI/Diploma/BSc/BE ( Electronics )&nbsp;</p><p><b>Fee </b>: Rs.4450 / Candidate including Training , food , assessments , certificate</p><p><b>Course Duration</b> : 40 Hours</p><p><b>Experience </b>: 1 to 5 years</p><p><b>Occupation </b>: Manufacturing&nbsp;</p><p><b>Reference ID</b> : ZL / CI / 005</p><p><b>Applicable ZL Modules</b> : Training Module, Topic sensitisation&nbsp; &nbsp;</p>', '<p style=\"text-align: justify; \"><span style=\"font-size: 1rem;\"><b>Brief Job Description</b> : The individual at work is responsible &amp; accountable for establishing kaizen culture , motivational policies, executing kaizens &amp; MIS Preparation</span><br></p>', 'Offline', '4450', '40 Hours ', '2022-09-27 15:15:37', '2022-11-17 12:46:29'),
(34, 7, 'Lean Six Sigma Yellow Belt Professional', '4627.jpg', '<p style=\"text-align: justify; \"><b>Role Description</b> : Problem identification and problem analysis using Quality, Lean and Six Sigma tools</p><p><span style=\"font-size: 1rem;\"><b>Skill Level</b> : 1/2 - Intermediate / Advanced</span><br></p><p><b>Minimum Education Qualification</b> : ITI standard passed</p><p><b>Maximum Education Qualification</b> : ITI/Diploma/BSc/BE ( Electronics )&nbsp;</p><p><b>Fee </b>: Rs.4450 / Candidate including Training , food , assessments , certificate</p><p><b>Course Duration</b> : 40 Hours</p><p><b>Experience </b>: 1 to 5 years</p><p><b>Occupation </b>: Manufacturing&nbsp;</p><p><b>Reference ID</b> : ZL / CI / 006</p><p><b>Applicable ZL Modules</b> : Training Module, Topic sensitisation&nbsp; &nbsp;</p><div><br></div>', '<p style=\"text-align: justify; \"><b>Brief Job Description</b> : The individual at work is responsible &amp;amp; accountable to leads&nbsp;<span style=\"font-size: 1rem;\">limited improvement projects and / or serves as a team&nbsp;</span><span style=\"font-size: 1rem;\">member as a part of more complex improvement projects lead&nbsp;</span><span style=\"font-size: 1rem;\">by a Certified Green Belt or Certified Black Belt, typically in a&nbsp;</span><span style=\"font-size: 1rem;\">part-time role. A Lean Six Sigma Yellow Belt possesses a&nbsp;</span><span style=\"font-size: 1rem;\">thorough understanding of the elementary aspects of the Lean&nbsp;</span><span style=\"font-size: 1rem;\">Six Sigma Method including competence in the subject matters&nbsp;</span><span style=\"font-size: 1rem;\">contained within the phases of Define, Measure, and Control&nbsp;</span><span style=\"font-size: 1rem;\">(DMC) as defined by the ZL Knowledge framework.</span></p>', 'Offline', '4450', '40 Hours ', '2022-09-27 15:18:54', '2022-11-17 12:46:33'),
(35, 7, 'COPQ Professional', '4627.jpg', '<p style=\"text-align: justify; \"><b>Role Description</b> : To identify &amp; analyse cost associated with poor quality services and products.</p><p style=\"text-align: justify; \"><span style=\"font-size: 1rem;\"><b>Skill Level</b> : 1/2 - Intermediate / Advanced</span><br></p><p style=\"text-align: justify; \"><b>Minimum Education Qualification</b> : ITI standard passed</p><p style=\"text-align: justify; \"><b>Maximum Education Qualification</b> : ITI/Diploma/BSc/BE ( Electronics )&nbsp;</p><p style=\"text-align: justify; \"><b>Fee </b>: Rs.2450 / Candidate including Training , food , assessments , certificate</p><p style=\"text-align: justify; \"><b>Course Duration</b> : 16 Hours</p><p style=\"text-align: justify; \"><b>Experience </b>: 1 to 5 years</p><p style=\"text-align: justify; \"><b>Occupation</b> : Manufacturing&nbsp;</p><p style=\"text-align: justify; \"><b>Reference ID</b> : ZL / CI / 007</p><p style=\"text-align: justify; \"><b>Applicable ZL Modules</b> : Training Module, Topic sensitisation&nbsp;&nbsp;</p>', '<p style=\"text-align: justify; \"><b>Brief Job Description</b> : The individual at work is responsible &amp;amp; accountable to leads limited improvement projects related to COPQ</p>', 'Offline', '2450', '16 Hours ', '2022-09-27 15:25:14', '2022-11-17 12:46:36'),
(36, 7, 'HR Professional', '4627.jpg', '<p style=\"text-align: justify; \"><b>Role Description</b> : To establish advanced techniques of HR Management</p><p style=\"text-align: justify; \"><span style=\"font-size: 1rem;\"><b>Skill Level</b> : 1/2 - Intermediate / Advanced</span><br></p><p style=\"text-align: justify; \"><b>Minimum Education Qualification</b> : ITI standard passed / BCoM , BA , MBA</p><p style=\"text-align: justify; \"><b>Maximum Education Qualification</b> : BSC, Diploma, BCOM, BA, MBA, BE</p><p style=\"text-align: justify; \"><b>Fee </b>: Rs.3450 / Candidate including Training , food , assessments , certificate</p><p style=\"text-align: justify; \"><b>Course Duration</b> : 16 Hours</p><p style=\"text-align: justify; \"><b>Experience </b>: 1 to 5 years</p><p style=\"text-align: justify; \"><b>Occupation</b> : Manufacturing / Service</p><p style=\"text-align: justify; \"><b>Reference ID</b> : ZL / CI / 008</p><p style=\"text-align: justify; \"><b>Applicable ZL Modules</b> : Training Module, Topic sensitisation</p>', '<p style=\"text-align: justify; \"><b>Brief Job Description</b> : The individual at work is responsible &amp; accountable to establish and execute HR Policies, motivational programs, appraisal processes, town hall meetings, recruitment process, Spiritual management, change management<br></p>', 'Offline', '3450', '16 Hours ', '2022-09-27 15:28:51', '2022-11-17 12:46:40'),
(37, 7, '5S Professional / IATF / ISO9001', '4627.jpg', '<p><b>Role Description</b> : We conduct both awareness and implementation expert programs.</p><p><span style=\"font-size: 1rem;\"><b>Skill Level</b>&nbsp;: 1/2 - Intermediate / Advanced</span><br></p><p><b>Minimum Education Qualification</b> : ITI standard passed</p><p><b>Maximum Education Qualification</b> : ITI/Diploma/BSc/BE ( Electronics )</p><p><b>Fee</b> : Rs.2450 / , Rs.3450 Candidate including Training , food , assessments , certificate</p><p><b>Course Duration</b> : 16 Hours, 40 Hours</p><p><b>Experience</b> : 1 to 5 years</p><p><b>Occupation</b> : Manufacturing / Service</p><p><b>Reference ID</b> : ZL / CI / 009</p><p><b>Applicable ZL Modules</b> : Training Module, Topic sensitisation&nbsp;</p>', '<p><b style=\"\">Brief Job Description</b> : We conduct both awareness and implementation expert programs.<br></p>', 'Offline', '2450', '16 Hours , 40 Hours', '2022-09-27 15:46:14', '2022-11-17 12:46:43'),
(38, 1, 'EMS Certification Programs (EMSCP)', '14732.jpg', '<p><span style=\"font-weight: bolder;\">Syllabus :</span>&nbsp;&nbsp;40 Hours Agreement with ITI , Polytechnic , Engineering institutions / Students from Electronics , IT , Electrical stream /&nbsp;<span style=\"font-size: 1rem;\">departments.</span></p><p><span style=\"font-size: 1rem;\"><b>Skill Specific Program :</b> Programme would enable the students to make a meaningful participation in accelerating Industries&nbsp;</span><span style=\"font-size: 1rem;\">economy by gaining appropriate employment, becoming entrepreneurs and gaining appropriate knowledge</span></p>', '<p style=\"text-align: justify;\"><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Definition of Quality&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>RoHS Compliance<span style=\"font-size: 1rem;\">&nbsp;&nbsp;</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Skill / Will Matrix<span style=\"font-size: 1rem;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"text-align: left;\">SMT &amp; PTH Techniques</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Counselling Psychology&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"text-align: left;\">Soldering – Manual / Robotic</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Electronics Manufacturing &amp; Services &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"text-align: left;\">Visual Inspection</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Job Opportunities&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Component Identification&amp; Insertion<span style=\"font-size: 1rem;\">&nbsp;</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"text-align: left;\">Electro Static Discharge&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Gerber Reading<span style=\"font-size: 1rem;\">&nbsp;</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Moisture Sensitive Devices<span style=\"font-size: 1rem;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Practical\'s&nbsp;<span style=\"font-size: 1rem;\">&nbsp;</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Manufacturing Control Plan &amp; Sampling<span style=\"font-size: 1rem;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"text-align: left;\">PCB Design/ Software\'s</span><span style=\"font-size: 1rem;\">&nbsp;</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Advanced Product Quality plans<span style=\"font-size: 1rem;\">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span><span style=\"font-size: 1rem;\">S</span>t<span style=\"font-size: 1rem;\">atistical Process Control</span>&nbsp;<span style=\"font-size: 1rem;\">&nbsp;</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Measurement System Analysis<span style=\"font-size: 1rem;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Machine Operation and Programing&nbsp;<span style=\"font-size: 1rem;\">&nbsp;</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>EMS Functions – Introduction<span style=\"font-size: 1rem;\">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span style=\"color: rgb(156, 156, 148); font-family: arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center;\">✓&nbsp;</span>Certification/ Exam&nbsp;<span style=\"font-size: 1rem;\">&nbsp;</span><span style=\"font-size: 1rem;\">&nbsp;</span><span style=\"font-size: 1rem;\"><br></span></p>', 'Offline', '70000', '20 hours classroom sessions & 20 hours Practical sessions @ industry + 01 month internship', '2022-11-16 13:06:51', '2022-12-09 00:56:42');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `type`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'questions', '20', '1', '2022-09-28 16:23:15', '2022-11-12 00:50:42'),
(2, 'examtime', '75', '1', '2022-09-28 16:23:15', '2022-11-12 00:50:42'),
(3, 'examattempts', '2', '1', '2022-09-28 16:23:15', '2022-11-12 00:50:42'),
(4, 'exammarks', '40', '1', '2022-09-28 16:23:15', '2022-11-12 00:50:42'),
(5, 'zillioncard', '799', '1', '2022-09-28 16:23:15', '2022-11-12 00:50:42'),
(6, 'system_default_currency', '28', '1', '0000-00-00 00:00:00', '2022-10-11 05:34:55'),
(7, 'admin_email', 'gajanan@zillionlink.in', '1', '0000-00-00 00:00:00', '2022-11-12 00:50:42'),
(8, 'zcard_disc', '50', '1', '0000-00-00 00:00:00', '2022-11-12 00:50:42'),
(9, 'zcard_category', '[\"1\"]', '1', '0000-00-00 00:00:00', '2022-11-12 00:50:42'),
(10, 'rzp_key', 'rzp_live_zzH2Dxut4NPgNF', '1', '0000-00-00 00:00:00', '2022-12-22 07:59:10');

-- --------------------------------------------------------

--
-- Table structure for table `supplierenquiry`
--

CREATE TABLE `supplierenquiry` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `place` varchar(255) NOT NULL,
  `service` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `comment` mediumtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `trainerusers`
--

CREATE TABLE `trainerusers` (
  `id` int(11) NOT NULL,
  `application` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `registration` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `resume` varchar(255) NOT NULL,
  `days` varchar(255) NOT NULL,
  `residence` mediumtext NOT NULL,
  `district` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainerusers`
--

INSERT INTO `trainerusers` (`id`, `application`, `name`, `date`, `nationality`, `registration`, `photo`, `resume`, `days`, `residence`, `district`, `state`, `mobile`, `email`, `password`, `status`, `created_at`, `updated_at`) VALUES
(37, '', 'Manoj G', '2022-09-01', 'indian', 'Industry Traning Progarm', '11407.jpg', 'My College My Pride Campaign_KNPCVS 2022 2023_02.pdf', '3', 'test', 'pune', 'MH', '1234567890', 'manoj@ycstech.in', '$2y$10$5TRJnEniFmqwmKRPuDr7dOhxpFJ6Ckce4FLblMd0Z0RmMENnEYDTO', 1, '2022-09-06 16:35:26', '2022-12-08 01:20:39'),
(41, '1', 'Sankalp Khot', '2022-09-16', 'indian', 'Industry Orientation Progarm', '52720.png', 'Action Coach  Gajanan K.pdf', '3', 'pune', 'sangli', 'maharashtra', '9404371723', 'sankalp@ycstech.in', '$2y$10$2igEeXCklZijBKyK0EXrhOmZmbvfDKEO3p5FKBZJOPgT2CDqKqcBe', 1, '2022-09-16 13:38:21', '2022-12-05 22:44:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user.png',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` tinyint(4) DEFAULT '91',
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone_verified` tinyint(4) NOT NULL DEFAULT '0',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `image`, `email`, `mobile`, `country_code`, `country`, `state`, `city`, `pincode`, `address`, `email_verified_at`, `phone_verified`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '', 'user.png', '', '', 91, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL),
(40, 'manoj', 'user.png', 'manoj@ycstech.in', '7666939441', 91, 'India', '', 'Pune', '411038', '21, ishdan', NULL, 0, '$2y$10$vNRjRgE30eAL5EyEER5bP.7f67/X4ah1ZLjIS/Jb5RlH/9djyYvNe', 1, NULL, '2021-03-08 09:34:20', '2022-10-07 18:28:49'),
(52, 'Industry Orientation', 'user.png', 'manoj123@ycstech.in', '9877899879', 91, NULL, NULL, NULL, NULL, NULL, NULL, 0, '$2y$10$arbflErswgnshpvLk4ej4eYlKJGZLhBUP58LD9T0cvr/m//mcukXS', 1, NULL, '2022-09-16 07:44:59', '2022-09-16 07:44:59'),
(64, 'Sankalp Khot', '99615826.png', 'sankalp@ycstech.in', '9404371723', 91, 'India', NULL, 'pune', '411062', 'rambaug colony, kothrud, pune', NULL, 0, '$2y$10$7Lo0WKWGlGPvfNM1DbdHNegWH5sSzJ7/YFcoXi0p7YB46ikR4sDaG', 1, NULL, '2022-12-01 20:34:30', '2022-12-02 18:06:56'),
(66, 'Akanksha Mishra', '91923696.webp', 'akanksha@ycstech.in', '07879948581', 91, NULL, NULL, NULL, NULL, NULL, NULL, 0, '$2y$10$hf/t5v5ohHbNmeIMk5D1eu3grkXX6NJuoUT2R8YiPcnHk49E6aatS', 1, NULL, '2022-12-05 22:13:14', '2022-12-05 22:18:43'),
(67, 'Gajanan Kulkarni', 'user.png', 'gajananck@gmail.com', '08605008590', 91, NULL, NULL, NULL, NULL, NULL, NULL, 0, '$2y$10$LlE4sOWnXOnt9JBS5/SEE.WzFQ42GooBBfj1txIGrbHuXcT.ZCx9G', 1, NULL, '2022-12-25 19:22:44', '2022-12-25 19:22:44'),
(68, 'Nishi Barhate', 'user.png', 'engg@zealelectromech.com', '7030915180', 91, NULL, NULL, NULL, NULL, NULL, NULL, 0, '$2y$10$HsgaUQLgOD/K2XknIPwQQ.gQ0yW18VnP8rg99cS6.6TCD2AKrHaNm', 1, NULL, '2023-01-06 01:26:12', '2023-01-06 01:26:12');

-- --------------------------------------------------------

--
-- Table structure for table `zclubcard`
--

CREATE TABLE `zclubcard` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `razorpay_payment_id` varchar(255) NOT NULL,
  `expiry_date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zclubcard`
--

INSERT INTO `zclubcard` (`id`, `user_id`, `price`, `razorpay_payment_id`, `expiry_date`, `created_at`, `updated_at`) VALUES
(1, 55, '799', 'pay_KQRifpmJ4jX8GR', '2023-10-06', '2022-10-06 15:33:14', '2022-10-06 10:03:14'),
(2, 61, '1', 'pay_KeEOJzecWcA9jB', '2023-11-10', '2022-11-10 11:38:06', '2022-11-10 18:38:06');

-- --------------------------------------------------------

--
-- Table structure for table `zillionenquiry`
--

CREATE TABLE `zillionenquiry` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` varchar(15) NOT NULL,
  `character` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `state` varchar(1000) NOT NULL,
  `district` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `clgname` varchar(1000) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aristotleenquiry`
--
ALTER TABLE `aristotleenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `career`
--
ALTER TABLE `career`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careerenquiry`
--
ALTER TABLE `careerenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consumerenquiry`
--
ALTER TABLE `consumerenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses_ques`
--
ALTER TABLE `courses_ques`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donateenquiry`
--
ALTER TABLE `donateenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_ans`
--
ALTER TABLE `exam_ans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_papers_grades`
--
ALTER TABLE `exam_papers_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `freecourse`
--
ALTER TABLE `freecourse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ideaenquiry`
--
ALTER TABLE `ideaenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incubationenquiry`
--
ALTER TABLE `incubationenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `innovationenquiry`
--
ALTER TABLE `innovationenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kaizen`
--
ALTER TABLE `kaizen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsviews`
--
ALTER TABLE `newsviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline`
--
ALTER TABLE `offline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ppt`
--
ALTER TABLE `ppt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectenquiry`
--
ALTER TABLE `projectenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_category`
--
ALTER TABLE `project_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainerusers`
--
ALTER TABLE `trainerusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zclubcard`
--
ALTER TABLE `zclubcard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zillionenquiry`
--
ALTER TABLE `zillionenquiry`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `aristotleenquiry`
--
ALTER TABLE `aristotleenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `career`
--
ALTER TABLE `career`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `careerenquiry`
--
ALTER TABLE `careerenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `consumerenquiry`
--
ALTER TABLE `consumerenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses_ques`
--
ALTER TABLE `courses_ques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `donateenquiry`
--
ALTER TABLE `donateenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `exam_ans`
--
ALTER TABLE `exam_ans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `exam_papers_grades`
--
ALTER TABLE `exam_papers_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `freecourse`
--
ALTER TABLE `freecourse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ideaenquiry`
--
ALTER TABLE `ideaenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `incubationenquiry`
--
ALTER TABLE `incubationenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `innovationenquiry`
--
ALTER TABLE `innovationenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kaizen`
--
ALTER TABLE `kaizen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `newsviews`
--
ALTER TABLE `newsviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offline`
--
ALTER TABLE `offline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `ppt`
--
ALTER TABLE `ppt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projectenquiry`
--
ALTER TABLE `projectenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_category`
--
ALTER TABLE `project_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trainerusers`
--
ALTER TABLE `trainerusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `zclubcard`
--
ALTER TABLE `zclubcard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zillionenquiry`
--
ALTER TABLE `zillionenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
