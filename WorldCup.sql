-- phpMyAdmin SQL Dump
-- version 4.6.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 18, 2018 at 09:03 AM
-- Server version: 5.6.28
-- PHP Version: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `WorldCup`
--

-- --------------------------------------------------------

--
-- Table structure for table `COUNTRY`
--

CREATE TABLE `COUNTRY` (
  `Name` varchar(100) NOT NULL,
  `Population` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COUNTRY`
--

INSERT INTO `COUNTRY` (`Name`, `Population`) VALUES
('Australia', 24770000),
('Brazil', 207700000),
('England', 53010000),
('France', 66900000),
('Germany', 82670000),
('Iceland', 334252),
('Russia', 144300000),
('South Africa', 55910000),
('The United States', 325700000);

-- --------------------------------------------------------

--
-- Stand-in structure for view `COUNTRYTEAMS`
-- (See below for the actual view)
--
CREATE TABLE `COUNTRYTEAMS` (
`Country` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `CUSTOMER`
--

CREATE TABLE `CUSTOMER` (
  `ID` int(255) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `CountryName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CUSTOMER`
--

INSERT INTO `CUSTOMER` (`ID`, `Name`, `Email`, `CountryName`) VALUES
(1, 'Elijah Waters', 'elijahwaters@gmail.com', 'New Zealand'),
(2, 'Sam Ball', 'samball@gmail.com', 'Australia'),
(3, 'Peter Stevens', 'peterstevens@youmail.com', 'Spain'),
(4, 'John Smith', 'johnsmith@gmail.com', 'Australia'),
(5, 'Liam Book', 'liambook@hotmail.com', 'The United States');

-- --------------------------------------------------------

--
-- Table structure for table `ELIMINATIONGAME`
--

CREATE TABLE `ELIMINATIONGAME` (
  `ID` int(255) NOT NULL,
  `Stage` varchar(100) DEFAULT NULL,
  `HomePenalties` int(255) DEFAULT NULL,
  `AwayPenalties` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ELIMINATIONGAME`
--

INSERT INTO `ELIMINATIONGAME` (`ID`, `Stage`, `HomePenalties`, `AwayPenalties`) VALUES
(1, 'Semi-Finals', 0, 0),
(2, 'Knockout', 0, 0),
(3, 'Knockout', 1, 4),
(4, 'Knockout', 0, 0),
(5, 'Final', 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `GOALS`
--

CREATE TABLE `GOALS` (
  `PlayerID` int(255) NOT NULL,
  `MatchID` int(255) NOT NULL,
  `Count` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `GOALS`
--

INSERT INTO `GOALS` (`PlayerID`, `MatchID`, `Count`) VALUES
(1, 1, 2),
(1, 3, 0),
(1, 5, 0),
(3, 1, 0),
(6, 2, 2),
(6, 3, 1),
(6, 4, 1),
(6, 7, 1),
(6, 9, 1),
(6, 10, 1),
(8, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `HOMECLUB`
--

CREATE TABLE `HOMECLUB` (
  `Name` varchar(100) NOT NULL,
  `Country` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `HOMECLUB`
--

INSERT INTO `HOMECLUB` (`Name`, `Country`) VALUES
('Brisbane Roar', 'Australia'),
('Sao Paulo', 'Brazil'),
('Manchester United', 'England'),
('Paris Saint Germain', 'France'),
('Bayern Munich', 'Germany'),
('Moscow FC', 'Russia');

-- --------------------------------------------------------

--
-- Stand-in structure for view `HOSTTEAM`
-- (See below for the actual view)
--
CREATE TABLE `HOSTTEAM` (
`Year` int(255)
,`ID` int(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `ICELANDMATCHES`
-- (See below for the actual view)
--
CREATE TABLE `ICELANDMATCHES` (
`ID` int(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `MATCH`
--

CREATE TABLE `MATCH` (
  `ID` int(255) NOT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL,
  `Stadium` varchar(100) DEFAULT NULL,
  `HomeYear` int(255) DEFAULT NULL,
  `HomeTeamID` int(255) DEFAULT NULL,
  `AwayYear` int(255) DEFAULT NULL,
  `AwayTeamID` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `MATCH`
--

INSERT INTO `MATCH` (`ID`, `Date`, `Time`, `Stadium`, `HomeYear`, `HomeTeamID`, `AwayYear`, `AwayTeamID`) VALUES
(1, '2018-02-10', '16:00:00', 'Coca Cola stadium', 2018, 8, 2018, 3),
(2, '2006-02-05', '15:00:00', 'Calcon Stadium', 2006, 7, 2006, 11),
(3, '1998-06-11', '12:00:00', 'Allianz Stadium', 1998, 6, 1998, 4),
(4, '2010-06-06', '15:00:00', 'iPhone Stadium', 2010, 12, 2010, 5),
(5, '2018-10-23', '20:00:00', 'Moscow Stadium', 2018, 1, 2018, 3),
(6, '1998-02-02', '04:00:00', 'White city stadium', 1998, 2, 1998, 4),
(7, '2018-06-11', '14:00:00', 'Billabong Stadium', 2018, 10, 2018, 1),
(8, '2018-10-01', '14:00:00', 'Moscow Stadium', 2018, 9, 2018, 3),
(9, '2014-05-05', '18:00:00', 'Nike Stadium', 2014, 14, 2014, 13),
(10, '1998-05-04', '15:00:00', 'Paris Stadium', 1998, 6, 1998, 2);

-- --------------------------------------------------------

--
-- Table structure for table `MEMBER`
--

CREATE TABLE `MEMBER` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `MEMBER`
--

INSERT INTO `MEMBER` (`ID`, `Name`) VALUES
(1, 'John Smith'),
(2, 'Billy Craig'),
(3, 'Jayson Trendo'),
(4, 'Bob Billy Bean'),
(5, 'Jackie Chan'),
(6, 'Joe Kennedy'),
(8, 'Tim Cahill'),
(10, 'Zhao Yang'),
(11, 'Wang Zong'),
(12, 'James Nguyen'),
(13, 'Pete Nonagon'),
(14, 'George Jefferies');

-- --------------------------------------------------------

--
-- Table structure for table `PLAYER`
--

CREATE TABLE `PLAYER` (
  `ID` int(255) NOT NULL,
  `Position` varchar(100) DEFAULT NULL,
  `HomeClubName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PLAYER`
--

INSERT INTO `PLAYER` (`ID`, `Position`, `HomeClubName`) VALUES
(1, 'Striker', 'Bayern Munich'),
(2, 'Left Back', 'Moscow FC'),
(3, 'Centre Defensive Midfield', 'Manchester United'),
(4, 'Left Wing', 'Moscow FC'),
(5, 'Right Back', 'Bayern Munich'),
(6, 'Centre Midfield', 'Manchester United'),
(8, 'Striker', 'Manchester United');

-- --------------------------------------------------------

--
-- Table structure for table `POOLGAME`
--

CREATE TABLE `POOLGAME` (
  `ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `POOLGAME`
--

INSERT INTO `POOLGAME` (`ID`) VALUES
(6),
(7),
(8),
(9),
(10);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Query1`
-- (See below for the actual view)
--
CREATE TABLE `Query1` (
`ID` int(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Query2`
-- (See below for the actual view)
--
CREATE TABLE `Query2` (
`ID` int(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Query3`
-- (See below for the actual view)
--
CREATE TABLE `Query3` (
`ID` int(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Query4`
-- (See below for the actual view)
--
CREATE TABLE `Query4` (
`ID` int(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Query5`
-- (See below for the actual view)
--
CREATE TABLE `Query5` (
`ID` int(255)
,`COUNT(MemberID)` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Query6`
-- (See below for the actual view)
--
CREATE TABLE `Query6` (
`Name` varchar(100)
,`IFNULL(SUM(``Count``),0)` decimal(65,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Query7`
-- (See below for the actual view)
--
CREATE TABLE `Query7` (
`MatchID` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Query8`
-- (See below for the actual view)
--
CREATE TABLE `Query8` (
`PlayerID` int(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Query9`
-- (See below for the actual view)
--
CREATE TABLE `Query9` (
`COUNTRY` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Query10`
-- (See below for the actual view)
--
CREATE TABLE `Query10` (
`playerID` int(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `SAVES`
--

CREATE TABLE `SAVES` (
  `PlayerID` int(255) NOT NULL,
  `MatchID` int(255) NOT NULL,
  `Count` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SAVES`
--

INSERT INTO `SAVES` (`PlayerID`, `MatchID`, `Count`) VALUES
(1, 1, 0),
(1, 3, 4),
(1, 5, 8),
(3, 1, 0),
(6, 2, 2),
(6, 3, 1),
(6, 4, 0),
(6, 7, 0),
(6, 9, 0),
(6, 10, 0),
(8, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `SUPPORTSTAFF`
--

CREATE TABLE `SUPPORTSTAFF` (
  `ID` int(255) NOT NULL,
  `Role` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SUPPORTSTAFF`
--

INSERT INTO `SUPPORTSTAFF` (`ID`, `Role`) VALUES
(10, 'Cleaner'),
(11, 'Water Filler'),
(12, 'Ball collector'),
(13, 'Cleaner'),
(14, 'Assistant');

-- --------------------------------------------------------

--
-- Stand-in structure for view `SUPPORTTEAMS2018`
-- (See below for the actual view)
--
CREATE TABLE `SUPPORTTEAMS2018` (
`MemberID` int(255)
,`TeamID` int(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `TEAM`
--

CREATE TABLE `TEAM` (
  `Year` int(255) NOT NULL,
  `ID` int(255) NOT NULL,
  `Country` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TEAM`
--

INSERT INTO `TEAM` (`Year`, `ID`, `Country`) VALUES
(2018, 8, 'Australia'),
(2018, 1, 'Brazil'),
(1998, 2, 'France'),
(2018, 3, 'Germany'),
(1998, 6, 'Iceland'),
(2006, 7, 'Iceland'),
(2010, 5, 'Iceland'),
(2014, 14, 'Iceland'),
(2018, 10, 'Iceland'),
(1998, 4, 'Russia'),
(2006, 11, 'Russia'),
(2010, 12, 'Russia'),
(2014, 13, 'Russia'),
(2018, 9, 'Russia');

-- --------------------------------------------------------

--
-- Table structure for table `TEAMMEMBER`
--

CREATE TABLE `TEAMMEMBER` (
  `Year` int(255) NOT NULL,
  `TeamID` int(255) NOT NULL,
  `MemberID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TEAMMEMBER`
--

INSERT INTO `TEAMMEMBER` (`Year`, `TeamID`, `MemberID`) VALUES
(1998, 4, 1),
(2018, 3, 1),
(2018, 1, 2),
(2018, 8, 3),
(1998, 6, 6),
(2006, 7, 6),
(2010, 5, 6),
(2014, 14, 6),
(2018, 10, 6),
(2018, 8, 8),
(2018, 1, 10),
(2010, 5, 11),
(2018, 1, 13),
(1998, 6, 14),
(2018, 8, 14);

-- --------------------------------------------------------

--
-- Table structure for table `TICKET`
--

CREATE TABLE `TICKET` (
  `MatchID` int(11) NOT NULL,
  `Ticket#` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `Price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TICKET`
--

INSERT INTO `TICKET` (`MatchID`, `Ticket#`, `CustomerID`, `Price`) VALUES
(3, 12, 4, 150),
(3, 29, 1, 200),
(4, 7, 4, 500),
(5, 98, 1, 400),
(8, 90, 2, 350);

-- --------------------------------------------------------

--
-- Table structure for table `TOURNAMENT`
--

CREATE TABLE `TOURNAMENT` (
  `Year` int(11) NOT NULL,
  `Country` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TOURNAMENT`
--

INSERT INTO `TOURNAMENT` (`Year`, `Country`) VALUES
(2014, 'Brazil'),
(1998, 'France'),
(2006, 'Germany'),
(2018, 'Russia'),
(2010, 'South Africa');

-- --------------------------------------------------------

--
-- Structure for view `COUNTRYTEAMS`
--
DROP TABLE IF EXISTS `COUNTRYTEAMS`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `COUNTRYTEAMS`  AS  select `t`.`Country` AS `Country` from (`TEAM` `t` join `MATCH`) where (((`t`.`Year` = `MATCH`.`HomeYear`) and (`t`.`ID` = `MATCH`.`HomeTeamID`)) or ((`t`.`Year` = `MATCH`.`AwayYear`) and (`t`.`ID` = `MATCH`.`AwayTeamID`))) group by `t`.`Year`,`t`.`ID` ;

-- --------------------------------------------------------

--
-- Structure for view `HOSTTEAM`
--
DROP TABLE IF EXISTS `HOSTTEAM`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `HOSTTEAM`  AS  select `t`.`Year` AS `Year`,`t`.`ID` AS `ID` from (`TEAM` `t` join `TOURNAMENT` `tou`) where ((`t`.`Country` = `tou`.`Country`) and (`t`.`Year` = `tou`.`Year`)) ;

-- --------------------------------------------------------

--
-- Structure for view `ICELANDMATCHES`
--
DROP TABLE IF EXISTS `ICELANDMATCHES`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ICELANDMATCHES`  AS  select `m`.`ID` AS `ID` from (`MATCH` `m` join `TEAM` `t`) where ((((`t`.`Year` = `m`.`HomeYear`) and (`t`.`ID` = `m`.`HomeTeamID`)) or ((`t`.`Year` = `m`.`AwayYear`) and (`t`.`ID` = `m`.`AwayTeamID`))) and (`t`.`Country` = 'Iceland')) ;

-- --------------------------------------------------------

--
-- Structure for view `Query1`
--
DROP TABLE IF EXISTS `Query1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Query1`  AS  select distinct `PLAYER`.`ID` AS `ID` from (`PLAYER` join `TEAMMEMBER`) where ((`PLAYER`.`ID` = `TEAMMEMBER`.`MemberID`) and (`TEAMMEMBER`.`Year` = 2018) and `PLAYER`.`ID` in (select `GOALS`.`PlayerID` from (`GOALS` join `MATCH`) where ((`GOALS`.`MatchID` = `MATCH`.`ID`) and (year(`MATCH`.`Date`) = 2018))) and (`TEAMMEMBER`.`TeamID` in (select `t`.`ID` from (`TEAM` `t` join `MATCH`) where ((`t`.`Country` = 'Australia') and (`MATCH`.`HomeTeamID` = `t`.`ID`) and (`MATCH`.`HomeYear` = 2018))) or `TEAMMEMBER`.`TeamID` in (select `t`.`ID` from (`TEAM` `t` join `MATCH`) where ((`t`.`Country` = 'Australia') and (`MATCH`.`AwayTeamID` = `t`.`ID`) and (`MATCH`.`AwayYear` = 2018))))) ;

-- --------------------------------------------------------

--
-- Structure for view `Query2`
--
DROP TABLE IF EXISTS `Query2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Query2`  AS  select `PLAYER`.`ID` AS `ID` from `PLAYER` where (`PLAYER`.`ID` in (select `GOALS`.`PlayerID` from `GOALS` group by `GOALS`.`PlayerID` having (sum(`GOALS`.`Count`) = 0)) or (not(`PLAYER`.`ID` in (select `GOALS`.`PlayerID` from `GOALS`)))) ;

-- --------------------------------------------------------

--
-- Structure for view `Query3`
--
DROP TABLE IF EXISTS `Query3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Query3`  AS  select distinct `m`.`ID` AS `ID` from ((`MATCH` `m` join `POOLGAME` `pg`) join `HOSTTEAM` `ht`) where ((`m`.`ID` = `pg`.`ID`) and (((`m`.`HomeTeamID` = `ht`.`ID`) and (`m`.`HomeYear` = `ht`.`Year`)) or ((`m`.`AwayTeamID` = `ht`.`ID`) and (`m`.`AwayYear` = `ht`.`Year`)))) ;

-- --------------------------------------------------------

--
-- Structure for view `Query4`
--
DROP TABLE IF EXISTS `Query4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Query4`  AS  select distinct `p`.`ID` AS `ID` from ((`PLAYER` `p` join `TEAMMEMBER` `tm`) join `TEAM` `t`) where ((`p`.`ID` = `tm`.`MemberID`) and (`tm`.`TeamID` = `t`.`ID`) and (`tm`.`Year` = `t`.`Year`) and (`t`.`Country` = 'Australia') and `p`.`HomeClubName` in (select `HOMECLUB`.`Name` from `HOMECLUB` where (`HOMECLUB`.`Country` = 'England'))) ;

-- --------------------------------------------------------

--
-- Structure for view `Query5`
--
DROP TABLE IF EXISTS `Query5`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Query5`  AS  select `TEAM`.`ID` AS `ID`,count(`tm`.`MemberID`) AS `COUNT(MemberID)` from (`TEAM` left join `SUPPORTTEAMS2018` `tm` on((`tm`.`TeamID` = `TEAM`.`ID`))) where (`TEAM`.`Year` = 2018) group by `TEAM`.`ID` order by count(`tm`.`MemberID`) desc ;

-- --------------------------------------------------------

--
-- Structure for view `Query6`
--
DROP TABLE IF EXISTS `Query6`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Query6`  AS  select `MEMBER`.`Name` AS `Name`,ifnull(sum(`SAVES`.`Count`),0) AS `IFNULL(SUM(``Count``),0)` from (`MEMBER` left join `SAVES` on((`MEMBER`.`ID` = `SAVES`.`PlayerID`))) where `MEMBER`.`ID` in (select `PLAYER`.`ID` from `PLAYER`) group by `MEMBER`.`ID` ;

-- --------------------------------------------------------

--
-- Structure for view `Query7`
--
DROP TABLE IF EXISTS `Query7`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Query7`  AS  select `TICKET`.`MatchID` AS `MatchID` from `TICKET` group by `TICKET`.`MatchID` having count(0) >= all (select count(0) from `TICKET` group by `TICKET`.`MatchID`) ;

-- --------------------------------------------------------

--
-- Structure for view `Query8`
--
DROP TABLE IF EXISTS `Query8`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Query8`  AS  select `GOALS`.`PlayerID` AS `PlayerID` from `GOALS` where `GOALS`.`MatchID` in (select `ELIMINATIONGAME`.`ID` from `ELIMINATIONGAME`) group by `GOALS`.`PlayerID` having sum(`GOALS`.`Count`) >= all (select sum(`GOALS`.`Count`) from `GOALS` where `GOALS`.`MatchID` in (select `ELIMINATIONGAME`.`ID` from `ELIMINATIONGAME`) group by `GOALS`.`PlayerID`) ;

-- --------------------------------------------------------

--
-- Structure for view `Query9`
--
DROP TABLE IF EXISTS `Query9`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Query9`  AS  select `COUNTRYTEAMS`.`Country` AS `COUNTRY` from `COUNTRYTEAMS` group by `COUNTRYTEAMS`.`Country` having (count(0) = (select count(0) from `TOURNAMENT`)) ;

-- --------------------------------------------------------

--
-- Structure for view `Query10`
--
DROP TABLE IF EXISTS `Query10`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Query10`  AS  select `GOALS`.`PlayerID` AS `playerID` from `GOALS` where ((`GOALS`.`Count` > 0) and `GOALS`.`MatchID` in (select `ICELANDMATCHES`.`ID` from `ICELANDMATCHES`)) group by `GOALS`.`PlayerID` having (count(0) = (select count(0) from `ICELANDMATCHES`)) ;

-- --------------------------------------------------------

--
-- Structure for view `SUPPORTTEAMS2018`
--
DROP TABLE IF EXISTS `SUPPORTTEAMS2018`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `SUPPORTTEAMS2018`  AS  select `SUPPORTSTAFF`.`ID` AS `MemberID`,`TEAMMEMBER`.`TeamID` AS `TeamID` from (`TEAMMEMBER` join `SUPPORTSTAFF`) where (`TEAMMEMBER`.`MemberID` = `SUPPORTSTAFF`.`ID`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `COUNTRY`
--
ALTER TABLE `COUNTRY`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `CUSTOMER`
--
ALTER TABLE `CUSTOMER`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ELIMINATIONGAME`
--
ALTER TABLE `ELIMINATIONGAME`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `GOALS`
--
ALTER TABLE `GOALS`
  ADD PRIMARY KEY (`PlayerID`,`MatchID`),
  ADD KEY `GOALS_MATCH_ID` (`MatchID`);

--
-- Indexes for table `HOMECLUB`
--
ALTER TABLE `HOMECLUB`
  ADD PRIMARY KEY (`Name`),
  ADD KEY `Country` (`Country`);

--
-- Indexes for table `MATCH`
--
ALTER TABLE `MATCH`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `HomeYear` (`HomeYear`,`HomeTeamID`),
  ADD KEY `AwayYear` (`AwayYear`,`AwayTeamID`);

--
-- Indexes for table `MEMBER`
--
ALTER TABLE `MEMBER`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `PLAYER`
--
ALTER TABLE `PLAYER`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `HomeClubName` (`HomeClubName`);

--
-- Indexes for table `POOLGAME`
--
ALTER TABLE `POOLGAME`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `SAVES`
--
ALTER TABLE `SAVES`
  ADD PRIMARY KEY (`PlayerID`,`MatchID`),
  ADD KEY `SAVES_MATCH_ID` (`MatchID`);

--
-- Indexes for table `SUPPORTSTAFF`
--
ALTER TABLE `SUPPORTSTAFF`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `TEAM`
--
ALTER TABLE `TEAM`
  ADD PRIMARY KEY (`Year`,`ID`),
  ADD KEY `Country` (`Country`);

--
-- Indexes for table `TEAMMEMBER`
--
ALTER TABLE `TEAMMEMBER`
  ADD PRIMARY KEY (`Year`,`TeamID`,`MemberID`),
  ADD KEY `TEAMMEMBER_MEMBER_ID` (`MemberID`);

--
-- Indexes for table `TICKET`
--
ALTER TABLE `TICKET`
  ADD PRIMARY KEY (`MatchID`,`Ticket#`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `TOURNAMENT`
--
ALTER TABLE `TOURNAMENT`
  ADD PRIMARY KEY (`Year`),
  ADD KEY `Country` (`Country`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ELIMINATIONGAME`
--
ALTER TABLE `ELIMINATIONGAME`
  ADD CONSTRAINT `ELIMINATIONGAME_MATCH_ID` FOREIGN KEY (`ID`) REFERENCES `MATCH` (`ID`);

--
-- Constraints for table `GOALS`
--
ALTER TABLE `GOALS`
  ADD CONSTRAINT `GOALS_MATCH_ID` FOREIGN KEY (`MatchID`) REFERENCES `MATCH` (`ID`),
  ADD CONSTRAINT `GOALS_PLAYER_ID` FOREIGN KEY (`PlayerID`) REFERENCES `PLAYER` (`ID`);

--
-- Constraints for table `HOMECLUB`
--
ALTER TABLE `HOMECLUB`
  ADD CONSTRAINT `HOMECLUB_COUNTRY_Name` FOREIGN KEY (`Country`) REFERENCES `COUNTRY` (`Name`);

--
-- Constraints for table `MATCH`
--
ALTER TABLE `MATCH`
  ADD CONSTRAINT `MATCH_AWAYTEAM_Year_ID` FOREIGN KEY (`AwayYear`,`AwayTeamID`) REFERENCES `TEAM` (`Year`, `ID`),
  ADD CONSTRAINT `MATCH_HOMETEAM_Year_ID` FOREIGN KEY (`HomeYear`,`HomeTeamID`) REFERENCES `TEAM` (`Year`, `ID`);

--
-- Constraints for table `PLAYER`
--
ALTER TABLE `PLAYER`
  ADD CONSTRAINT `PLAYER_HOMECLUB_Name` FOREIGN KEY (`HomeClubName`) REFERENCES `HOMECLUB` (`Name`),
  ADD CONSTRAINT `PLAYER_MEMBER_ID` FOREIGN KEY (`ID`) REFERENCES `MEMBER` (`ID`);

--
-- Constraints for table `POOLGAME`
--
ALTER TABLE `POOLGAME`
  ADD CONSTRAINT `POOLGAME_MATCH_ID` FOREIGN KEY (`ID`) REFERENCES `MATCH` (`ID`);

--
-- Constraints for table `SAVES`
--
ALTER TABLE `SAVES`
  ADD CONSTRAINT `SAVES_MATCH_ID` FOREIGN KEY (`MatchID`) REFERENCES `MATCH` (`ID`),
  ADD CONSTRAINT `SAVES_PLAYER_ID` FOREIGN KEY (`PlayerID`) REFERENCES `PLAYER` (`ID`);

--
-- Constraints for table `SUPPORTSTAFF`
--
ALTER TABLE `SUPPORTSTAFF`
  ADD CONSTRAINT `SUPPORTSTAFF_MEMBER_ID` FOREIGN KEY (`ID`) REFERENCES `MEMBER` (`ID`);

--
-- Constraints for table `TEAM`
--
ALTER TABLE `TEAM`
  ADD CONSTRAINT `TEAM_COUNTRY_Name` FOREIGN KEY (`Country`) REFERENCES `COUNTRY` (`Name`),
  ADD CONSTRAINT `TEAM_TOURNAMENT_Year` FOREIGN KEY (`Year`) REFERENCES `TOURNAMENT` (`Year`);

--
-- Constraints for table `TEAMMEMBER`
--
ALTER TABLE `TEAMMEMBER`
  ADD CONSTRAINT `TEAMMEMBER_MEMBER_ID` FOREIGN KEY (`MemberID`) REFERENCES `MEMBER` (`ID`),
  ADD CONSTRAINT `TEAMMEMBER_TEAM_Year_ID` FOREIGN KEY (`Year`,`TeamID`) REFERENCES `TEAM` (`Year`, `ID`);

--
-- Constraints for table `TICKET`
--
ALTER TABLE `TICKET`
  ADD CONSTRAINT `TICKET_CUSTOMER_ID` FOREIGN KEY (`CustomerID`) REFERENCES `CUSTOMER` (`ID`),
  ADD CONSTRAINT `TICKET_MATCH_ID` FOREIGN KEY (`MatchID`) REFERENCES `MATCH` (`ID`);

--
-- Constraints for table `TOURNAMENT`
--
ALTER TABLE `TOURNAMENT`
  ADD CONSTRAINT `TOURNAMENT_COUNTRY_Name` FOREIGN KEY (`Country`) REFERENCES `COUNTRY` (`Name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
