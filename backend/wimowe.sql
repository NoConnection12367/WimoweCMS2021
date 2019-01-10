-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 10. Jan 2019 um 16:29
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
(1, '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p><img src=\"http://localhost/WimoweCMS2021/backend/media/738x415_f5f5f5.jpg\" alt=\"\" width=\"100%\" height=\"100%\" /></p>\n<p><strong>Im Handel hat die VR-Zukunft bereits begonnen</strong></p>\n<p>Der Handel sucht nach Einkaufserlebnissen und gerade dort wird sich die VR-Technik in naher Zukunft am ehesten etablieren. Zurzeit sind VR-Anwendungen noch eher auf Messen oder in den gro&szlig;en Einkaufszentren als besondere Attraktion zu finden, aber der Weg ins Gesch&auml;ft oder in den Internet-Shop ist vorgezeichnet. Wenn heute noch die Angebote von als Kacheln abgebildet werden, so werden Sie morgen m&ouml;glicherweise durch ein virtuelles Kaufhaus gehen und die Mode als Inszenierung betrachten. Der M&ouml;belh&auml;ndler \"Cairo\" bietet schon jetzt unter \"3d.cairo.de\" einen virtuellen Rundgang durch seinen Design-Store in N&uuml;rnberg. Bei Ikea k&ouml;nnen die Kunden in ausgew&auml;hlten Einrichtungsh&auml;usern interaktiv durch verschiedene Wohnungen wandeln.</p>\n<p><strong>Brillenvergleich</strong></p>\n<table style=\"border-collapse: collapse; width: 100%; height: 72px;\" border=\"1\">\n<tbody>\n<tr style=\"height: 18px;\">\n<td style=\"width: 13.8962%; height: 18px;\">Modell</td>\n<td style=\"width: 28.9797%; height: 18px;\">Oculus Rift</td>\n<td style=\"width: 25.8137%; height: 18px;\">HTC VIVE</td>\n<td style=\"width: 31.3104%; height: 18px;\">Playstation VR</td>\n</tr>\n<tr style=\"height: 18px;\">\n<td style=\"width: 13.8962%; height: 18px;\">Hersteller</td>\n<td style=\"width: 28.9797%; height: 18px;\">Oculus VR</td>\n<td style=\"width: 25.8137%; height: 18px;\">HTC</td>\n<td style=\"width: 31.3104%; height: 18px;\">Sony</td>\n</tr>\n<tr style=\"height: 18px;\">\n<td style=\"width: 13.8962%; height: 18px;\">Display</td>\n<td style=\"width: 28.9797%; height: 18px;\">2 x 90mm OLED</td>\n<td style=\"width: 25.8137%; height: 18px;\">2 x OLED</td>\n<td style=\"width: 31.3104%; height: 18px;\">5,7-Zoll RGB OLED</td>\n</tr>\n<tr style=\"height: 18px;\">\n<td style=\"width: 13.8962%; height: 18px;\">Release</td>\n<td style=\"width: 28.9797%; height: 18px;\">M&auml;rz 2016</td>\n<td style=\"width: 25.8137%; height: 18px;\">April 2016</td>\n<td style=\"width: 31.3104%; height: 18px;\">Okt. 2016</td>\n</tr>\n</tbody>\n</table>\n</body>\n</html>', 1),
(2, '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<h3>Haftungsbeschr&auml;nkung f&uuml;r externe Links</h3>\n<p>Unsere Webseite enth&auml;lt Links auf externe Webseiten Dritter. Auf die Inhalte dieser direkt oder indirekt verlinkten Webseiten haben wir keinen Einfluss. Daher k&ouml;nnen wir f&uuml;r die &bdquo;externen Links&ldquo; auch keine Gew&auml;hr auf Richtigkeit der Inhalte &uuml;bernehmen. F&uuml;r die Inhalte der externen Links sind die jeweilige Anbieter oder Betreiber (Urheber) der Seiten verantwortlich.</p>\n<p>Die externen Links wurden zum Zeitpunkt der Linksetzung auf eventuelle Rechtsverst&ouml;&szlig;e &uuml;berpr&uuml;ft und waren im Zeitpunkt der Linksetzung frei von rechtswidrigen Inhalten. Eine st&auml;ndige inhaltliche &Uuml;berpr&uuml;fung der externen Links ist ohne konkrete Anhaltspunkte einer Rechtsverletzung nicht m&ouml;glich. Bei direkten oder indirekten Verlinkungen auf die Webseiten Dritter, die au&szlig;erhalb unseres Verantwortungsbereichs liegen, w&uuml;rde eine Haftungsverpflichtung ausschlie&szlig;lich in dem Fall nur bestehen, wenn wir von den Inhalten Kenntnis erlangen und es uns technisch m&ouml;glich und zumutbar w&auml;re, die Nutzung im Falle rechtswidriger Inhalte zu verhindern.</p>\n<p>Diese Haftungsausschlusserkl&auml;rung gilt auch innerhalb des eigenen Internetauftrittes &bdquo;Name Ihrer Domain&ldquo; gesetzten Links und Verweise von Fragestellern, Blogeintr&auml;gern, G&auml;sten des Diskussionsforums. F&uuml;r illegale, fehlerhafte oder unvollst&auml;ndige Inhalte und insbesondere f&uuml;r Sch&auml;den, die aus der Nutzung oder Nichtnutzung solcherart dargestellten Informationen entstehen, haftet allein der Diensteanbieter der Seite, auf welche verwiesen wurde, nicht derjenige, der &uuml;ber Links auf die jeweilige Ver&ouml;ffentlichung lediglich verweist.</p>\n<p>Werden uns Rechtsverletzungen bekannt, werden die externen Links durch uns unverz&uuml;glich entfernt.</p>\n</body>\n</html>', 2),
(4, '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p><strong>23.12.2018:</strong></p>\n<p>Mit der ersten Rift-Brille hat Oculus einen wahren Boom f&uuml;r Virtual Reality eingel&auml;utet. Mittlerweile haben diverse andere Virtual-Reality-Hersteller nachgezogen und die Forschung f&uuml;r Brillen, Controller, Software, Spiele und Filme intensiviert.</p>\n<p>&nbsp;</p>\n<p><strong>11.01.2018:</strong></p>\n<p>Dabei verfolgen die Firmen unterschiedliche VR-Ans&auml;tze: W&auml;hrend Oculus zusammen mit Samsung an Mobil-Ger&auml;ten arbeitet und bei seinen eigenen Controllern nat&uuml;rliche Handbewegungen imitieren will, bauen HTC und Valve mit der Vive an einem Holodeck f&uuml;rs Wohnzimmer mit entsprechend hohem Platzbedarf. Sony setzt bei der Playstation VR wiederum auf eine g&uuml;nstige Peripherie f&uuml;r die Playstation 4 und unterh&auml;lt hochrangige Studios f&uuml;r filmreife VR-Spiele.</p>\n</body>\n</html>', 3),
(5, '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n\n</body>\n</html>', 8),
(7, '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<h3>Zeitgleich mit Oculus Go schickten Google und Lenovo im Mai gemeinsam die autarke Daydream Mirage Solo Brille ins Rennen. Im Vergleich zu Oculus Go bietet es technisch gesehen viel mehr, hat aber eine entscheidende Schwachstelle.</h3>\n<p><img src=\"http://localhost/WimoweCMS2021/backend/media/Lenovo_Mirage_Solo.jpg\" alt=\"\" width=\"100%\" height=\"100%\" /></p>\n<p>Lenovos Mirage Solo macht Spa&szlig;. Und zwar richtig. Brille anschalten, aufsetzen, schon ist man drin in einer VR-Szene und kann darin herumlaufen. So einfach war es noch nie, raumf&uuml;llende VR zu erleben.</p>\n<p>Und genau das ist der gro&szlig;e Pluspunkt gegen&uuml;ber Oculus&rsquo; Go-Brille. Es macht einen gro&szlig;en Unterschied, ob man festgenagelt an einen Punkt im Raum nur den Kopf drehen und sich distanziert umsehen kann. Oder ob man wie im echten Leben durch die (virtuelle) Welt spaziert und sich alles aus der N&auml;he anschaut. Das funktioniert sogar drau&szlig;en.</p>\n</body>\n</html>', 6),
(10, '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<h3>Auch 2018 ist die Vuze-Kamera von Humaneyes noch immer die einzige kompakte 3D-360-Grad-Kamera am Markt. Mit Vuze+ kam Anfang des Jahres ein Upgrade auf den Markt. Der Test zeigt, ob und was sich getan hat.</h3>\n<p><img src=\"http://localhost/WimoweCMS2021/backend/media/vuze_plus_test_review.jpg\" alt=\"\" width=\"100%\" height=\"100%\" /></p>\n<p><strong>Die Sache mit der Naht</strong></p>\n<p>F&uuml;r Laien &uuml;bernimmt die kostenlos mitgelieferte Vuze-Studio-Software das komplexe 3D-Stitching &ndash; das m&ouml;glichst nahtlose Zusammenf&uuml;hren der einzelnen Videobilder &ndash; weitgehend automatisch, allerdings mehr schlecht als recht: In fast allen Videos und Fotos sind deutliche &Uuml;berg&auml;nge an den Nahtstellen zu erkennen, an denen das Bild von einer Linse zur n&auml;chsten &uuml;bergeht. Diese sichtbaren &Uuml;berg&auml;nge betreffen sowohl den Bildinhalt an sich als auch den Kontrast je nach Helligkeit und Lichteinfall.</p>\n<p>Nahtstellen in einem 360-Grad-Video sind kein Vuze-exklusives Problem. Aber die Vuze-Kamera ist besonders anf&auml;llig f&uuml;r sichtbare &Uuml;berg&auml;nge, da es eben komplizierter ist, die Aufnahmen von acht Einzellinsen zu einem 360-Grad-3D-Bild zusammenzuf&uuml;hren, als nur zwei 180-Grad-H&auml;lften zu einem 2D-Bild zu vern&auml;hen, wie es bei vielen anderen 360-Grad-Kompaktkameras der Fall ist.</p>\n<p>Zwar gibt es bei der Nachbearbeitung einfach zu handhabende Einstellm&ouml;glichkeiten f&uuml;r Naht und Kontrast pro Linse. Aber eine komplett zerrissene Aufnahme mit deutlichen Kontrastunterschieden kann man damit &ndash; zumindest nach meiner Erfahrung &ndash; nicht retten. Jedenfalls nicht mit den Bordmitteln, die Vuze liefert. Dazu sp&auml;ter mehr.</p>\n<p>&nbsp;</p>\n<p><strong>Viele Bildfehler k&ouml;nnen bei der Aufnahme vermieden werden</strong></p>\n<p>Am besten ist es daher, die potenziellen Nahtstellen schon vor der Aufnahme zu ber&uuml;cksichtigen und die Kamera entsprechend zu positionieren. Wichtige Objekte sollten frontal im Blick einer Doppelkamera und niemals an den Ecken platziert sein. Au&szlig;erdem sollte man circa einen Meter Abstand zum Motiv wahren. Auf Aufnahmen aus der Hand sollte man ohnehin verzichten, wenn man f&uuml;r die VR-Brille filmt.</p>\n<p>Beachtet man diese Regeln, gelingen mit der Vuze-Kamera bei gutem Licht sch&ouml;ne 360-Grad-Aufnahmen mit toller Tiefenwirkung.</p>\n<p>F&uuml;r anspruchsvolle 360-Filmer interessant: die Einzelbilder der insgesamt acht Linsen sollen sich jetzt st&auml;rker &uuml;berlagern. Profis k&ouml;nnen ihre gewohnte Software wie Premiere oder Mistika VR einsetzen und wahrscheinlich deutlich bessere Stitching-Ergebnisse erzielen, als es mir als Laie mit der Standard-Software m&ouml;glich ist.</p>\n</body>\n</html>', 7),
(12, '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p><strong>Was taugt der neue HTC Wireless Adapter f&uuml;r Vive und Vive Pro? Ich habe ihn getestet und schildere euch meine Eindr&uuml;cke.</strong></p>\n<p><strong><img src=\"http://localhost/WimoweCMS2021/backend/media/vive_wireless_black.jpg\" alt=\"\" width=\"100%\" height=\"100%\" /></strong></p>\n<p><strong>Installationsaufwand</strong></p>\n<p>Die Installation l&auml;uft in drei Schritten ab: Zuerst baut ihr die PCIe-WiGig-Karte in den Rechner ein und schlie&szlig;t das Antennenkabel an. Der Einbau der Karte ist nicht kompliziert, d&uuml;rfte aber reichen, um PC-Laien abzuschrecken.</p>\n<p>Nach dem Einbau befestigt ihr das Wireless-Modul an der VR-Brille und installiert die Treiber. Dann kann es losgehen. Alle Schritte sind gut verst&auml;ndlich auf HTCs Setup Website dargestellt.</p>\n<p>&nbsp;</p>\n<p>Die Installation dauert insgesamt rund 15 Minuten und ist etwas einfacher als bei der Wireless-Alternative von Tpcast (Test). Bei der muss zwar keine Karte in den PC eingebaut, daf&uuml;r aber ein Router konfiguriert und platziert sowie eine Sendebox aufgebaut werden.</p>\n<p><img src=\"http://localhost/WimoweCMS2021/backend/media/vive_wireless_setup.png\" alt=\"\" width=\"100%\" height=\"100%\" /></p>\n</body>\n</html>', 9),
(18, '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<h3>Social-VR-App &ldquo;Rec Room&rdquo; knackt Eine-Million-Marke</h3>\n<p><img style=\"float: left; margin-right: 10px;\" src=\"http://localhost/WimoweCMS2021/backend/media/rec_room_offiziell.jpg\" alt=\"\" width=\"50%\" height=\"50%\" /></p>\n<p>In Rec Room ist der Name Programm: Rec ist die Abk&uuml;rzung f&uuml;r &ldquo;Recreation&rdquo;. Das bedeutet so viel wie Erholung, Freizeit &ndash; eine gute Zeit haben. Die Social-VR-App gl&auml;nzt im Vergleich zu &auml;hnlichen Anwendungen mit einer gewissen Lebendigkeit.</p>\n<p>&nbsp;</p>\n<p>Nutzer treffen sich in der Lobby, unterhalten sich oder bl&ouml;deln mit den zahlreichen Gegenst&auml;nden herum. Alternativ verziehen sie sich in eines der zahlreichen Minispiele, die wie die App kostenlos nutzbar sind, oder bauen ihre eigenen R&auml;ume. &Uuml;ber 400.000 solcher R&auml;ume soll es schon geben, die beliebtesten davon wurden mehr als 300.000 Mal besucht.</p>\n<p>&nbsp;</p>\n</body>\n</html>', 5);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `content_en`
--

CREATE TABLE `content_en` (
  `ID` int(11) NOT NULL,
  `Content` longtext COLLATE latin1_german1_ci NOT NULL,
  `SiteID` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `content_en`
--

INSERT INTO `content_en` (`ID`, `Content`, `SiteID`) VALUES
(1, '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<h3><strong>At the same time as Oculus Go, Google and Lenovo jointly sent the self-sufficient Daydream Mirage Solo glasses into the race in May. Compared to Oculus Go, it offers much more in technical terms, but has a decisive weak point.</strong></h3>\n<p><img src=\"http://localhost/WimoweCMS2021/backend/media/Lenovo_Mirage_Solo.jpg\" alt=\"\" width=\"100%\" height=\"100%\" /></p>\n<p>Lenovo\'s Mirage Solo is fun. And it\'s real. Turn on your glasses, put them on and you\'re already in a VR scene and can walk around in them. It has never been so easy to experience room-filling VR.</p>\n<p>&nbsp;</p>\n<p>And that\'s exactly the big advantage over Oculus\' Go glasses. It makes a big difference if you can only turn your head and look around at a distance when nailed to a point in the room. Or whether you can walk through the (virtual) world like in real life and take a close look at everything. This even works outside.</p>\n</body>\n</html>', 6),
(2, '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<h3>What is the new HTC Wireless Adapter for Vive and Vive Pro? I tested it and tell you my impressions.</h3>\n<p><strong><img src=\"http://localhost/WimoweCMS2021/backend/media/vive_wireless_black.jpg\" alt=\"\" width=\"100%\" height=\"100%\" /></strong></p>\n<h3><strong>Installation effort</strong></h3>\n<p>The installation is carried out in three steps: First you install the PCIe-WiGig card into the computer and connect the antenna cable. The installation of the card is not complicated, but should be sufficient to deter PC laymen.</p>\n<p>After the installation you attach the wireless module to the VR glasses and install the drivers. Then you are ready to go. All steps are clearly explained on HTC\'s setup website.</p>\n<p>The installation takes about 15 minutes and is a bit easier than the wireless alternative of Tpcast (Test). It does not require a card to be installed in the PC, but a router needs to be configured and placed and a transmitter box set up.</p>\n<p><img src=\"http://localhost/WimoweCMS2021/backend/media/vive_wireless_setup.png\" alt=\"\" width=\"100%\" height=\"100%\" /></p>\n<p>&nbsp;</p>\n</body>\n</html>', 9),
(3, '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<h3>Even in 2018, the Humaneyes Vuze camera is still the only compact 3D 360-degree camera on the market. With Vuze+, an upgrade came onto the market at the beginning of the year. The test shows whether and what has changed.</h3>\n<p><img src=\"http://localhost/WimoweCMS2021/backend/media/vuze_plus_test_review.jpg\" alt=\"\" width=\"100%\" height=\"100%\" /></p>\n<p><strong>The thing with the seam</strong></p>\n<p>For laymen, the free Vuze Studio software included in the package takes care of the complex 3D stitching - the seamless merging of the individual video images - largely automatically, but more badly than right: In almost all videos and photos, clear transitions can be seen at the seams where the image passes from one lens to the next. These visible transitions affect both the image content itself and the contrast depending on brightness and incidence of light.</p>\n<p>Seams in a 360-degree video are not an exclusive vuze problem. But the Vuze camera is particularly susceptible to visible transitions, because it is more complicated to combine the shots of eight individual lenses into a 360-degree 3D image than to sew only two 180-degree halves into a 2D image, as is the case with many other 360-degree compact cameras.</p>\n<p>Although there are easy to use adjustment options for seam and contrast per lens during post-processing, there are also a number of other options that can be used. But you can\'t save a completely torn shot with clear differences in contrast - at least in my experience. At least not with the on-board equipment that Vuze delivers. More about that later.</p>\n<p>&nbsp;</p>\n<p><strong>Many image errors can be avoided during the recording.</strong></p>\n<p>It is therefore best to consider the potential seams before taking the picture and to position the camera accordingly. Important objects should be placed frontally in the view of a double camera and never at the corners. In addition, you should keep about one meter away from the subject. You should avoid taking pictures from your hand anyway when filming for VR glasses.</p>\n<p>If you follow these rules, the Vuze camera will take nice 360-degree shots with a great depth effect in good light.</p>\n<p>Interesting for demanding 360 filmmakers: the individual images of the eight lenses should now overlap more strongly. Professionals can use their usual software such as Premiere or Mistika VR and probably achieve much better stitching results than is possible for me as a layman with the standard software.</p>\n</body>\n</html>', 7),
(4, '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<h3>Limitation of liability for external links</h3>\n<p>Our website contains links to external websites of third parties. We have no influence on the contents of these directly or indirectly linked websites. Therefore, we cannot guarantee the correctness of the contents of the \"external links\". The respective providers or operators (authors) of the pages are responsible for the contents of the external links.</p>\n<p>The external links were checked for possible violations of the law at the time the links were created and were free of illegal content at the time the links were created. It is not possible to constantly check the content of external links without concrete evidence of a violation of the law. In the case of direct or indirect links to the websites of third parties which lie outside our area of responsibility, liability would only arise in the event that we become aware of the content and it would be technically possible and reasonable for us to prevent use in the event of illegal content.</p>\n<p>This disclaimer also applies within our own website \"Name of your domain\" set links and references from questioners, bloggers, guests of the discussion forum. For illegal, incorrect or incomplete contents and in particular for damages arising from the use or non-use of such information, only the service provider of the page to which reference is made is liable, not the person who merely refers to the respective publication via links.</p>\n<p>If we become aware of any legal infringements, we will remove the external links immediately.</p>\n</body>\n</html>', 2),
(5, '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<h3 style=\"font-family: sans-serif;\">Social-VR-App &ldquo;Rec Room&rdquo; knackt Eine-Million-Marke</h3>\n<p><img style=\"float: left; margin-right: 10px;\" src=\"http://localhost/WimoweCMS2021/backend/media/rec_room_offiziell.jpg\" alt=\"\" width=\"50%\" height=\"50%\" /></p>\n<p>In Rec Room the name says it all: Rec is the abbreviation for \"Recreation\". That means as much as recreation, free time - having a good time. The Social-VR-App shines with a certain liveliness compared to similar applications.</p>\n<p>&nbsp;</p>\n<p>Users meet in the lobby, chat or fool around with the numerous objects. Alternatively, they can play one of the numerous mini-games, which, like the app, can be used free of charge, or build their own rooms. Over 400,000 such rooms are said to already exist, the most popular of which have been visited more than 300,000 times.</p>\n</body>\n</html>', 5),
(6, '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p><strong>23.12.2018:</strong></p>\n<p>With the first rift glasses Oculus has heralded a real boom for Virtual Reality. In the meantime, various other virtual reality manufacturers have followed suit and intensified research into glasses, controllers, software, games and films.</p>\n<p>&nbsp;</p>\n<p><strong>11.01.2018:</strong></p>\n<p>The companies pursue different VR approaches: While Oculus is working together with Samsung on mobile devices and wants to imitate natural hand movements in its own controllers, HTC and Valve are building Vive, a holodeck for the living room with a correspondingly high space requirement. For the Playstation VR, Sony again relies on low-cost peripherals for the Playstation 4 and maintains high-ranking studios for VR games ready for filming.</p>\n</body>\n</html>', 3),
(7, '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p><strong><img src=\"http://localhost/WimoweCMS2021/backend/media/738x415_f5f5f5.jpg\" alt=\"\" width=\"100%\" height=\"100%\" /></strong></p>\n<p><strong>The VR future has already begun in the retail sector</strong></p>\n<p>Retailers are looking for shopping experiences, and this is where VR technology is most likely to establish itself in the near future. At present, VR applications are more likely to be found at trade fairs or in large shopping centres as a special attraction, but the route to the shop or to the Internet shop is clearly marked out. If today\'s offers are still displayed as tiles, then tomorrow you may be walking through a virtual department store and looking at fashion as a staging. The furniture retailer \"Cairo\" is already offering a virtual tour of its design store in Nuremberg at \"3d.cairo.de\". At Ikea, customers can walk interactively through various apartments in selected furniture stores.</p>\n<p>&nbsp;</p>\n<p><strong>Glasses comparison</strong></p>\n<table style=\"border-collapse: collapse; width: 100%; height: 72px;\" border=\"1\">\n<tbody>\n<tr style=\"height: 18px;\">\n<td style=\"width: 13.8962%; height: 18px;\">Modell</td>\n<td style=\"width: 28.9797%; height: 18px;\">Oculus Rift</td>\n<td style=\"width: 25.8137%; height: 18px;\">HTC VIVE</td>\n<td style=\"width: 31.3104%; height: 18px;\">Playstation VR</td>\n</tr>\n<tr style=\"height: 18px;\">\n<td style=\"width: 13.8962%; height: 18px;\">Hersteller</td>\n<td style=\"width: 28.9797%; height: 18px;\">Oculus VR</td>\n<td style=\"width: 25.8137%; height: 18px;\">HTC</td>\n<td style=\"width: 31.3104%; height: 18px;\">Sony</td>\n</tr>\n<tr style=\"height: 18px;\">\n<td style=\"width: 13.8962%; height: 18px;\">Display</td>\n<td style=\"width: 28.9797%; height: 18px;\">2 x 90mm OLED</td>\n<td style=\"width: 25.8137%; height: 18px;\">2 x OLED</td>\n<td style=\"width: 31.3104%; height: 18px;\">5,7-Zoll RGB OLED</td>\n</tr>\n<tr style=\"height: 18px;\">\n<td style=\"width: 13.8962%; height: 18px;\">Release</td>\n<td style=\"width: 28.9797%; height: 18px;\">M&auml;rz 2016</td>\n<td style=\"width: 25.8137%; height: 18px;\">April 2016</td>\n<td style=\"width: 31.3104%; height: 18px;\">Okt. 2016</td>\n</tr>\n</tbody>\n</table>\n</body>\n</html>', 1);

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
(1, 'css/style.css', 32, 24, 16, 'sans-serif');

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
(4, 'media/SampleVideo_1280x720_1mb.mp4', 'Hase_macht_Sachen.mp4', 'Domi', '2018-12-09', 'video/mp4'),
(5, 'media/infosec_wise2016-17_final.pdf', 'infosec_wise2016-17_final.pdf', 'Domi', '2018-12-09', 'application/pdf'),
(6, 'media/738x415_f5f5f5.jpg', '738x415_f5f5f5.jpg', 'Domi', '2019-01-10', 'image/jpeg'),
(7, 'media/Lenovo_Mirage_Solo.jpg', 'Lenovo_Mirage_Solo.jpg', 'Domi', '2019-01-10', 'image/jpeg'),
(8, 'media/vive_wireless_setup.png', 'vive_wireless_setup.png', 'Domi', '2019-01-10', 'image/png'),
(9, 'media/vive_wireless_black.jpg', 'vive_wireless_black.jpg', 'Domi', '2019-01-10', 'image/jpeg'),
(10, 'media/vuze_plus_test_review.jpg', 'vuze_plus_test_review.jpg', 'Domi', '2019-01-10', 'image/jpeg');

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
(2, 'Impressum', 1, '6', 1, 'Moritz'),
(3, 'News', 1, '2', 2, 'Moritz'),
(4, 'Podcast', 0, '4', 2, 'Moritz'),
(5, 'Apps', 1, '5', 3, 'Moritz'),
(6, 'HTC Vive', 1, '3.1', 2, 'Peter'),
(7, 'Vuze Plus', 1, '3.2', 2, 'Peter'),
(8, 'Tests', 1, '3', 1, 'Peter'),
(9, 'Vive Wireless Adapter', 1, '3.3', 2, 'Peter');

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
(1, '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<h3>Anzeigen</h3>\n<p><strong>Werbung</strong></p>\n<p>Wir bieten Unternehmen und Agenturen an, Werbeanzeigen und Jobangebote auf VRODO zu schalten. Bei Interesse schreiben Sie bitte an hallo(at)vrodo.de.</p>\n<p>&nbsp;</p>\n<p><strong>VR was ist das?</strong></p>\n<p>Mit VR k&ouml;nnen Sie Achterbahn fahren, &uuml;ber eine H&auml;ngebr&uuml;cke den Urwald &uuml;berqueren oder in einer historischen Schlacht k&auml;mpfen. AR versorgt Sie in der realen Welt mit zus&auml;tzlichen Informationen, die an dieser Stelle m&ouml;glicherweise wichtig f&uuml;r Sie sind. Im Supermarkt werden Sie an das richtige Regal gef&uuml;hrt, im Einkaufszentrum werden Sonderangebote eingespielt, ohne dass Sie das Gesch&auml;ft betreten m&uuml;ssen.</p>\n</body>\n</html>', 'sidebar'),
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
(3, '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<h3>Advertisements</h3>\n<p><strong>Publicity</strong></p>\n<p>We offer companies and agencies the opportunity to place advertisements and job offers on VRODO. If you are interested, please write to hallo(at)vrodo.de.</p>\n<p><strong>VR what is that?</strong></p>\n<p>With VR you can ride a roller coaster, cross the jungle over a suspension bridge or fight in a historical battle. AR provides you in the real world with additional information that might be important for you at this point. In the supermarket you will be guided to the right shelf, in the shopping centre special offers will be recorded without you having to enter the shop.</p>\n</body>\n</html>', 'sidebar');

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
(1, 'Domit', 1, 'e9deb0d326bc4e1408fdc3948d9433ffef26be470016db53b76c384694862868'),
(2, 'Flo', 1, 'e9deb0d326bc4e1408fdc3948d9433ffef26be470016db53b76c384694862868'),
(6, 'Admin', 3, 'e9deb0d326bc4e1408fdc3948d9433ffef26be470016db53b76c384694862868'),
(7, 'test', 2, 'c02d8e6211ef7dc5af42085cbb323a122b76905ac098467ea1f85465ec14429d');

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT für Tabelle `content_en`
--
ALTER TABLE `content_en`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT für Tabelle `media`
--
ALTER TABLE `media`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `site`
--
ALTER TABLE `site`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT für Tabelle `static_content_de`
--
ALTER TABLE `static_content_de`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT für Tabelle `static_content_en`
--
ALTER TABLE `static_content_en`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `template`
--
ALTER TABLE `template`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT für Tabelle `user_rights`
--
ALTER TABLE `user_rights`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
