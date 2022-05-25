-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2022 at 09:13 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `intern_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `TaskID` int(11) NOT NULL,
  `SentFromID` varchar(16) NOT NULL,
  `MSG` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `intern`
--

CREATE TABLE `intern` (
  `InternID` varchar(16) NOT NULL,
  `Password` varchar(32) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `PhoneNumber` varchar(10) NOT NULL,
  `Major` varchar(200) NOT NULL,
  `Years` int(1) NOT NULL,
  `CV` varchar(200) NOT NULL,
  `BeginDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `Result` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `intern`
--

INSERT INTO `intern` (`InternID`, `Password`, `Name`, `PhoneNumber`, `Major`, `Years`, `CV`, `BeginDate`, `EndDate`, `Result`) VALUES
('user1', '123', 'user1@gmail.com', '0123456789', 'Software Engineer', 3, 'google.com', '2022-05-20', '2022-05-26', 'None'),
('user2', '123', 'user2@gmail.com', '0123456788', 'Software Engineer', 3, 'google.com', '2022-05-20', '2022-05-26', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `ManagerID` varchar(16) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Password` varchar(32) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `PhoneNumber` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`ManagerID`, `Name`, `Password`, `Email`, `PhoneNumber`) VALUES
('admin', 'Cảnhhhhh', 'ad2', '123@gmail.com', '0123123123'),
('admin2', 'Nguyễn Văn B', 'admin', 'admin2@gmail.com', '0123456788');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `TaskID` int(11) NOT NULL,
  `InternID` varchar(16) NOT NULL,
  `ManagerID` varchar(16) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Description` varchar(2000) NOT NULL,
  `CreateDate` date NOT NULL,
  `FinishDate` date NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`TaskID`, `InternID`, `ManagerID`, `Name`, `Description`, `CreateDate`, `FinishDate`, `Status`) VALUES
(1, 'user1', 'admin', 'Task 1', 'HANBIRO VIET NAM CO., LTD\r\nNỘI DUNG YÊU CẦU BÀI TEST VÒNG 2\r\nVỊ TRÍ: THỰC TẬP SINH LẬP TRÌNH\r\na. Mô tả:\r\n- Dự án: Quản lý thực tập sinh.\r\n- Chức năng dự án:\r\n1. Quản lý Thông tin thực tập sinh:\r\n > User có thể thêm xem Danh sách thông tin thực tập viên, xem thông tin một thực tập sinh, \r\ncập nhật thông tin, xóa thực tập sinh.\r\n > Thông tin thực tập sinh cần quản lý: Tên, Số điện thoại, Chuyên ngành, Sinh viên năm mấy, \r\nCV file, ngày thực tập, Ngày kết thúc, Kết quả thực tập(Đạt, không đạt).\r\n2. Quản lý việc giao nhiệm vụ cho thực tập sinh.\r\n > User có thể Thêm, xóa, sửa nhiện nhiêm vụ, danh sách nhiện vụ, Giao nhiệm vụ cho thực tập \r\nsinh. Thực tập sinh và người giao nhiệm vụ có thể viết bình luận cho nhiệm vụ đó.\r\n > Thông tin nhiên vụ thực hiện: Tên nhiên vụ, Mô tả, ngày tạo, ngày hoàn thành, trạng thái, \r\nSinh viên thực hiện.\r\n > 3.Quản lý thông tin user.\r\n > User có thể: Thêm, xóa, sửa thông tin user và danh sách thông tin user.\r\n > Thông tin user: Tên, tên đăng nhập, mật khẩu, email, số điện thoại.\r\nb. Yêu cầu:\r\n1. Thiết kế database cho dự án này.\r\n2. Thực hiện 1 trong 3 chức năng trên. Ví dụ: Em chọn Chức năng quản lý thực tập sinh hoặc \r\nquản lý thông tin user hay quản lý việc giao nhiệm vụ cho thực tập sinh.\r\n- Front-End(Giao diện dành cho người dùng): viết bằng Reactjs.\r\n- Back-end(Phần xử lý trên server):\r\nHANBIRO VIET NAM CO., LTD\r\n* Ngôn ngữ: không yêu cầu cách em có thể dùng những ngôn ngữ mà mình đang dùng.(PHP, \r\nNodejs, Python,...).\r\n* API: Viết theo chuẩn RESTful\r\n* framework: Không yêu cầu.\r\nSau 7 ngày zip kết quả đã làm và gửi tới email vina@hanbiro.com. Tiêu đề : Tên_Kết Quả.\r\nGhi chú: Sau 7 ngày, Các em làm vẫn chưa xong thì cũng gửi những phần các em đã làm \r\nđược để bên cty đánh giá.', '2022-05-20', '2022-05-26', 'NotFinish');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `intern`
--
ALTER TABLE `intern`
  ADD PRIMARY KEY (`InternID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`ManagerID`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`TaskID`),
  ADD KEY `InternID` (`InternID`),
  ADD KEY `ManagerID` (`ManagerID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `TaskID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_3` FOREIGN KEY (`TaskID`) REFERENCES `task` (`TaskID`);

--
-- Constraints for table `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `task_ibfk_1` FOREIGN KEY (`InternID`) REFERENCES `intern` (`InternID`),
  ADD CONSTRAINT `task_ibfk_2` FOREIGN KEY (`ManagerID`) REFERENCES `manager` (`ManagerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
