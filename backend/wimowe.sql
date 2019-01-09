-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 09. Jan 2019 um 10:37
-- Server-Version: 10.1.33-MariaDB
-- PHP-Version: 7.2.6

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
(2, ' . <p>\n            Das ist das Impressum.\n\nBei rechtlichen Angelegenheiten wenden Sie sich bitte an boris420@you-spam.com.</p><p>-- Ende --        </p> . ', 2),
(4, '<p>Das ist die erste Seite</p>', 3);

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
-- Tabellenstruktur für Tabelle `layout`
--

CREATE TABLE `layout` (
  `ID` int(11) NOT NULL,
  `cssPath` text COLLATE latin1_german1_ci NOT NULL,
  `WebsiteFontSize` int(11) NOT NULL,
  `SiteFontSize` int(11) NOT NULL,
  `TextFontSize` int(11) NOT NULL,
  `FontFamily` text COLLATE latin1_german1_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `layout`
--

INSERT INTO `layout` (`ID`, `cssPath`, `WebsiteFontSize`, `SiteFontSize`, `TextFontSize`, `FontFamily`) VALUES
(1, 'css/style_business.css', 32, 24, 16, 'sans-serif');

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
(1, 'media/eichhorn1.jpg', 'eichhorn1', 'Domi', '2018-12-08', 'image/jpeg'),
(2, 'media/eichhorn2.jpg', 'eichhorn2', 'Domi', '2018-12-08', 'image/jpeg'),
(3, 'media/eichhorn3.jpg', 'eichhorn3', 'Domi', '2018-12-08', 'image/jpeg'),
(4, 'media/SampleVideo_1280x720_1mb.mp4', 'Hase_macht_Sachen.mp4', 'Domi', '2018-12-09', 'video/mp4'),
(5, 'media/infosec_wise2016-17_final.pdf', 'infosec_wise2016-17_final.pdf', 'Domi', '2018-12-09', 'application/pdf');

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
(2, 'Impressum', 1, '1.1', 1, 'Moritz'),
(3, 'Seite 1', 1, '2', 1, 'Moritz'),
(4, 'Seite 1.1', 1, '3', 1, 'Moritz'),
(5, 'Seite 1.2', 1, '3.1', 1, 'Moritz');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `static_content_de`
--

CREATE TABLE `static_content_de` (
  `ID` int(11) NOT NULL,
  `Content` longtext CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL,
  `Tag` varchar(30) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `static_content_de`
--

INSERT INTO `static_content_de` (`ID`, `Content`, `Tag`) VALUES
(1, '<h2>Text in der Sidebar</h2>\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.   \r\n\r\nDuis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.   \r\n\r\nUt wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.   \r\n\r\nNam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.   \r\n\r\nDuis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis.   \r\n', 'sidebar'),
(3, 'Wimowe CMS 2021', 'pageTitle'),
(4, '<p>&copy; 2019 by Domi, Moe &amp; Flo</p>', 'footer');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `static_content_en`
--

CREATE TABLE `static_content_en` (
  `ID` int(11) NOT NULL,
  `Content` longtext CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL,
  `Tag` varchar(30) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `static_content_en`
--

INSERT INTO `static_content_en` (`ID`, `Content`, `Tag`) VALUES
(1, 'Wimowe CMS 2021', 'pageTitle'),
(2, '<p>&copy; 2019 by Domi, Moe &amp; Flo</p>', 'footer'),
(3, '<h2>English Sidebar</h2>\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo', 'sidebar');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `template`
--

CREATE TABLE `template` (
  `ID` int(11) NOT NULL,
  `Path` varchar(256) COLLATE latin1_german1_ci NOT NULL,
  `TemplateName` text COLLATE latin1_german1_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `template`
--

INSERT INTO `template` (`ID`, `Path`, `TemplateName`) VALUES
(1, 'pages/plainTextTemplate.php', 'ohneSidebar'),
(2, 'pages/sidebarTemplate.php', 'leftSidebar'),
(3, 'pages/rightSidebarTemplate.php', 'rightSidebar');

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
(1, 'Domi', 2, 'e9deb0d326bc4e1408fdc3948d9433ffef26be470016db53b76c384694862868'),
(2, 'Flo', 1, 'e9deb0d326bc4e1408fdc3948d9433ffef26be470016db53b76c384694862868'),
(3, 'Moe', 3, 'e9deb0d326bc4e1408fdc3948d9433ffef26be470016db53b76c384694862868'),
(6, 'Admin', 3, 'e9deb0d326bc4e1408fdc3948d9433ffef26be470016db53b76c384694862868');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user_rights`
--

CREATE TABLE `user_rights` (
  `ID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `RightLevel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `user_rights`
--

INSERT INTO `user_rights` (`ID`, `Name`, `RightLevel`) VALUES
(1, 'Author', 10),
(2, 'Editor', 20),
(3, 'Admin', 30);

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
-- Indizes für die Tabelle `layout`
--
ALTER TABLE `layout`
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
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indizes für die Tabelle `static_content_de`
--
ALTER TABLE `static_content_de`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Tag` (`Tag`);

--
-- Indizes für die Tabelle `static_content_en`
--
ALTER TABLE `static_content_en`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Tag` (`Tag`);

--
-- Indizes für die Tabelle `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Path` (`Path`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`) USING BTREE,
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indizes für die Tabelle `user_rights`
--
ALTER TABLE `user_rights`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `content_de`
--
ALTER TABLE `content_de`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- AUTO_INCREMENT für Tabelle `static_content_de`
--
ALTER TABLE `static_content_de`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `static_content_en`
--
ALTER TABLE `static_content_en`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `template`
--
ALTER TABLE `template`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `user_rights`
--
ALTER TABLE `user_rights`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
