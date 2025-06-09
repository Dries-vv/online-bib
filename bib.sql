-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 09 jun 2025 om 17:03
-- Serverversie: 10.4.32-MariaDB
-- PHP-versie: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bib`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `boeken`
--

CREATE TABLE `boeken` (
  `BoekNaam` varchar(36) NOT NULL,
  `img` varchar(255) NOT NULL,
  `flaptext` varchar(1550) NOT NULL,
  `id` char(36) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Beschikbaar',
  `genre` varchar(255) NOT NULL,
  `auteur` varchar(255) NOT NULL,
  `doelgroep` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `boeken`
--

INSERT INTO `boeken` (`BoekNaam`, `img`, `flaptext`, `id`, `status`, `genre`, `auteur`, `doelgroep`) VALUES
('De verborgen geschiedenis', 'https://media.s-bol.com/KjOv91g902Nn/M8PDYDR/758x1200.jpg', 'Een mysterieus verhaal over vriendschap en tragedie in een universiteit.', '1', 'uitgeleend', 'Fictie', 'Donna Tartt', 'Volwassenen'),
('Witte raaf', 'https://cdn.standaardboekhandel.be/product/9789021415192/front-medium-1290337553.jpg', 'Een indrukwekkend verhaal over verraad, moed en opoffering in een historisch verleden.', '11', 'uitgeleend', 'Fictie', 'Daniel Silva', 'Volwassenen'),
('De kracht van het nu', 'https://media.s-bol.com/gGpjgN2q0N5k/9VgW3x/550x712.jpg', 'Een filosofisch boek dat zich richt op het belang van het moment en innerlijke rust.', '12', 'Beschikbaar', 'Spiritualiteit', 'Eckhart Tolle', 'Volwassenen'),
('Sapiens', 'https://cdn.standaardboekhandel.be/product/9789400404908/front-medium-26751344.jpg', 'Een geschiedenis van de mensheid, van de oertijd tot de moderne tijd.', '13', 'Beschikbaar', 'Non-fictie', 'Yuval Noah Harari', 'Volwassenen'),
('De avonturen van Sherlock Holmes', 'https://images.unsplash.com/photo-1615646963653-c59a2b3748a5', 'De klassieke verhalen van Sherlock Holmes en zijn partner Dr. Watson.', '14', 'Uitgeleend', 'Detective', 'Arthur Conan Doyle', 'Volwassenen'),
('De boekenwurm', 'https://images.unsplash.com/photo-1596628758003-e2b5738c4a42', 'Een verhaal over de liefde voor boeken en hoe ze het leven veranderen.', '15', 'Beschikbaar', 'Fictie', 'Joris-Karl Huysmans', 'Volwassenen'),
('De kathedraal', 'https://images.unsplash.com/photo-1603926812209-93b03b2efcb5', 'Een historisch episch verhaal over de bouw van een middeleeuwse kathedraal.', '16', 'Beschikbaar', 'Historisch', 'Ken Follett', 'Volwassenen'),
('De donkere toren', 'https://images.unsplash.com/photo-1593922108771-2d1d7586768a', 'Het eerste boek in een fantasyserie die de strijd tussen goed en kwaad vertelt.', '17', 'Uitgeleend', 'Fantasy', 'Stephen King', 'Volwassenen'),
('De cirkel', 'https://images.unsplash.com/photo-1605067683658-2ecf69bc1604', 'Een thriller over de gevaren van technologie en de invloed ervan op het persoonlijke leven.', '18', 'Beschikbaar', 'Thriller', 'Dave Eggers', 'Volwassenen'),
('The Catcher in the Rye', 'https://images.unsplash.com/photo-1585637816460-4b47e847b84d', 'Het verhaal van een jongen die worstelt met volwassen worden en de hypocrisie van de samenleving.', '19', 'Beschikbaar', 'Fictie', 'J.D. Salinger', 'Volwassenen'),
('Het meisje met de zwavelstokjes', 'https://images.unsplash.com/photo-1604073557749-72b5c62b0a1b', 'Het verhaal van een eenzaam meisje dat dromen koestert in de winterse kou.', '2', 'Beschikbaar', 'Fictie', 'Hans Christian Andersen', 'Jeugd'),
('Het huis van de moskee', 'https://images.unsplash.com/photo-1627545165887-704fd90671c3', 'Het verhaal van een familie in Iran tijdens en na de revolutie van 1979.', '20', 'Uitgeleend', 'Historisch', 'Kader Abdolah', 'Volwassenen'),
('1984', 'https://images.unsplash.com/photo-1571077480325-f93c6784c92e', 'Een dystopische toekomst waar alles onder controle staat van een totalitaire regering.', '3', 'Beschikbaar', 'Sciencefiction', 'George Orwell', 'Volwassenen'),
('De alchemist', 'https://images.unsplash.com/photo-1533558427279-dc6f80f5770b', 'Een jonge herder zoekt zijn legendarische schat in de woestijn van Marokko.', '4', 'Uitgeleend', 'Fictie', 'Paulo Coelho', 'Volwassenen'),
('To Kill a Mockingbird', 'https://images.unsplash.com/photo-1611095966629-0b680bf37a6b', 'Een verhaal over recht en onrecht in het diepe zuiden van de VS.', '5', 'Beschikbaar', 'Drama', 'Harper Lee', 'Volwassenen'),
('De Hobbit', 'https://images.unsplash.com/photo-1601099071780-b22fc55f4fc8', 'Het avontuur van Bilbo Balings die op zoek gaat naar een schat in een gevaarlijk land.', '6', 'Uitgeleend', 'Fantasy', 'J.R.R. Tolkien', 'Jeugd'),
('The Ballad of Songbirds and Snakes', 'https://upload.wikimedia.org/wikipedia/en/f/f1/The_Ballad_of_Songbirds_and_Snakes_%28Suzanne_Collins%29.png\r\n', 'Het is de ochtend van de boetreaping voor de tiende Hongerspelen. In het Capitool maakt de achttienjarige Coriolanus Snow zich op voor zijn enige kans op roem en succes. Als mentor van een tribuut moet hij zich bewijzen. De eens machtige familie Snow is in verval geraakt en Coriolanus’ toekomst hangt af van hoe goed hij zijn tribuut begeleidt.  Maar het', '60b105e4-82df-48e2-8817-42d8a466a725', 'Beschikbaar', 'Kinder', 'Bart Peters', 'Kinderen'),
('Harry Potter en de Steen der Wijzen', 'https://images.unsplash.com/photo-1614354309522-167408d5a290', 'Harry Potter ontdekt dat hij een tovenaar is en begint aan zijn magische avontuur.', '7', 'Beschikbaar', 'Fantasy', 'J.K. Rowling', 'Jeugd'),
('De zelfmoordclub', 'https://images.unsplash.com/photo-1618900462641-01d08d92309e', 'Een verhaal over een groep mensen die samen besluiten hun leven te beëindigen, maar dan iets anders ontdekken.', '8', 'Uitgeleend', 'Psychologische thriller', 'Tibor Noé', 'Volwassenen'),
('De Da Vinci Code', 'https://images.unsplash.com/photo-1542255035-c4d3a6555b93', 'Een mysterieus avontuur door Europa om een eeuwenoud geheim te ontrafelen.', '9', 'Beschikbaar', 'Thriller', 'Dan Brown', 'Volwassenen'),
('Dagboek van Anne Frank', 'https://cdn.standaardboekhandel.be/product/9789044653236/front-small-2510673254.jpg', 'Anne Frank hield van 12 juni 1942 tot 1 augustus 1944 een dagboek bij. Ze schreef haar brieven alleen voor zichzelf, tot ze in de lente van 1944 op de radio de minister van Onderwijs, Kunsten en Wetenschappen in ballingschap, Bolkestein, hoorde spreken. Hij zei dat na de oorlog alle getuigenissen van het lijden van het Nederlandse volk onder de Duitse bezetting verzameld en openbaar moesten worden gemaakt. Als voorbeeld noemde hij onder meer dagboeken. Onder de indruk van deze redevoering besloot Anne Frank na de oorlog een boek te publiceren. Haar dagboek zou daarvoor als basis dienen.\n\nIn maart 1945 stierf Anne Frank op vijftienjarige leeftijd in het concentratiekamp Bergen-Belsen. De enige overlevende van de familie, Otto Frank, zorgde ervoor dat het dagboek van zijn dochter toch gepubliceerd werd. In 1947 verscheen Het Achterhuis. Het is sindsdien een van de meest gelezen boeken ter wereld. Het is in meer dan dertig landen verschenen en er zijn meer dan zestien miljoen exemplaren van verkocht.', '914b0088-033c-11f0-b8c4-c84bd62df43c', 'Beschikbaar', 'Horror', 'FLip de Beer', 'Kinderen');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`ID`, `email`, `password`, `firstName`, `lastName`, `admin`) VALUES
(2, 'bib@provil.be', 'bib_provil', 'provil', 'provil', 1);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `boeken`
--
ALTER TABLE `boeken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
