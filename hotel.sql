-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 24. Jun 2021 um 13:04
-- Server-Version: 10.4.14-MariaDB
-- PHP-Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `hotel`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `basicdesign`
--

CREATE TABLE `basicdesign` (
  `PackageID` varchar(20) NOT NULL,
  `BasicName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `basicpackage`
--

CREATE TABLE `basicpackage` (
  `BasicName` varchar(20) NOT NULL,
  `Description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `booking`
--

CREATE TABLE `booking` (
  `BookingId` int(11) NOT NULL,
  `CustomerId` int(11) NOT NULL,
  `Arrival` datetime DEFAULT NULL,
  `Departure` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `caretaker`
--

CREATE TABLE `caretaker` (
  `SocialSecurityNumber` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `caretakerpackageresponsibility`
--

CREATE TABLE `caretakerpackageresponsibility` (
  `SocialSecurityNumber` varchar(30) NOT NULL,
  `PackageId` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `caretakersubjectresponsibility`
--

CREATE TABLE `caretakersubjectresponsibility` (
  `SocialSecurityNumber` varchar(30) NOT NULL,
  `SubjectID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `category`
--

CREATE TABLE `category` (
  `CategoryId` int(11) NOT NULL,
  `Name` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `employee`
--

CREATE TABLE `employee` (
  `SocialSecurityNumber` varchar(30) NOT NULL,
  `Firstname` varchar(30) NOT NULL,
  `Lastname` varchar(30) NOT NULL,
  `Street` varchar(30) NOT NULL,
  `Number` varchar(12) NOT NULL,
  `PostalCode` int(11) NOT NULL,
  `City` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `guest`
--

CREATE TABLE `guest` (
  `CustomerId` int(11) NOT NULL,
  `Firstname` varchar(20) NOT NULL,
  `Lastname` varchar(30) NOT NULL,
  `Street` varchar(30) NOT NULL,
  `Number` int(11) NOT NULL,
  `City` varchar(15) NOT NULL,
  `PostalCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `luxurydesign`
--

CREATE TABLE `luxurydesign` (
  `BasicName` varchar(20) NOT NULL,
  `LuxuryName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `luxurypackage`
--

CREATE TABLE `luxurypackage` (
  `LuxuryName` varchar(20) NOT NULL,
  `Description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `package`
--

CREATE TABLE `package` (
  `PackageID` varchar(20) NOT NULL,
  `Design` varchar(50) DEFAULT NULL,
  `Price` int(11) NOT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `packagebooking`
--

CREATE TABLE `packagebooking` (
  `BookingID` int(11) NOT NULL,
  `PackageID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roomattendant`
--

CREATE TABLE `roomattendant` (
  `SocialSecurityNumber` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roombooking`
--

CREATE TABLE `roombooking` (
  `BookingId` int(11) NOT NULL,
  `RoomNumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rooms`
--

CREATE TABLE `rooms` (
  `RoomNumber` int(11) NOT NULL,
  `Persons` int(11) DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SocialSecurityNumber` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `subject`
--

CREATE TABLE `subject` (
  `SubjectID` int(11) NOT NULL,
  `Area` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `basicdesign`
--
ALTER TABLE `basicdesign`
  ADD PRIMARY KEY (`PackageID`,`BasicName`),
  ADD KEY `BasicName` (`BasicName`);

--
-- Indizes für die Tabelle `basicpackage`
--
ALTER TABLE `basicpackage`
  ADD PRIMARY KEY (`BasicName`);

--
-- Indizes für die Tabelle `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`BookingId`),
  ADD KEY `CustomerId` (`CustomerId`);

--
-- Indizes für die Tabelle `caretaker`
--
ALTER TABLE `caretaker`
  ADD PRIMARY KEY (`SocialSecurityNumber`);

--
-- Indizes für die Tabelle `caretakerpackageresponsibility`
--
ALTER TABLE `caretakerpackageresponsibility`
  ADD PRIMARY KEY (`SocialSecurityNumber`,`PackageId`),
  ADD KEY `PackageId` (`PackageId`);

--
-- Indizes für die Tabelle `caretakersubjectresponsibility`
--
ALTER TABLE `caretakersubjectresponsibility`
  ADD PRIMARY KEY (`SocialSecurityNumber`,`SubjectID`),
  ADD KEY `SubjectID` (`SubjectID`);

--
-- Indizes für die Tabelle `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryId`);

--
-- Indizes für die Tabelle `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`SocialSecurityNumber`);

--
-- Indizes für die Tabelle `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`CustomerId`);

--
-- Indizes für die Tabelle `luxurydesign`
--
ALTER TABLE `luxurydesign`
  ADD PRIMARY KEY (`BasicName`,`LuxuryName`),
  ADD KEY `LuxuryName` (`LuxuryName`);

--
-- Indizes für die Tabelle `luxurypackage`
--
ALTER TABLE `luxurypackage`
  ADD PRIMARY KEY (`LuxuryName`);

--
-- Indizes für die Tabelle `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`PackageID`);

--
-- Indizes für die Tabelle `packagebooking`
--
ALTER TABLE `packagebooking`
  ADD PRIMARY KEY (`BookingID`,`PackageID`),
  ADD KEY `PackageID` (`PackageID`);

--
-- Indizes für die Tabelle `roomattendant`
--
ALTER TABLE `roomattendant`
  ADD PRIMARY KEY (`SocialSecurityNumber`);

--
-- Indizes für die Tabelle `roombooking`
--
ALTER TABLE `roombooking`
  ADD PRIMARY KEY (`BookingId`,`RoomNumber`),
  ADD KEY `RoomNumber` (`RoomNumber`);

--
-- Indizes für die Tabelle `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`RoomNumber`),
  ADD KEY `CategoryId` (`CategoryId`),
  ADD KEY `SocialSecurityNumber` (`SocialSecurityNumber`);

--
-- Indizes für die Tabelle `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`SubjectID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `booking`
--
ALTER TABLE `booking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `category`
--
ALTER TABLE `category`
  MODIFY `CategoryId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `guest`
--
ALTER TABLE `guest`
  MODIFY `CustomerId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `subject`
--
ALTER TABLE `subject`
  MODIFY `SubjectID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `basicdesign`
--
ALTER TABLE `basicdesign`
  ADD CONSTRAINT `basicdesign_ibfk_1` FOREIGN KEY (`PackageID`) REFERENCES `package` (`PackageID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `basicdesign_ibfk_2` FOREIGN KEY (`BasicName`) REFERENCES `basicpackage` (`BasicName`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`CustomerId`) REFERENCES `guest` (`CustomerId`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `caretaker`
--
ALTER TABLE `caretaker`
  ADD CONSTRAINT `caretaker_ibfk_1` FOREIGN KEY (`SocialSecurityNumber`) REFERENCES `employee` (`SocialSecurityNumber`);

--
-- Constraints der Tabelle `caretakerpackageresponsibility`
--
ALTER TABLE `caretakerpackageresponsibility`
  ADD CONSTRAINT `caretakerpackageresponsibility_ibfk_1` FOREIGN KEY (`SocialSecurityNumber`) REFERENCES `employee` (`SocialSecurityNumber`) ON UPDATE CASCADE,
  ADD CONSTRAINT `caretakerpackageresponsibility_ibfk_2` FOREIGN KEY (`PackageId`) REFERENCES `package` (`PackageID`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `caretakersubjectresponsibility`
--
ALTER TABLE `caretakersubjectresponsibility`
  ADD CONSTRAINT `caretakersubjectresponsibility_ibfk_1` FOREIGN KEY (`SocialSecurityNumber`) REFERENCES `employee` (`SocialSecurityNumber`) ON UPDATE CASCADE,
  ADD CONSTRAINT `caretakersubjectresponsibility_ibfk_2` FOREIGN KEY (`SubjectID`) REFERENCES `subject` (`SubjectID`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `luxurydesign`
--
ALTER TABLE `luxurydesign`
  ADD CONSTRAINT `luxurydesign_ibfk_1` FOREIGN KEY (`LuxuryName`) REFERENCES `luxurypackage` (`LuxuryName`) ON UPDATE CASCADE,
  ADD CONSTRAINT `luxurydesign_ibfk_2` FOREIGN KEY (`BasicName`) REFERENCES `basicpackage` (`BasicName`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `packagebooking`
--
ALTER TABLE `packagebooking`
  ADD CONSTRAINT `packagebooking_ibfk_1` FOREIGN KEY (`BookingID`) REFERENCES `booking` (`BookingId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `packagebooking_ibfk_2` FOREIGN KEY (`PackageID`) REFERENCES `package` (`PackageID`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `roomattendant`
--
ALTER TABLE `roomattendant`
  ADD CONSTRAINT `roomattendant_ibfk_1` FOREIGN KEY (`SocialSecurityNumber`) REFERENCES `employee` (`SocialSecurityNumber`);

--
-- Constraints der Tabelle `roombooking`
--
ALTER TABLE `roombooking`
  ADD CONSTRAINT `roombooking_ibfk_1` FOREIGN KEY (`BookingId`) REFERENCES `booking` (`BookingId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `roombooking_ibfk_2` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`RoomNumber`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`CategoryId`) REFERENCES `category` (`CategoryId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `rooms_ibfk_2` FOREIGN KEY (`SocialSecurityNumber`) REFERENCES `employee` (`SocialSecurityNumber`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
