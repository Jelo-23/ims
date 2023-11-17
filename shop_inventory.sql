-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2023 at 04:21 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerID` int(11) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `createdOn` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `fullName`, `mobile`, `status`, `createdOn`) VALUES
(53, 'Samilin, Christian Miguel', '09493163050', 'Active', '2023-11-07 14:43:55'),
(54, 'Perico, Angelo', '09874589765', 'Active', '2023-11-07 14:44:32'),
(55, 'Zapata, Christian lloyd', '09765425642', 'Active', '2023-11-07 14:45:29'),
(56, 'Mackie, Sotoya', '09536217384', 'Active', '2023-11-07 14:45:48'),
(57, 'Suzuki, Raven G', '09653782134', 'Active', '2023-11-07 14:46:12'),
(58, 'Ralph Roman Sedano', '09763546781', 'Active', '2023-11-07 14:46:48'),
(59, 'Ralph Lawrence Benedicto', '09756345178', 'Active', '2023-11-07 14:47:12'),
(60, 'Raiser Sot Hernandez', '0965389134', 'Active', '2023-11-07 14:48:54'),
(62, 'asd', '123132', 'Active', '2023-11-08 11:51:41'),
(101, 'QWEQE', '123123', 'Disabled', '2023-11-08 12:07:59');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `productID` int(11) NOT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `imageURL` varchar(255) NOT NULL DEFAULT 'imageNotAvailable.jpg',
  `status` varchar(255) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`productID`, `itemNumber`, `description`, `itemName`, `stock`, `imageURL`, `status`) VALUES
(2, '001', '', 'Chain Vise', 13, '1699131212_101.jpg', 'Active'),
(3, '002', '', 'Knockout Puncher', 11, '1699131365_002.jpeg', 'Active'),
(4, '003', 'Bosch', 'Speed Cutter', 0, '1699131435_003.jpeg', 'Active'),
(5, '004', 'Bosch', 'Vertical Grinder', 10, '1699131701_004.jpeg', 'Active'),
(6, '005', 'Hilti', 'Circular Saw', 8, '1699131761_005.jpg', 'Active'),
(7, '006', 'Black and Decker Stanley', 'Heat Gun', 10, '1699131808_006.jpeg', 'Active'),
(8, '007', 'Rigid', 'Telescopi Ladder', 11, '1699131859_007.jpg', 'Active'),
(9, '008', 'Stanley', 'Clipper', 22, '1699131963_008.jpeg', 'Active'),
(10, '009', 'Armour', 'Flaring Tools', 4, '1699131999_009.jpg', 'Active'),
(11, '010', 'Stanley', 'Hand Reviter', 22, '1699132102_010.jpg', 'Active'),
(12, '011', 'Rigid', 'Pipe Threader 1&quot;', 36, '1699132164_011.jpeg', 'Active'),
(13, '012', 'Rigid', 'Pipe Threader 1/2&quot;', 28, '1699132267_0122.jpg', 'Active'),
(14, '013', 'Stanley', 'Pipe Threader 10&quot;', 36, '1699132332_013.jpg', 'Active'),
(15, '014', 'Stanley', 'Pipe Wrench 12&quot;', 36, '1699132383_014.jpg', 'Active'),
(16, '015', 'Stanley', 'Pipe Wrench 18&quot;', 72, '1699132421_015.jpeg', 'Active'),
(17, '016', 'Dowel', 'Vise Clamp', 49, '1699132509_016.jpg', 'Active'),
(18, '017', 'Makita', 'Baby Grinder', 35, '1699132563_017.jpeg', 'Active'),
(19, '018', 'Bosch', 'Chipping Gun', 30, '1699132713_018.jpeg', 'Active'),
(20, '019', 'B&amp;D', 'Nibbler', 53, '1699132790_019.jpeg', 'Active'),
(21, '020', 'Stanley', 'Portable Drill', 67, '1699133169_020.jpeg', 'Active'),
(22, '021', 'Yamato', 'Portable Welding Machine', 29, '1699133217_021.jpeg', 'Active'),
(23, '022', 'Dewalt', 'Rechargable Hand Drill', 53, '1699133548_022.jpeg', 'Active'),
(24, '023', 'Ramset', 'Rotary Hammer Drill', 55, '1699133598_023.jpeg', 'Active'),
(25, '024', 'Hilti', 'Rotary Hammer Drill TE-1', 69, '1699133752_024.jpeg', 'Active'),
(26, '025', 'Makita', 'Sheer Cutter', 36, '1699133863_025.jpg', 'Active'),
(27, '026', 'ZITR', 'Threading Machine', 60, '1699134296_download.jpg', 'Active'),
(28, '027', 'Rotherberger', 'Vacuum Pump', 72, '1699134397_027.jpg', 'Active'),
(29, '028', 'Unknown', 'Industrial Fan', 33, '1699134439_028.jpeg', 'Active'),
(30, '030', 'Unknown', 'Drill Press', 50, '1699134556_030.jpg', 'Active'),
(31, '031', 'Unknown', 'Weighing Scale Digital', 81, '1699134637_031.jpg', 'Active'),
(32, '032', 'Unknown', 'Haudrolic Pipe Bender', 93, '1699134818_032.jpg', 'Active'),
(33, '033', 'Unknown', 'Scaffolding Ladder', 78, '1699134848_033.png', 'Active'),
(34, '034', 'Unknown', 'Joint Pin', 44, '1699134935_034.jpg', 'Active'),
(35, '035', 'Unknown', 'Swivel Clamp', 29, '1699134997_035.jpg', 'Active'),
(36, '036', 'Unknown', 'Caster Wheel', 53, '1699135052_036.jpg', 'Active'),
(37, '037', 'Unknown', 'Crimping tools', 62, '1699135553_037.jpg', 'Active'),
(38, '038', 'Unknown', 'Hacksaw Frame', 72, '1699135627_038.jpg', 'Active'),
(39, '039', 'Unknown', 'Open wrench', 63, '1699135679_039.png', 'Active'),
(40, '040', 'Unknown', 'Portable pressure washer', 68, '1699135803_040.jpg', 'Active'),
(41, '041', 'Unknown', 'Single Nozzle Map Torch', 79, '1699135934_041.jpg', 'Active'),
(42, '042', 'Unknown', 'Body harness', 70, '1699136174_042.jpg', 'Active'),
(43, '043', 'Unknown', 'Goggles', 60, '1699136252_043.jpg', 'Active'),
(44, '044', 'Unknown', 'Faceshield', 57, '1699136334_044.jpg', 'Active'),
(45, '045', 'Unknown', 'Visor', 30, '1699136413_045.jpg', 'Active'),
(46, '046', 'Unknown', 'Ear Plug', 42, '1699136488_046.jpg', 'Active'),
(47, '047', 'Unknown', 'Welding Mask Black', 46, '1699136585_047.jpg', 'Active'),
(48, '048', 'Unknown', 'Welding Mask Black', 46, 'imageNotAvailable.jpg', 'Active'),
(49, '049', 'Unknown', 'Welding Gloves Leather', 63, '1699136715_049.jpg', 'Active'),
(50, '050', 'Unknown', 'Welding Apron w/ sleeves', 74, '1699136812_050.jpg', 'Active'),
(51, '051', 'Unknown', 'Clear Glass', 91, '1699136874_051.jpg', 'Active'),
(52, '052', 'Unknown', 'Dark Glass', 87, '1699136967_052 (1).jpg', 'Active'),
(53, '053', 'Unknown', 'Empty Sacks', 100, '1699137050_053.jpg', 'Active'),
(54, '054', 'Unknown', 'Chalk Stones', 21, '1699145905_055.jpg', 'Active'),
(55, '055', 'Unknown', 'Welding Rod', 39, '1699145973_055.jpg', 'Active'),
(56, '056', 'Unknown', 'Cutting Disc', 69, '1699146176_056.jpg', 'Active'),
(57, '057', 'Unknown', 'Grinding Disc', 79, '1699146219_057.jpeg', 'Active'),
(58, '058', 'Unknown', 'Metal Drill Bit', 98, '1699146295_058.jpg', 'Active'),
(59, '059', 'Unknown', 'Masonry Drill bit', 98, '1699146410_059.jpg', 'Active'),
(60, '060', 'Unknown', 'Metal primer red oxide paint', 101, '1699146494_060.png', 'Active'),
(61, '061', 'Unknown', 'Quick Dry Enamel Emerald Green', 113, '1699146533_061.jpg', 'Active'),
(62, '062', 'Unknown', 'Epoxy Enamel White', 113, '1699146593_062.jpg', 'Active'),
(63, '063', 'Unknown', 'Paint Thinner', 122, '1699146669_063.jpg', 'Active'),
(64, '064', 'Unknown', 'Acrylic Thinner', 90, '1699146736_064.jpeg', 'Active'),
(65, '065', 'Unknown', 'Lacquer Thinner', 129, '1699146771_065.png', 'Active'),
(66, '066', 'Unknown', 'Paint brush', 135, '1699146803_066.png', 'Active'),
(67, '067', 'Unknown', 'Sand paper', 102, '1699146867_067.jpeg', 'Active'),
(68, '068', 'Unknown', 'Steel Brush', 110, '1699146943_068.jpg', 'Active'),
(69, '069', 'Unknown', 'Hacksaw Blade', 93, '1699147004_069.jpeg', 'Active'),
(70, '070', 'Unknown', 'Electrode Holder 300A', 74, '1699147094_070.jpg', 'Active'),
(71, '071', 'Unknown', 'Electrical Tape Black', 97, '1699147361_071.jpg', 'Active'),
(72, '072', 'Unknown', 'Rubber Tape Electric', 111, '1699147394_072.png', 'Active'),
(73, '073', 'Unknown', '3-Gang Outlet', 116, '1699147427_073.jpeg', 'Active'),
(74, '074', 'Unknown', '2-Gang Outlet', 143, '1699147460_074.jpeg', 'Active'),
(75, '075', 'Unknown', 'Male Plug', 110, '1699147491_075.jpg', 'Active'),
(76, '076', 'Unknown', 'Flourescent Bulb 40 Watts', 150, '1699147530_076.jpg', 'Active'),
(77, '077', 'Unknown', 'Flourescent Case', 160, '1699147584_077.jpg', 'Active'),
(78, '078', 'Unknown', 'Expansion Shield 1/2', 142, '1699147727_078.jpg', 'Active'),
(79, '079', 'Unknown', 'Silfus Rod', 202, '1699147868_079.jpg', 'Active'),
(80, '080', 'Unknown', 'Halogen Bulb 1000Watts', 167, '1699148320_080.jpeg', 'Active'),
(81, '081', 'Unknown', 'Fog Machine', 150, '1699148374_081.jpeg', 'Active'),
(82, '082', 'Unknown', 'Manual Hand Pump', 135, '1699148418_083.jpeg', 'Active'),
(83, '083', 'Unknown', 'H-Frame', 134, '1699148480_083.jpeg', 'Active'),
(84, '084', 'Unknown', 'Cross Brace', 122, '1699148560_084.jpeg', 'Active'),
(85, '085', 'Unknown', 'Ball Hamer', 90, '1699148605_085.jpeg', 'Active'),
(86, '086', 'Unknown', 'Volt Cutter', 98, '1699148667_086.jpeg', 'Active'),
(87, '087', 'Unknown', 'Wood Saw', 114, '1699148695_087.jpeg', 'Active'),
(88, '088', 'Unknown', 'GI Bolt 1/2 x1', 77, '1699148724_088.jpg', 'Active'),
(89, '089', 'Unknown', 'GI Nut 1/2', 115, '1699148783_089.jpeg', 'Active'),
(90, '090', 'Unknown', 'GI Washer 1/2', 128, '1699148846_090.jpeg', 'Active'),
(91, '091', 'Unknown', 'Teflon Tape', 150, '1699148874_091.jpg', 'Active'),
(92, '092', 'Unknown', 'Blue Tape Sakura', 135, '1699149019_092.jpg', 'Active'),
(93, '093', 'Unknown', 'White Tape Sakura', 162, '1699149057_093.jpg', 'Active'),
(94, '094', 'Unknown', 'Aluminum Duct Tape', 146, '1699149091_094.jpg', 'Active'),
(95, '095', 'Unknown', 'Airseal Duct Gasket Tape', 131, '1699149145_095.jpeg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchaseID` int(11) NOT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `purchaseDate` date NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `unitPrice` float NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `vendorName` varchar(255) NOT NULL DEFAULT 'Test Vendor',
  `vendorID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`purchaseID`, `itemNumber`, `purchaseDate`, `itemName`, `unitPrice`, `quantity`, `vendorName`, `vendorID`) VALUES
(39, '1', '2018-05-24', 'First Bag', 1600, 10, 'Johnson and Johnsons Co.', 3),
(40, '2', '2018-05-18', 'First Bag', 2341, 2, 'Louise Vitton Bag', 4),
(41, '4', '2018-05-07', 'Leather Bag', 1234, 3, 'Johnson and Johnsons Co.', 3),
(42, '1', '2018-05-24', 'First Bag', 345, 12, 'Louise Vitton Bag', 4),
(43, '5', '2018-05-03', 'Travel Bag', 35, 3, 'Johnson and Johnsons Co.', 3),
(44, '5', '2018-05-16', 'Travel Bag', 3000, 2, 'ABC Company', 1),
(45, '5', '2018-05-21', 'Travel Bag', 3000, 10, 'Sample Vendor 222', 2),
(46, '4', '2018-05-19', 'Leather Bag', 1200, 4, 'Johnson and Johnsons Co.', 3),
(47, '2', '2018-05-10', 'School Bag', 2, 1, 'Sample Vendor 222', 2),
(48, '1', '2018-05-12', 'Handbag', 2, 9, 'ABC Company', 1),
(50, '14', '2018-05-15', 'Hiking Bag', 1000, 5, 'Louise Vitton Bag', 4),
(51, '11', '2018-05-11', 'First Aid Bag', 1121, 1, 'ABC Company', 1),
(52, '1', '2018-05-21', 'First Bag', 1235, 2, 'Sample Vendor 222', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `saleID` int(11) NOT NULL,
  `returnDate` date DEFAULT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `customerID` int(11) NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `saleDate` date NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`saleID`, `returnDate`, `itemNumber`, `customerID`, `customerName`, `itemName`, `saleDate`, `quantity`) VALUES
(47, '2023-09-12', '003', 101, 'QWEQE', 'Speed Cutter', '2023-08-11', 3),
(48, '2023-08-20', '006', 57, 'Suzuki, Raven G', 'Heat Gun', '2023-08-11', 2),
(49, '2023-09-12', '006', 54, 'Perico, Angelo', 'Heat Gun', '2023-08-11', 1),
(50, '0000-00-00', '002', 60, 'Raiser Sot Hernandez', 'Knockout Puncher', '2023-11-17', 10),
(51, '2023-12-17', '002', 60, 'Raiser Sot Hernandez', 'Knockout Puncher', '2023-11-17', 10);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `fullName`, `password`, `status`, `email`) VALUES
(5, 'Guest', '81dc9bdb52d04dc20036dbd8313ed055', 'Active', ''),
(6, 'a', '0cc175b9c0f1b6a831c399e269772661', 'Active', ''),
(7, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Active', ''),
(8, 'pekpek', '$2y$10$ggMoVWeR0dD2ubzrRfN25uG2XxqGPzqmpagV8gOP6xTBdoD4pI/YG', 'Active', 'zapatachristian159@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendorID` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` int(11) NOT NULL,
  `phone2` int(11) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `district` varchar(30) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `createdOn` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendorID`, `fullName`, `email`, `mobile`, `phone2`, `address`, `address2`, `city`, `district`, `status`, `createdOn`) VALUES
(1, 'ABC Company', '', 2343567, 0, '80, Ground Floor, ABC Shopping Complex', '46th Avenue', 'Kolpetty', 'Colombo', 'Active', '2018-05-05 05:48:44'),
(2, 'Sample Vendor 222', 'sample@volvo.com', 99828282, 283730183, '123, A Road, B avenue', 'Pitipana', 'Nugegoda', 'Mannar', 'Disabled', '2018-05-05 06:12:02'),
(3, 'Johnson and Johnsons Co.', '', 32323, 0, '34, Malwatta Road, Kottawa', 'Pannipitiya', 'Maharagama', 'Colombo', 'Active', '2018-05-05 06:28:33'),
(4, 'Louise Vitton Bag', 'vitton@vitton.usa.com', 323234938, 0, '45, Palmer Valley, 5th Crossing', 'Delaware', 'Palo Alto', 'Batticaloa', 'Active', '2018-05-05 06:29:41'),
(6, 'Test Vendor', 'test@vendor.com', 43434, 47569937, 'Test address', 'Test address 2', 'Test City', 'Trincomalee', 'Active', '2018-05-05 06:53:14'),
(7, 'Bags Co. Exporters Ltd.', '', 1111, 0, 'Sea Road, Bambalapitiya', '', '', 'Colombo', 'Active', '2018-05-15 10:36:54'),
(8, 'New Bags Exporters', '', 191938930, 0, '123, A Road, B avenue, ', 'Gilford Crescent', 'Colpetty', 'Colombo', 'Active', '2018-05-16 12:36:53'),
(9, 'A', 'a@gmail.com', 999995, 98866767, 'manila', 'Metro Manila', 'Manila City', 'Ampara', 'Active', '2020-07-30 11:40:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchaseID`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`saleID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendorID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchaseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `saleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
