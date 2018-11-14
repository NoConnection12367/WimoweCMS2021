-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 14. Nov 2018 um 18:13
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
  `Site` varchar(30) COLLATE latin1_german1_ci NOT NULL,
  `Tag` varchar(30) COLLATE latin1_german1_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `content_de`
--

INSERT INTO `content_de` (`ID`, `Content`, `Site`, `Tag`) VALUES
(1, 'Willkommen bei Wimowe CMS 2021!\r\nGratulation, sie haben sich für das richtige Content Management System entschieden.\r\n\r\nWimowe CMS 2021 ist ein <b>futuristisches</b> und <h3>fortschrittliches</h3> CMS System.', 'Home', ''),
(2, 'Das ist das Impressum.\r\n\r\nBei rechtlichen Angelegenheiten wenden Sie sich bitte an boris420@you-spam.com.\r\n\r\n-- Ende --', 'Impressum', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `content_en`
--

CREATE TABLE `content_en` (
  `ID` int(11) NOT NULL,
  `Content` longtext COLLATE latin1_german1_ci NOT NULL,
  `Site` varchar(30) COLLATE latin1_german1_ci NOT NULL,
  `Tag` varchar(30) COLLATE latin1_german1_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `media`
--

CREATE TABLE `media` (
  `ID` int(11) NOT NULL,
  `Path` varchar(30) COLLATE latin1_german1_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `site`
--

CREATE TABLE `site` (
  `Name` varchar(65) COLLATE latin1_german1_ci NOT NULL,
  `Visible` tinyint(1) NOT NULL,
  `NavIndex` varchar(65) COLLATE latin1_german1_ci DEFAULT NULL,
  `Creator` varchar(65) COLLATE latin1_german1_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `site`
--

INSERT INTO `site` (`Name`, `Visible`, `NavIndex`, `Creator`) VALUES
('Home', 1, '1', 'Moritz'),
('Impressum', 1, '3', 'Moritz'),
('Seite 1', 1, '2', 'Moritz'),
('Seite 1.1', 1, '2.1', 'Moritz'),
('Seite 1.2', 1, '2.2', 'Moritz');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `Name` varchar(30) COLLATE latin1_german1_ci NOT NULL,
  `Gruppe` varchar(30) COLLATE latin1_german1_ci NOT NULL,
  `Passwort` varchar(30) COLLATE latin1_german1_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `content_de`
--
ALTER TABLE `content_de`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `content_en`
--
ALTER TABLE `content_en`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`Name`),
  ADD UNIQUE KEY `NavIndex` (`NavIndex`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Name`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `content_de`
--
ALTER TABLE `content_de`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `content_en`
--
ALTER TABLE `content_en`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `media`
--
ALTER TABLE `media`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
