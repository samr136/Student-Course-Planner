-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 06, 2022 at 11:34 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srastogi_638`
--

-- --------------------------------------------------------

--
-- Table structure for table `Department`
--

CREATE TABLE `Department` (
  `Department_ID` int(11) NOT NULL,
  `Department_Name` varchar(50) NOT NULL,
  `Location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Department`
--

INSERT INTO `Department` (`Department_ID`, `Department_Name`, `Location`) VALUES
(1, 'MS Information Experience Design', 'Pratt Manhattan Center'),
(2, 'MS CommunIcation Design', 'Pratt-Main'),
(3, 'MS Data Analytics and Visualization', 'Pratt Manhattan Center'),
(4, 'MS Library and Information Science', 'Pratt Manhattan Center'),
(5, 'MS Museums and Digital Culture', 'Pratt Manhattan Center');

-- --------------------------------------------------------

--
-- Table structure for table `Elective`
--

CREATE TABLE `Elective` (
  `Elective_ID` varchar(10) NOT NULL,
  `Elective_Name` varchar(100) NOT NULL,
  `Credits` int(11) NOT NULL,
  `Description` varchar(1000) NOT NULL,
  `Department_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Elective`
--

INSERT INTO `Elective` (`Elective_ID`, `Elective_Name`, `Credits`, `Description`, `Department_ID`) VALUES
('CDBAD-375', 'Branding and Art Direction Intensive', 3, 'Essentially, the space to collaborate, innovate and play while exploring \nexamples of ground-breaking art direction, including advertising \ncampaigns, both creative and disruptive, retail spaces, including \nrestaurants and events, motion graphics and websites. Storytelling \nthrough brand imaging, in addition to a survey of award-winning \nadvertising concepts, images and marketing strategies together \nwith exercises in the creation of non-traditional images comprise \ncontent included in the course.', 2),
('CDBAD-379 ', '3-Dimensional Design and Branding Intensive', 3, 'Students will learn how to develop brand messaging and storytelling \nthrough meaningful interactions with their audience by incorporating \n3-D design solutions that reach people through a physical space, an \nexperience and/or through touch. Key explorations will involve projects \nthat focus on environmental graphics, visual merchandising, packaging, \ninstallation graphics and other physical forms.', 2),
('CDBAD-385', ' Branding and Art Direction Intensive 2', 3, 'Readings, lectures, and research-driven projects introduce critical perspective\n on branding and its relationship to larger cultural, political and technological\n trends. Exercises and in-class workshops prompt students to explore these \ntopics, while research-driven projects challenge them to integrate this \ndynamic approach to actual scenarios and concrete deliverables.', 2),
('CDBAD-401', ' Branding and Art Direction Senior Project', 3, 'Establishes the foundation for a compelling portfolio geared toward entering t\nhe profession or pursuing post-secondary education. Senior Projects in the \nillustration area of emphasis focus on the creation of imagery that \nentrepreneurial possibilities of image-based communication. \nStudents will take a combined total of three Senior Projects and/ or \nAdvanced Senior Projects, resulting in an iterative process that develops \na student\'s capacity and expectations for self-directed projects and exploration.', 2),
('INFO-606', 'Digital Accessibility', 3, 'Students will learn the language of \naccessibility and inclusion, how to create accessible \ninterfaces and content, and relevant techniques for \ndesigning technologies that consider the full range \nof human diversity.', 1),
('INFO-608', 'Human Information Interaction', 3, 'Human information interaction (HII) investigates how people interact \nwith information in various contexts. The course introduces multidisciplinary \ntheories and methods for understanding human relationships with \ninformation and technology, and prepares students to analyze, \ndesign, and improve information products and services. \nThis is a highly interactive course where students routinely \nlead class discussions and conduct real-world research projects.', 3),
('INFO-609', 'Introduction to Spatial Thinking & GIS', 3, 'Geographic Information Systems (GIS) are tools for managing, describing, \nanalyzing, and presenting information about the relationships between \ngeographically referenced information. This course provides a strong \nfoundation and overview of many of the underlying concepts in GIS \nas well as a practical skill set utilizing GIS software and data. Additionally, \nthe course focuses on map design to maximize the message and impact of\n map output. Finally, students are introduced to spatial metadata standards\n and best practices for long term preservation.', 3),
('INFO-636', 'Conversational User Experience Design', 3, 'Students would learn how to design effective and \nusable conversational interfaces from a human-centered \nperspective. From chatbots to intelligent personal assistants \nand other voice user interfaces (VUIs), students will learn \nthe state of the art and science of conversation design, \nexplore the conversational design process, and reflect \non the ethical implications of designing conversational \nagents.', 1),
('INFO-640', 'Data Analysis', 3, 'This course develops skills to uncover data patterns for making informed \ndecisions, shaping actions and beliefs. The course introduces statistical \nand linguistic data analysis techniques that are foundational for all \ninformation-centric fields, and prepares students to ask the right questions, \nmake inferences and present the results. The course supports interests \nin data analytics, visualization, digital humanities, data mining, GIS, \nand general research. No previous knowledge of statistics is required.', 3),
('INFO-641', 'Visual Communication & Information Design', 3, 'The course will cover basic theories of graphic design, including \nconcepts related to typography, color, layout, and composition, \nhow to analyze and conceptualize visual messages, and \nhow to recognize and create a strong visual hierarchy.\n Students will gain skills necessary for practical application, l\nearn how to establish and follow brand/identity guidelines, \nand prepare work for print or web production.', 1),
('INFO-642', 'Content Strategy', 3, 'Designed for information professionals from a variety of backgrounds \nand specialties, this course will provide students with a broad and\n solid understanding of the discipline of content strategy. \nThrough a comprehensive and robust series of readings, \nexercises, simulations, assignments, and discussions, \nstudents will gain practical experience in creating and working \nwith the tools, techniques, principles, and processes of content \nstrategy.', 1),
('INFO-646', 'Digital Product Design', 3, 'This course focuses on the process, practices, and tools for designing \nengaging, understandable, and technically feasible digital products. \nStudents will learn about and apply advanced techniques and tools \nrelevant to the entire product design lifecycle, including identifying, \ninvestigating, and validating design problems, as well as crafting, \ndesigning, and testing digital solutions. Students will also learn \nhow to visualize and effectively communicate design insights to \nvarious stakeholders.', 1),
('INFO-652', '	Reference and Instruction', 3, 'This course prepares students for these roles in research and instruction\n through projects that use digital sources and tools for the delivery of content. \nThe course introduces the selection and evaluation of information sources, \nthe development of searching techniques, strategies for user-centered \nservice, matching user needs to resources, and the provision of information \nservices in multiple service models and literacy standards.', 4),
('INFO-653', 'Knowledge Organization', 3, 'The course coves basic principles and applications of descriptive cataloging,\nclassification, and indexing for physical and digital resources. Also covered \nare metadata, thesauri and emerging knowledge organization systems \nand practices, including linked data and social tagging. The course provides\n the foundation for further studies in library, archive, and museum \ncataloging, reference, information retrieval, database management, \nand information architecture.', 4),
('INFO-660', 'Collection Development', 3, 'A study of methods and techniques for the development of a \ncollection policy and practice to meet the needs of diverse user groups. \nThe course includes collection policy development, censorship, \nmethodology of user group identification, standards, budget \nallocations, selection, media and weeding.', 4),
('INFO-661', 'Art Documentation', 3, 'ey elements that define core concepts of documentation standards for a \nlarge body of artists\' work, such as data elements that comprise an artist\'s \ncatalogue raisonne, will bring to focus the necessary tools needed to document\n, contextualize, and implement proper documentation strategies for the artist. \nThis class will bridge theory into practice by providing students a forum to \ndevelop their skills by researching case scenarios of audience sectors in \nthe fine arts and incorporating those findings using software platforms for \ndissemination.', 4),
('INFO-664', 'Programming For Cultural Heritage', 3, 'The overall objective for the classroom as a whole is to ideate and then \ncreate a linked open data project. This will require not only reading and research on existing projects and standards but also the acquisition of software and programming skills needed to make the \nproject work. Students will be required to learn a computer \nprogramming language (Python), this course will not serve as a \ngeneral introduction to programming or computer science, \nbut using it in the context of the class will serve as an excellent \nstarting point for further study.', 3),
('INFO-679', ' Museums and Digital Culture:Theory and Practice', 3, 'The course examines the issues and challenges museums face today and moving\n into the future. It surveys digital culture across the museum from the \nperspectives of digital technology and social contexts including digital \ninformation behavior, user experience, digital exhibitions and museums on the Web. ', 5),
('INFO-683', 'Museum Digital Strategy: Planning and Management ', 3, 'It includes a review of some of the digital strategy documents published by various \nmuseums and an online analysis of their digital outcomes. From an\n internal organizational perspective, the course explores how specific \nmuseums have incorporated digital plans to transform their culture, \nprocesses and increase their digital literacy. Discussions during the \ncourse will deepen into the opportunities and challenges of implementing \ndigital practices in a museum.', 5),
('INFO-684', 'Museum Information Management: Collection \nCataloging & Digital Technology ', 3, 'In this course, students will learn to manage a museum\'s most important \ninformation source: its collection information. Students will learn the functions \nof collection management systems, how to catalog cultural objects by \napplying descriptive metadata standards and best practices, and explore \nthe potential for creating new access points to museum collections \nthrough digital tools.', 5),
('INFO-685', 'Digital Analytics: Web, Mobile and Social Media ', 3, 'The course covers the entire process, from how to collect data from different \nplatforms to analyze and visualize the date. There is an important practical \ncomponent where students conduct exercises on how to extract and \ninterpret data to make changes to a website, app or social media activity. \nExamples are presented to illustrate how to use the different analytics \nreports in order to provide insights, inform strategy and provide \nevidence to help the decision making process', 5);

-- --------------------------------------------------------

--
-- Table structure for table `Elective_Registration`
--

CREATE TABLE `Elective_Registration` (
  `Registration_ID` int(11) NOT NULL,
  `Student_ID` int(11) NOT NULL,
  `Elective_ID` varchar(10) NOT NULL,
  `Schedule_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Elective_Registration`
--

INSERT INTO `Elective_Registration` (`Registration_ID`, `Student_ID`, `Elective_ID`, `Schedule_ID`) VALUES
(1, 100001, 'INFO-606', 1),
(2, 100001, 'INFO-641', 4),
(3, 100002, 'INFO-642', 5),
(4, 100002, 'INFO-606', 1),
(5, 100003, 'INFO-642', 5),
(6, 100003, 'INFO-641', 4),
(7, 110002, 'CDBAD-375', 7),
(8, 110002, 'CDBAD-385', 9),
(9, 110003, 'CDBAD-375', 7),
(10, 110003, 'CDBAD-385', 9),
(11, 120002, 'INFO-609', 14),
(12, 120003, 'INFO-652', 15),
(13, 130002, 'INFO-660', 17),
(14, 130003, 'INFO-661', 18);

-- --------------------------------------------------------

--
-- Table structure for table `Elective_Schedule`
--

CREATE TABLE `Elective_Schedule` (
  `Schedule_ID` int(11) NOT NULL,
  `Schedule_Time` varchar(50) NOT NULL,
  `Schedule_Days` varchar(15) NOT NULL,
  `Schedule_Term` varchar(200) NOT NULL,
  `Elective_rating` float NOT NULL,
  `Professor_ID` int(11) NOT NULL,
  `Elective_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Elective_Schedule`
--

INSERT INTO `Elective_Schedule` (`Schedule_ID`, `Schedule_Time`, `Schedule_Days`, `Schedule_Term`, `Elective_rating`, `Professor_ID`, `Elective_ID`) VALUES
(1, '6:30pm - 9:30pm', 'Monday', 'Fall 2022', 3.9, 246, 'INFO-606'),
(2, '6:30pm - 9:30pm', 'Tuesday', 'Fall 2022, Spring 2022', 4, 233, 'INFO-636'),
(3, '3:00pm - 5:50 pm ', 'Wednesday', 'Fall 2022, Summer 2022', 4, 187, 'INFO-641'),
(4, '6:30pm - 9:30pm', 'Thursday', 'Fall 2022, Summer 2022', 3.7, 199, 'INFO-641'),
(5, '3:00pm - 5:50 pm ', 'Tuesday', 'Fall 2022, Summer 2022, Spring 2022', 3.6, 354, 'INFO-642'),
(6, '6:30pm - 9:30pm', 'Monday', 'Fall 2022, Summer 2022, Spring 2022', 4, 354, 'INFO-646'),
(7, '11am - 2pm', 'Wednesday', 'Fall 2022', 4.1, 256, 'CDBAD-375'),
(8, '11am - 2pm', 'Friday', 'Fall 2022', 4, 266, 'CDBAD-379'),
(9, '3:00pm - 5:50 pm ', 'Tuesday', 'Fall 2022', 3.7, 552, 'CDBAD-385'),
(10, '3:00pm - 5:50 pm ', 'Wednesday', 'Fall 2022, Summer 2022, Spring 2022', 4, 553, 'CDBAD-401'),
(11, '6:30pm - 9:30pm', 'Monday', 'Fall 2022', 3.9, 342, 'INFO-640'),
(12, '6:30pm - 9:30pm', 'Tuesday', 'Fall 2022', 4.1, 343, 'INFO-664'),
(13, '3:00pm - 5:50 pm ', 'Wednesday', 'Fall 2022', 4, 344, 'INFO-608'),
(14, '6:30pm - 9:30pm', 'Thursday', 'Fall 2022', 4, 345, 'INFO-609'),
(15, '3:00pm - 5:50 pm ', 'Tuesday', 'Fall 2022, Summer 2022, Spring 2022', 3.9, 441, 'INFO-652'),
(16, '6:30pm - 9:30pm', 'Monday', 'Fall 2022, Spring 2022', 4, 442, 'INFO-653'),
(17, '11am - 2pm', 'Wednesday', 'Fall 2022, Summer 2022', 4, 443, 'INFO-660'),
(18, '11am - 2pm', 'Thursday', 'Fall 2022, Summer 2022', 3.7, 444, 'INFO-661'),
(19, '11am - 2pm', 'Monday', 'Fall 2022, Summer 2022', 4, 445, 'INFO-661'),
(20, '3:00pm - 5:50 pm ', 'Tuesday', 'Fall 2022, Summer 2022, Spring 2022', 3.6, 651, 'INFO-679'),
(21, '3:00pm - 5:50 pm ', 'Monday', 'Fall 2022, Summer 2022, Spring 2022', 4, 652, 'INFO-683'),
(22, '6:30pm - 9:30pm', 'Tuesday', 'Fall 2022, Summer 2022, Spring 2022', 4.1, 653, 'INFO-685'),
(23, '3:00pm - 5:50 pm ', 'Wednesday', 'Fall 2022', 4, 654, 'INFO-684'),
(24, '3:00pm - 5:50 pm ', 'Monday', 'Fall 2022, Summer 2022, Spring 2022', 4, 659, 'INFO-684');

-- --------------------------------------------------------

--
-- Table structure for table `Professor`
--

CREATE TABLE `Professor` (
  `Professor_ID` int(10) NOT NULL,
  `Professor_Name` varchar(50) NOT NULL,
  `Professor_Email` varchar(50) NOT NULL,
  `Department_ID` int(11) NOT NULL,
  `Education` varchar(1000) NOT NULL,
  `biography` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Professor`
--

INSERT INTO `Professor` (`Professor_ID`, `Professor_Name`, `Professor_Email`, `Department_ID`, `Education`, `biography`) VALUES
(187, 'Nicole Finch', 'nfinch@pratt.edu', 1, 'B.A. in Philosophy from Seattle University; M.A. in Media Studies from The New School; M.F.A. in Creative Writing from the University of San Francisco; Ph.D. in Human-Computer Interaction Design from Indiana University.', 'Their research explores the relationship between digital technologies and climate change, including work in sustainable design, animal-computer interaction, and urban informatics. They have been a practicing designer for over a decade in both print and interaction design.'),
(199, 'Anna Vintour', 'avintor@pratt.edu', 1, 'B.A. in Philosophy from Seattle University; M.A. in Media Studies from The New School; M.F.A. in Creative Writing from the University of San Francisco; Ph.D. in Human-Computer Interaction Design from Indiana University.', 'Their research explores the relationship between digital technologies and climate change, including work in sustainable design, animal-computer interaction, and urban informatics. They have been a practicing designer for over a decade in both print and interaction design.'),
(233, 'Rebeny Evander', 'revander@pratt.edu', 1, 'B.A. in Philosophy from Seattle University; M.A. in Media Studies from The New School; M.F.A. in Creative Writing from the University of San Francisco; Ph.D. in Human-Computer Interaction Design from Indiana University.', 'Their research explores the relationship between digital technologies and climate change, including work in sustainable design, animal-computer interaction, and urban informatics. They have been a practicing designer for over a decade in both print and interaction design.'),
(246, 'Evangelist Braker', 'evanbraker@pratt.edu', 1, 'B.A. in Philosophy from Seattle University; M.A. in Media Studies from The New School; M.F.A. in Creative Writing from the University of San Francisco; Ph.D. in Human-Computer Interaction Design from Indiana University.', 'Their research explores the relationship between digital technologies and climate change, including work in sustainable design, animal-computer interaction, and urban informatics. They have been a practicing designer for over a decade in both print and interaction design.'),
(256, 'Natalie Straw', 'nstraw@pratt.edu', 2, 'B.A. in Philosophy from Seattle University; M.A. in Media Studies from The New School; M.F.A. in Creative Writing from the University of San Francisco; Ph.D. in Human-Computer Interaction Design from Indiana University.', 'Their research explores the relationship between digital technologies and climate change, including work in sustainable design, animal-computer interaction, and urban informatics. They have been a practicing designer for over a decade in both print and interaction design.'),
(266, 'Nicole Straw', 'nstrawe@pratt.edu', 2, 'B.A. in Philosophy from Seattle University; M.A. in Media Studies from The New School; M.F.A. in Creative Writing from the University of San Francisco; Ph.D. in Human-Computer Interaction Design from Indiana University.', 'Their research explores the relationship between digital technologies and climate change, including work in sustainable design, animal-computer interaction, and urban informatics. They have been a practicing designer for over a decade in both print and interaction design.'),
(342, 'Shazam Noah', 'snoah@pratt.edu', 3, 'B.A. in Philosophy from Seattle University; M.A. in Media Studies from The New School; M.F.A. in Creative Writing from the University of San Francisco; Ph.D. in Human-Computer Interaction Design from Indiana University.', 'Their research explores the relationship between digital technologies and climate change, including work in sustainable design, animal-computer interaction, and urban informatics. They have been a practicing designer for over a decade in both print and interaction design.'),
(343, 'Kylie Mimosa', 'kmimosa@pratt.edu', 3, 'B.A. in Philosophy from Seattle University; M.A. in Media Studies from The New School; M.F.A. in Creative Writing from the University of San Francisco; Ph.D. in Human-Computer Interaction Design from Indiana University.', 'Their research explores the relationship between digital technologies and climate change, including work in sustainable design, animal-computer interaction, and urban informatics. They have been a practicing designer for over a decade in both print and interaction design.'),
(344, 'Centri Peek', 'cpeek@pratt.edu', 3, 'B.A. in Philosophy from Seattle University; M.A. in Media Studies from The New School; M.F.A. in Creative Writing from the University of San Francisco; Ph.D. in Human-Computer Interaction Design from Indiana University.', 'Their research explores the relationship between digital technologies and climate change, including work in sustainable design, animal-computer interaction, and urban informatics. They have been a practicing designer for over a decade in both print and interaction design.'),
(345, 'Kason Monoa', 'kmanoa@pratt.edu', 3, 'B.A. in Philosophy from Seattle University; M.A. in Media Studies from The New School; M.F.A. in Creative Writing from the University of San Francisco; Ph.D. in Human-Computer Interaction Design from Indiana University.', 'Their research explores the relationship between digital technologies and climate change, including work in sustainable design, animal-computer interaction, and urban informatics. They have been a practicing designer for over a decade in both print and interaction design.'),
(354, 'Eskim Palad', 'epalad@pratt.edu', 1, 'B.A. in Philosophy from Seattle University; M.A. in Media Studies from The New School; M.F.A. in Creative Writing from the University of San Francisco; Ph.D. in Human-Computer Interaction Design from Indiana University.', 'Their research explores the relationship between digital technologies and climate change, including work in sustainable design, animal-computer interaction, and urban informatics. They have been a practicing designer for over a decade in both print and interaction design.'),
(441, 'Zebry Print', 'zprint@pratt.edu', 4, 'B.A. in Philosophy from Seattle University; M.A. in Media Studies from The New School; M.F.A. in Creative Writing from the University of San Francisco; Ph.D. in Human-Computer Interaction Design from Indiana University.', 'Their research explores the relationship between digital technologies and climate change, including work in sustainable design, animal-computer interaction, and urban informatics. They have been a practicing designer for over a decade in both print and interaction design.'),
(442, 'Suzi Baker', 'sbaker@pratt.edu', 4, 'B.A. in Philosophy from Seattle University; M.A. in Media Studies from The New School; M.F.A. in Creative Writing from the University of San Francisco; Ph.D. in Human-Computer Interaction Design from Indiana University.', 'Their research explores the relationship between digital technologies and climate change, including work in sustainable design, animal-computer interaction, and urban informatics. They have been a practicing designer for over a decade in both print and interaction design.'),
(443, 'Drowsy Sloth', 'dsloth@pratt.edu', 4, 'B.A. in Philosophy from Seattle University; M.A. in Media Studies from The New School; M.F.A. in Creative Writing from the University of San Francisco; Ph.D. in Human-Computer Interaction Design from Indiana University.', 'Their research explores the relationship between digital technologies and climate change, including work in sustainable design, animal-computer interaction, and urban informatics. They have been a practicing designer for over a decade in both print and interaction design.'),
(444, 'Rumi Sloan', 'rsloan@pratt.edu', 4, 'B.A. in Philosophy from Seattle University; M.A. in Media Studies from The New School; M.F.A. in Creative Writing from the University of San Francisco; Ph.D. in Human-Computer Interaction Design from Indiana University.', 'Their research explores the relationship between digital technologies and climate change, including work in sustainable design, animal-computer interaction, and urban informatics. They have been a practicing designer for over a decade in both print and interaction design.'),
(445, 'Samp Zatani', 'szatani@pratt.edu', 4, 'B.A. in Philosophy from Seattle University; M.A. in Media Studies from The New School; M.F.A. in Creative Writing from the University of San Francisco; Ph.D. in Human-Computer Interaction Design from Indiana University.', 'Their research explores the relationship between digital technologies and climate change, including work in sustainable design, animal-computer interaction, and urban informatics. They have been a practicing designer for over a decade in both print and interaction design.'),
(552, 'Brad Zeller', 'bzeller@pratt.edu', 2, 'B.A. in Philosophy from Seattle University; M.A. in Media Studies from The New School; M.F.A. in Creative Writing from the University of San Francisco; Ph.D. in Human-Computer Interaction Design from Indiana University.', 'Their research explores the relationship between digital technologies and climate change, including work in sustainable design, animal-computer interaction, and urban informatics. They have been a practicing designer for over a decade in both print and interaction design.'),
(553, 'Kayla Zims', 'kzims@pratt.edu', 2, 'B.A. in Philosophy from Seattle University; M.A. in Media Studies from The New School; M.F.A. in Creative Writing from the University of San Francisco; Ph.D. in Human-Computer Interaction Design from Indiana University.', 'Their research explores the relationship between digital technologies and climate change, including work in sustainable design, animal-computer interaction, and urban informatics. They have been a practicing designer for over a decade in both print and interaction design.'),
(651, 'Colie Bill', 'cbill@pratt.edu', 5, 'B.A. in Philosophy from Seattle University; M.A. in Media Studies from The New School; M.F.A. in Creative Writing from the University of San Francisco; Ph.D. in Human-Computer Interaction Design from Indiana University.', 'Their research explores the relationship between digital technologies and climate change, including work in sustainable design, animal-computer interaction, and urban informatics. They have been a practicing designer for over a decade in both print and interaction design.'),
(652, 'Gates Bills', 'gbills@pratt.edu', 5, 'B.A. in Philosophy from Seattle University; M.A. in Media Studies from The New School; M.F.A. in Creative Writing from the University of San Francisco; Ph.D. in Human-Computer Interaction Design from Indiana University.', 'Their research explores the relationship between digital technologies and climate change, including work in sustainable design, animal-computer interaction, and urban informatics. They have been a practicing designer for over a decade in both print and interaction design.'),
(653, 'Bosk Boulder', 'bboulder@pratt.edu', 5, 'B.A. in Philosophy from Seattle University; M.A. in Media Studies from The New School; M.F.A. in Creative Writing from the University of San Francisco; Ph.D. in Human-Computer Interaction Design from Indiana University.', 'Their research explores the relationship between digital technologies and climate change, including work in sustainable design, animal-computer interaction, and urban informatics. They have been a practicing designer for over a decade in both print and interaction design.'),
(654, 'Karen Karen', 'kkaren@pratt.edu', 5, 'B.A. in Philosophy from Seattle University; M.A. in Media Studies from The New School; M.F.A. in Creative Writing from the University of San Francisco; Ph.D. in Human-Computer Interaction Design from Indiana University.', 'Their research explores the relationship between digital technologies and climate change, including work in sustainable design, animal-computer interaction, and urban informatics. They have been a practicing designer for over a decade in both print and interaction design.'),
(659, 'Hudson Meyer', 'hmeyer@pratt.edu', 5, 'B.A. in Philosophy from Seattle University; M.A. in Media Studies from The New School; M.F.A. in Creative Writing from the University of San Francisco; Ph.D. in Human-Computer Interaction Design from Indiana University.', 'Their research explores the relationship between digital technologies and climate change, including work in sustainable design, animal-computer interaction, and urban informatics. They have been a practicing designer for over a decade in both print and interaction design.');

-- --------------------------------------------------------

--
-- Table structure for table `Student`
--

CREATE TABLE `Student` (
  `Student_ID` int(10) NOT NULL,
  `Student_Name` varchar(50) NOT NULL,
  `Student_Email` varchar(50) NOT NULL,
  `Student_Semester` int(11) NOT NULL,
  `Department_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Student`
--

INSERT INTO `Student` (`Student_ID`, `Student_Name`, `Student_Email`, `Student_Semester`, `Department_ID`) VALUES
(100001, 'Marc Jacobs ', 'mjacobs1@pratt.edu', 1, 1),
(100002, 'Andrew Garfield', 'agarfield@pratt.edu', 3, 1),
(100003, 'Katy Perry', 'kperry@pratt.edu', 4, 1),
(100004, 'Koko Kanel', 'kkanel@pratt.edu', 2, 1),
(100005, 'Trucy Chen', 'tchen1@pratt.edu', 3, 1),
(100006, 'Leslie Rogers', 'lrogers@pratt.edu', 2, 1),
(100007, 'Emory Blinds', 'eblinds@pratt.edu', 1, 1),
(100008, 'Laroc Nacy', 'lnacy@pratt.edu', 3, 1),
(110002, 'Evangelist Braile', 'ebraile@pratt.edu', 1, 2),
(110003, 'Rebeny Evander', 'revander@pratt.edu', 3, 2),
(110004, 'Nicole Finchyl', 'nfinchyl@pratt.edu', 4, 2),
(110005, 'Anna Vintourop', 'avintorop@pratt.edu', 2, 2),
(110006, 'Eskim Paladis', 'epaladis@pratt.edu', 3, 2),
(110007, 'Natalie Strawny', 'nstrawny@pratt.edu', 2, 2),
(120002, 'Marcy Jacobson ', 'mjacobson@pratt.edu', 1, 3),
(120003, 'Angel Garfielder', 'agarfielder@pratt.edu', 3, 3),
(120004, 'Kasy Perto', 'kperto@pratt.edu', 4, 3),
(120005, 'Zoko Panel', 'zpanel@pratt.edu', 2, 3),
(120006, 'Tracy Ken', 'tken@pratt.edu', 3, 3),
(120007, 'Deslie Gogers', 'dgogers@pratt.edu', 2, 3),
(130002, 'Zebryn Printol', 'zprintol@pratt.edu', 1, 4),
(130003, 'Breezin Deezin', 'bdeezin@pratt.edu', 3, 4),
(130004, 'Cole Sprint', 'csprint@pratt.edu', 4, 4),
(130005, 'Archie Gordon', 'agordon@pratt.edu', 2, 4),
(130006, 'Zamp Zatani', 'zzatani@pratt.edu', 3, 4),
(130007, 'Jack Bill', 'jbill@pratt.edu', 2, 4),
(140002, 'Penelope Bills', 'pbills@pratt.edu', 1, 5),
(140003, 'Bosk Boulder', 'bboulder1@pratt.edu', 3, 5),
(140004, 'Karen Karen', 'kkaren1@pratt.edu', 4, 5),
(140005, 'Armon Meyer', 'ameyer@pratt.edu', 2, 5),
(140006, 'Zoey Zatani', 'zzatani2@pratt.edu', 3, 5),
(140007, 'Jack Bill', 'jbill1@pratt.edu', 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'mjacobs', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Department`
--
ALTER TABLE `Department`
  ADD PRIMARY KEY (`Department_ID`);

--
-- Indexes for table `Elective`
--
ALTER TABLE `Elective`
  ADD PRIMARY KEY (`Elective_ID`),
  ADD KEY `Department_ID` (`Department_ID`);

--
-- Indexes for table `Elective_Registration`
--
ALTER TABLE `Elective_Registration`
  ADD PRIMARY KEY (`Registration_ID`),
  ADD KEY `Student_ID` (`Student_ID`),
  ADD KEY `Elective_ID` (`Elective_ID`);

--
-- Indexes for table `Elective_Schedule`
--
ALTER TABLE `Elective_Schedule`
  ADD PRIMARY KEY (`Schedule_ID`),
  ADD KEY `Professor_ID` (`Professor_ID`),
  ADD KEY `Elective_ID` (`Elective_ID`);

--
-- Indexes for table `Professor`
--
ALTER TABLE `Professor`
  ADD PRIMARY KEY (`Professor_ID`),
  ADD KEY `Department_ID` (`Department_ID`);

--
-- Indexes for table `Student`
--
ALTER TABLE `Student`
  ADD PRIMARY KEY (`Student_ID`),
  ADD KEY `Department_ID` (`Department_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Department`
--
ALTER TABLE `Department`
  MODIFY `Department_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Elective_Registration`
--
ALTER TABLE `Elective_Registration`
  MODIFY `Registration_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `Elective_Schedule`
--
ALTER TABLE `Elective_Schedule`
  MODIFY `Schedule_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Elective`
--
ALTER TABLE `Elective`
  ADD CONSTRAINT `elective_ibfk_1` FOREIGN KEY (`Department_ID`) REFERENCES `department` (`Department_ID`);

--
-- Constraints for table `Elective_Registration`
--
ALTER TABLE `Elective_Registration`
  ADD CONSTRAINT `elective_registration_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`Student_ID`),
  ADD CONSTRAINT `elective_registration_ibfk_2` FOREIGN KEY (`Elective_ID`) REFERENCES `elective` (`Elective_ID`);

--
-- Constraints for table `Elective_Schedule`
--
ALTER TABLE `Elective_Schedule`
  ADD CONSTRAINT `elective_schedule_ibfk_1` FOREIGN KEY (`Professor_ID`) REFERENCES `professor` (`Professor_ID`),
  ADD CONSTRAINT `elective_schedule_ibfk_2` FOREIGN KEY (`Elective_ID`) REFERENCES `elective` (`Elective_ID`);

--
-- Constraints for table `Professor`
--
ALTER TABLE `Professor`
  ADD CONSTRAINT `professor_ibfk_1` FOREIGN KEY (`Department_ID`) REFERENCES `department` (`Department_ID`);

--
-- Constraints for table `Student`
--
ALTER TABLE `Student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`Department_ID`) REFERENCES `department` (`Department_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
