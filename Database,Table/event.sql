-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2022 at 06:49 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `events_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `date`, `description`, `image`, `capacity`, `contact_email`, `phone`, `address`, `url`, `type`) VALUES
(1, 'Ciechanowiec 2', '2023-08-29 20:00:00', 'Fetal pulse oximetry', 'https://images.unsplash.com/photo-1517263904808-5dc91e3e7044?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=776&q=80', 150, 'cjennaway0@w3.org', '294-294-6718', 'Museumsplatz 1, 1070 Vienna', 'http://ucla.edu/nec/sem/duis/aliquam/convallis/nunc.png?cursus=ultrices&urna=phasellus&ut=id&tellus=sapien&nulla=in&ut=sapien&erat=iaculis&id=congue&mauris=vivamus&vulputate=metus&elementum=arcu&nullam=adipiscing&varius=molestie&nulla=hendrerit&facilisi=a', 'movie'),
(2, 'Nam Som', '2022-10-05 18:00:00', 'Forequarter amputation', 'https://images.unsplash.com/photo-1569930784237-ea65a2f40a83?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=824&q=80', 56, 'rmantripp1@hhs.gov', '122-999-9696', 'Barichgasse 34, 1030 Wien', 'https://mozilla.org/curae/mauris/viverra/diam/vitae/quam.jsp?hac=lorem&habitasse=vitae&platea=mattis&dictumst=nibh&morbi=ligula&vestibulum=nec&velit=sem&id=duis&pretium=aliquam', 'movie'),
(3, 'Maddarulug Norte', '2022-10-30 17:30:00', 'Totl reconst breast NEC', 'https://images.unsplash.com/photo-1544928147-79a2dbc1f389?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80', 50, 'sobeney2@shinystat.com', '238-302-4770', 'Hegelgasse 21/7, 1010 Wien', 'https://theatlantic.com/potenti/in/eleifend/quam/a/odio/in.json?nisi=non&volutpat=velit&eleifend=donec&donec=diam&ut=neque&dolor=vestibulum&morbi=eget&vel=vulputate&lectus=ut&in=ultrices&quam=vel&fringilla=augue&rhoncus=vestibulum&mauris=ante&enim=ipsum&l', 'sport'),
(4, 'Alapayevsk', '2023-03-14 15:25:00', 'Rt/left heart card cath', 'https://images.unsplash.com/photo-1564522365984-c08ed1f78893?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80', 15, 'cdelort3@nydailynews.com', '340-902-3415', 'Zentagasse 32, 1050 Wien', 'https://bbc.co.uk/amet/nulla/quisque.js?nulla=non&ac=pretium&enim=quis&in=lectus&tempor=suspendisse&turpis=potenti&nec=in&euismod=eleifend&scelerisque=quam&quam=a&turpis=odio&adipiscing=in&lorem=hac&vitae=habitasse&mattis=platea&nibh=dictumst&ligula=maece', 'theater'),
(5, 'Hengliang', '2022-11-23 19:30:54', 'Graft repair ventric def', 'https://images.unsplash.com/photo-1533219057257-4bb9ed5d2cc6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80', 97, 'fmagrane4@lulu.com', '109-975-1128', 'Hlawkagasse 10/6, 1100 Wien', 'https://intel.com/at/nunc/commodo.html?justo=aliquam&pellentesque=non&viverra=mauris&pede=morbi&ac=non&diam=lectus&cras=aliquam&pellentesque=sit&volutpat=amet&dui=diam&maecenas=in&tristique=magna&est=bibendum&et=imperdiet&tempus=nullam&semper=orci&est=ped', 'sport'),
(6, 'Uddevalla', '2022-08-05 20:25:54', 'TRAM flap, free', 'https://images.unsplash.com/photo-1572206501315-313290a108d6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80', 35, 'grubinchik5@tripod.com', '798-688-9505', 'Mariahilfer Str. 93, 1060 Wien', 'https://rambler.ru/sed/vestibulum/sit/amet/cursus/id.png?mus=faucibus&vivamus=accumsan&vestibulum=odio&sagittis=curabitur&sapien=convallis&cum=duis&sociis=consequat&natoque=dui&penatibus=nec&et=nisi&magnis=volutpat&dis=eleifend&parturient=donec&montes=ut&', 'music'),
(7, 'Dehang', '2022-12-05 20:15:00', 'Gingivoplasty', 'https://images.unsplash.com/photo-1533120921505-7f40f5237ee1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80', 68, 'dnewens6@pinterest.com', '538-286-6400', 'Salzgries 21/Top 4, 1010 Wien', 'http://upenn.edu/a.jsp?blandit=metus&mi=arcu&in=adipiscing&porttitor=molestie&pede=hendrerit&justo=at&eu=vulputate&massa=vitae&donec=nisl&dapibus=aenean&duis=lectus&at=pellentesque&velit=eget&eu=nunc&est=donec&congue=quis&elementum=orci&in=eget&hac=orci&h', 'sport'),
(8, 'Pul-e Khumrī', '2023-02-05 18:00:00', 'Bronchial ligation', 'https://images.unsplash.com/photo-1507608443039-bfde4fbcd142?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80', 31, 'bsimpkins7@accuweather.com', '299-471-3578', 'Favoritenstraße 92, 1100 Wien', 'http://washingtonpost.com/eros/vestibulum/ac.json?amet=justo&erat=sollicitudin&nulla=ut&tempus=suscipit&vivamus=a&in=feugiat&felis=et&eu=eros&sapien=vestibulum&cursus=ac&vestibulum=est&proin=lacinia&eu=nisi&mi=venenatis&nulla=tristique&ac=fusce&enim=congu', 'sport'),
(9, 'Grand-Bassam', '2022-11-10 20:00:00', 'Intelligence test admin', 'https://images.unsplash.com/photo-1516450137517-162bfbeb8dba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80', 32, 'cmcbride8@skyrock.com', '241-794-9633', 'Gänsbachergasse 10, 1030 Wien', 'https://weebly.com/quis/orci/eget/orci.html?vitae=nunc&nisl=commodo&aenean=placerat&lectus=praesent&pellentesque=blandit&eget=nam&nunc=nulla&donec=integer&quis=pede&orci=justo&eget=lacinia&orci=eget&vehicula=tincidunt&condimentum=eget&curabitur=tempus&in=', 'music'),
(10, 'San Salvador', '2023-06-15 16:30:00', 'Bact smear-female genit', 'https://images.unsplash.com/photo-1577648884063-1d3d1477b8a7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80', 74, 'gfleischer9@netscape.com', '249-606-4504', 'Hütteldorfer Str. 98/5, 1140 Wien', 'http://telegraph.co.uk/nulla/ultrices/aliquet/maecenas/leo.png?est=suspendisse&phasellus=accumsan&sit=tortor&amet=quis&erat=turpis&nulla=sed&tempus=ante&vivamus=vivamus&in=tortor&felis=duis&eu=mattis&sapien=egestas&cursus=metus&vestibulum=aenean&proin=fer', 'sport'),
(11, 'Test 1', '2022-12-19 10:00:00', 'test', 'http://tetstste', 12, 'rare@tfsfes', '1231', 'Ottakringer Str. 224/224, 1160 Wien', 'https://images.unsplash.com/photo-1493305457700-d3d24daf8c8c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzF8fGJhY2tncm91bmR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60', 'music'),
(15, 'dasdasdas', '2022-11-26 12:00:00', 'dadas', 'http://asddasd', 12, 'dasdasd@dasdas', '123', 'dasdasd', 'http://dasdasdas', 'sport');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
