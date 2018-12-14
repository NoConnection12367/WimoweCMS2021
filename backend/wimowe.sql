-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 14. Dez 2018 um 11:26
-- Server-Version: 10.1.36-MariaDB
-- PHP-Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `wimowe`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `content_de`
--

CREATE TABLE `content_de` (
  `ID` int(11) NOT NULL,
  `Content` longtext COLLATE latin1_german1_ci NOT NULL,
  `SiteID` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `content_de`
--

INSERT INTO `content_de` (`ID`, `Content`, `SiteID`) VALUES
(1, 'Willkommen bei Wimowe CMS 2021!\r\nGratulation, sie haben sich für das richtige Content Management System entschieden.\r\n\r\nWimowe CMS 2021 ist ein <b>futuristisches</b> und <h3>fortschrittliches</h3> CMS System.', 1),
(2, 'Das ist das Impressum.\r\n\r\nBei rechtlichen Angelegenheiten wenden Sie sich bitte an boris420@you-spam.com.\r\n\r\n-- Ende --', 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `content_en`
--

CREATE TABLE `content_en` (
  `ID` int(11) NOT NULL,
  `Content` longtext COLLATE latin1_german1_ci NOT NULL,
  `SiteID` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `media`
--

CREATE TABLE `media` (
  `ID` int(11) NOT NULL,
  `Path` varchar(50) COLLATE latin1_german1_ci DEFAULT NULL,
  `Titel` varchar(30) COLLATE latin1_german1_ci NOT NULL,
  `Autor` varchar(30) COLLATE latin1_german1_ci NOT NULL,
  `Datum` date NOT NULL,
  `Format` varchar(30) COLLATE latin1_german1_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `media`
--

INSERT INTO `media` (`ID`, `Path`, `Titel`, `Autor`, `Datum`, `Format`) VALUES
(1, 'media/eichhorn1.jpg', 'eichhorn1', 'Domi', '2018-12-08', 'image'),
(2, 'media/eichhorn2.jpg', 'eichhorn2', 'Domi', '2018-12-08', 'image'),
(3, 'media/eichhorn3.jpg', 'eichhorn3', 'Domi', '2018-12-08', 'image'),
(4, 'media/SampleVideo_1280x720_1mb.mp4', 'Hase_macht_Sachen.mp4', 'Domi', '2018-12-09', 'video'),
(5, 'media/infosec_wise2016-17_final.pdf', 'infosec_wise2016-17_final.pdf', 'Domi', '2018-12-09', 'pdf');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `site`
--

CREATE TABLE `site` (
  `ID` int(11) NOT NULL,
  `Name` varchar(65) COLLATE latin1_german1_ci NOT NULL,
  `Visible` tinyint(1) NOT NULL,
  `NavIndex` varchar(65) COLLATE latin1_german1_ci DEFAULT NULL,
  `TemplateID` int(9) UNSIGNED NOT NULL,
  `Creator` varchar(65) COLLATE latin1_german1_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `site`
--

INSERT INTO `site` (`ID`, `Name`, `Visible`, `NavIndex`, `TemplateID`, `Creator`) VALUES
(1, 'Home', 1, '1', 2, 'Moritz'),
(2, 'Impressum', 1, '3', 1, 'Moritz'),
(3, 'Seite 1', 1, '2', 1, 'Moritz'),
(4, 'Seite 1.1', 1, '2.1', 1, 'Moritz'),
(5, 'Seite 1.2', 1, '2.2', 1, 'Moritz');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `Username` varchar(30) COLLATE latin1_german1_ci NOT NULL,
  `GroupID` int(11) NOT NULL,
  `PasswordHash` varchar(70) COLLATE latin1_german1_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`ID`, `Username`, `GroupID`, `PasswordHash`) VALUES
(1, 'Domi', 2, 'E9DEB0D326BC4E1408FDC3948D9433FFEF26BE470016DB53B76C384694862868'),
(2, 'Flo', 1, 'E9DEB0D326BC4E1408FDC3948D9433FFEF26BE470016DB53B76C384694862868'),
(3, 'Moe', 3, 'E9DEB0D326BC4E1408FDC3948D9433FFEF26BE470016DB53B76C384694862868');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `content_de`
--
ALTER TABLE `content_de`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `SiteID` (`SiteID`);

--
-- Indizes für die Tabelle `content_en`
--
ALTER TABLE `content_en`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Site` (`SiteID`);

--
-- Indizes für die Tabelle `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Name` (`Name`),
  ADD UNIQUE KEY `NavIndex` (`NavIndex`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`) USING BTREE,
  ADD UNIQUE KEY `Username` (`Username`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `content_de`
--
ALTER TABLE `content_de`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `content_en`
--
ALTER TABLE `content_en`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `media`
--
ALTER TABLE `media`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
