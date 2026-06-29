/*============================================================
 Hospital Patient Data Analysis Using SQL
 Author: Abdul Moheed Iqbal
============================================================*/

/* STEP 1: Create Database */
DROP DATABASE IF EXISTS Hospital;
CREATE DATABASE Hospital;
USE Hospital;


/* STEP 2: Create Patient Table */

CREATE TABLE Patient (
    Patient_ID INT,
    Name VARCHAR(30),
    Age INT,
    Gender VARCHAR(30),
    City VARCHAR(30),
    Diagnosis VARCHAR(30),
    Ward VARCHAR(30),
    Bill INT
);


/* STEP 3: Insert Dataset */

INSERT INTO Patient
VALUES (1, 'Sara Malik', 56, 'Male', 'Islamabad', 'Allergy', 'Orthopedics', 74898),
(2, 'Maryam Siddiqui', 69, 'Female', 'Rawalpindi', 'Asthma', 'Orthopedics', 119889),
(3, 'Ahmed Ahmed', 74, 'Female', 'Rawalpindi', 'Asthma', 'Cardiology', 22974),
(4, 'Komal Raza', 44, 'Male', 'Peshawar', 'Allergy', 'Pediatrics', 14508),
(5, 'Ayesha Sheikh', 60, 'Male', 'Peshawar', 'Diabetes', 'ICU', 92749),
(6, 'Sana Khan', 37, 'Male', 'Abbottabad', 'Fracture', 'ICU', 38175),
(7, 'Waqas Raza', 74, 'Male', 'Peshawar', 'Asthma', 'General', 57200),
(8, 'Bilal Khan', 74, 'Female', 'Abbottabad', 'Asthma', 'ICU', 97579),
(9, 'Fatima Butt', 45, 'Female', 'Islamabad', 'Infection', 'ICU', 51742),
(10, 'Saad Ahmed', 38, 'Male', 'Islamabad', 'Flu', 'Pediatrics', 77620),
(11, 'Zainab Ahmed', 47, 'Female', 'Haripur', 'Infection', 'Pediatrics', 72821),
(12, 'Yasir Butt', 57, 'Female', 'Rawalpindi', 'Diabetes', 'General', 108332),
(13, 'Ahmed Aslam', 32, 'Male', 'Haripur', 'Migraine', 'Pediatrics', 10188),
(14, 'Sana Ahmed', 75, 'Male', 'Islamabad', 'Hypertension', 'Cardiology', 116357),
(15, 'Zainab Siddiqui', 76, 'Female', 'Peshawar', 'Hypertension', 'Orthopedics', 72473),
(16, 'Anum Qureshi', 54, 'Female', 'Islamabad', 'Diabetes', 'Pediatrics', 12540),
(17, 'Ahmed Qureshi', 69, 'Male', 'Peshawar', 'Diabetes', 'Pediatrics', 7206),
(18, 'Sana Butt', 58, 'Male', 'Islamabad', 'Diabetes', 'Orthopedics', 117227),
(19, 'Ahmed Iqbal', 32, 'Male', 'Islamabad', 'Diabetes', 'Cardiology', 6513),
(20, 'Ahmed Raza', 39, 'Female', 'Islamabad', 'Hypertension', 'General', 74063),
(21, 'Shahzaib Malik', 63, 'Male', 'Haripur', 'Hypertension', 'Pediatrics', 11603),
(22, 'Noor Butt', 29, 'Male', 'Islamabad', 'Migraine', 'Orthopedics', 104548),
(23, 'Usman Raza', 31, 'Female', 'Peshawar', 'Hypertension', 'Pediatrics', 50482),
(24, 'Ayesha Qureshi', 69, 'Male', 'Islamabad', 'Flu', 'General', 7416),
(25, 'Noor Raza', 64, 'Male', 'Rawalpindi', 'Allergy', 'ICU', 63596),
(26, 'Komal Siddiqui', 24, 'Female', 'Peshawar', 'Infection', 'Orthopedics', 45341),
(27, 'Hina Ahmed', 62, 'Male', 'Abbottabad', 'Fracture', 'ICU', 114089),
(28, 'Sana Qureshi', 74, 'Male', 'Peshawar', 'Fracture', 'General', 114705),
(29, 'Anum Iqbal', 26, 'Male', 'Haripur', 'Migraine', 'Cardiology', 26397),
(30, 'Omar Ahmed', 21, 'Male', 'Peshawar', 'Migraine', 'Orthopedics', 36747),
(31, 'Yasir Farooq', 62, 'Female', 'Haripur', 'Allergy', 'ICU', 25648),
(32, 'Fatima Qureshi', 35, 'Female', 'Haripur', 'Migraine', 'Pediatrics', 48113),
(33, 'Bilal Akram', 80, 'Female', 'Abbottabad', 'Flu', 'Pediatrics', 33556),
(34, 'Asad Raza', 40, 'Male', 'Haripur', 'Fracture', 'Cardiology', 15995),
(35, 'Saad Chaudhry', 48, 'Female', 'Rawalpindi', 'Asthma', 'ICU', 71156),
(36, 'Sara Akram', 67, 'Male', 'Haripur', 'Migraine', 'General', 23856),
(37, 'Sana Nawaz', 43, 'Male', 'Peshawar', 'Flu', 'Pediatrics', 44877),
(38, 'Amna Sheikh', 58, 'Male', 'Haripur', 'Hypertension', 'Orthopedics', 56054),
(39, 'Noor Iqbal', 66, 'Female', 'Peshawar', 'Hypertension', 'Pediatrics', 99916),
(40, 'Zeeshan Malik', 57, 'Male', 'Haripur', 'Infection', 'Orthopedics', 23259),
(41, 'Laiba Chaudhry', 76, 'Male', 'Rawalpindi', 'Asthma', 'General', 9084),
(42, 'Sana Hussain', 20, 'Male', 'Islamabad', 'Diabetes', 'Cardiology', 114552),
(43, 'Iqra Akram', 46, 'Male', 'Haripur', 'Asthma', 'Cardiology', 39575),
(44, 'Maham Sheikh', 18, 'Female', 'Haripur', 'Diabetes', 'Orthopedics', 13657),
(45, 'Haris Akram', 65, 'Female', 'Islamabad', 'Diabetes', 'Pediatrics', 35773),
(46, 'Noor Qureshi', 64, 'Male', 'Abbottabad', 'Allergy', 'Cardiology', 115825),
(47, 'Fatima Ahmed', 42, 'Male', 'Peshawar', 'Migraine', 'General', 85868),
(48, 'Iqra Butt', 58, 'Male', 'Haripur', 'Hypertension', 'Pediatrics', 38284),
(49, 'Hina Chaudhry', 59, 'Female', 'Rawalpindi', 'Hypertension', 'General', 68231),
(50, 'Waqas Akram', 21, 'Female', 'Islamabad', 'Diabetes', 'ICU', 93566),
(51, 'Saad Khan', 49, 'Female', 'Rawalpindi', 'Migraine', 'Cardiology', 66066),
(52, 'Asad Ahmed', 47, 'Male', 'Rawalpindi', 'Asthma', 'Pediatrics', 16253),
(53, 'Areeba Raza', 77, 'Female', 'Haripur', 'Migraine', 'Cardiology', 15022),
(54, 'Sana Chaudhry', 70, 'Female', 'Islamabad', 'Infection', 'ICU', 32618),
(55, 'Maham Aslam', 22, 'Male', 'Abbottabad', 'Migraine', 'Pediatrics', 22380),
(56, 'Sara Sheikh', 56, 'Female', 'Haripur', 'Fracture', 'ICU', 70259),
(57, 'Laiba Sheikh', 75, 'Female', 'Peshawar', 'Flu', 'ICU', 5470),
(58, 'Talha Akram', 78, 'Female', 'Peshawar', 'Infection', 'Pediatrics', 100313),
(59, 'Amna Ahmed', 27, 'Female', 'Islamabad', 'Infection', 'Pediatrics', 20847),
(60, 'Komal Ahmed', 71, 'Female', 'Haripur', 'Fracture', 'Pediatrics', 114983),
(61, 'Hamza Akram', 43, 'Male', 'Abbottabad', 'Flu', 'Pediatrics', 38189),
(62, 'Laiba Siddiqui', 41, 'Male', 'Peshawar', 'Infection', 'Orthopedics', 15013),
(63, 'Fatima Khan', 41, 'Female', 'Islamabad', 'Flu', 'Pediatrics', 18331),
(64, 'Haris Farooq', 21, 'Female', 'Abbottabad', 'Asthma', 'Pediatrics', 62178),
(65, 'Noor Siddiqui', 50, 'Female', 'Abbottabad', 'Fracture', 'Cardiology', 8802),
(66, 'Sana Siddiqui', 69, 'Female', 'Rawalpindi', 'Asthma', 'General', 11484),
(67, 'Komal Akram', 77, 'Female', 'Peshawar', 'Hypertension', 'Pediatrics', 68645),
(68, 'Noor Farooq', 21, 'Male', 'Abbottabad', 'Allergy', 'Cardiology', 50044),
(69, 'Maryam Nawaz', 36, 'Female', 'Islamabad', 'Migraine', 'Cardiology', 90982),
(70, 'Asad Sheikh', 33, 'Female', 'Peshawar', 'Infection', 'General', 26932),
(71, 'Ali Akram', 59, 'Male', 'Haripur', 'Asthma', 'Orthopedics', 111407),
(72, 'Omar Malik', 49, 'Male', 'Peshawar', 'Fracture', 'Cardiology', 61023),
(73, 'Talha Ahmed', 26, 'Male', 'Abbottabad', 'Diabetes', 'ICU', 49820),
(74, 'Daniyal Khan', 53, 'Male', 'Islamabad', 'Asthma', 'Pediatrics', 38863),
(75, 'Bilal Chaudhry', 69, 'Male', 'Haripur', 'Infection', 'Cardiology', 59248),
(76, 'Noor Malik', 65, 'Male', 'Peshawar', 'Migraine', 'Pediatrics', 103580),
(77, 'Haris Iqbal', 21, 'Female', 'Islamabad', 'Fracture', 'ICU', 95014),
(78, 'Maryam Butt', 50, 'Male', 'Haripur', 'Migraine', 'ICU', 55405),
(79, 'Waqas Aslam', 43, 'Female', 'Peshawar', 'Migraine', 'General', 21678),
(80, 'Daniyal Ahmed', 20, 'Female', 'Peshawar', 'Allergy', 'General', 14586),
(81, 'Hina Akram', 43, 'Female', 'Peshawar', 'Asthma', 'General', 34333),
(82, 'Maryam Raza', 27, 'Male', 'Rawalpindi', 'Diabetes', 'Cardiology', 16141),
(83, 'Hamza Nawaz', 53, 'Male', 'Haripur', 'Hypertension', 'ICU', 79630),
(84, 'Usman Aslam', 76, 'Male', 'Islamabad', 'Hypertension', 'Pediatrics', 74239),
(85, 'Saad Aslam', 58, 'Female', 'Haripur', 'Diabetes', 'General', 44367),
(86, 'Yasir Hussain', 51, 'Male', 'Peshawar', 'Migraine', 'ICU', 108610),
(87, 'Laiba Butt', 56, 'Male', 'Haripur', 'Migraine', 'Cardiology', 41517),
(88, 'Omar Siddiqui', 79, 'Female', 'Abbottabad', 'Allergy', 'Orthopedics', 35771),
(89, 'Maham Butt', 53, 'Male', 'Haripur', 'Infection', 'Pediatrics', 12249),
(90, 'Zainab Malik', 19, 'Male', 'Peshawar', 'Infection', 'General', 38719),
(91, 'Fatima Malik', 32, 'Female', 'Islamabad', 'Asthma', 'Cardiology', 9469),
(92, 'Usman Iqbal', 62, 'Female', 'Peshawar', 'Fracture', 'Cardiology', 30962),
(93, 'Asad Iqbal', 18, 'Female', 'Rawalpindi', 'Diabetes', 'ICU', 69971),
(94, 'Komal Qureshi', 80, 'Male', 'Islamabad', 'Asthma', 'ICU', 65963),
(95, 'Hina Hussain', 32, 'Female', 'Islamabad', 'Diabetes', 'Orthopedics', 69980),
(96, 'Noor Khan', 57, 'Male', 'Abbottabad', 'Allergy', 'Cardiology', 92201),
(97, 'Usman Butt', 21, 'Male', 'Peshawar', 'Flu', 'ICU', 8097),
(98, 'Yasir Sheikh', 80, 'Male', 'Peshawar', 'Flu', 'General', 29130),
(99, 'Talha Qureshi', 43, 'Female', 'Islamabad', 'Diabetes', 'General', 26709),
(100, 'Laiba Aslam', 39, 'Male', 'Abbottabad', 'Allergy', 'General', 45871),
(101, 'Iqra Qureshi', 60, 'Female', 'Islamabad', 'Fracture', 'Cardiology', 27185),
(102, 'Anum Siddiqui', 24, 'Male', 'Haripur', 'Migraine', 'General', 51067),
(103, 'Haris Khan', 44, 'Male', 'Rawalpindi', 'Asthma', 'Cardiology', 51744),
(104, 'Amna Nawaz', 67, 'Female', 'Peshawar', 'Diabetes', 'General', 97439),
(105, 'Shahzaib Chaudhry', 48, 'Male', 'Islamabad', 'Allergy', 'ICU', 47376),
(106, 'Shahzaib Siddiqui', 41, 'Female', 'Haripur', 'Infection', 'ICU', 111407),
(107, 'Zeeshan Raza', 58, 'Female', 'Haripur', 'Infection', 'General', 65824),
(108, 'Ayesha Akram', 22, 'Male', 'Islamabad', 'Asthma', 'General', 84379),
(109, 'Anum Butt', 39, 'Female', 'Islamabad', 'Fracture', 'Orthopedics', 10712),
(110, 'Fatima Iqbal', 34, 'Female', 'Islamabad', 'Migraine', 'General', 99577),
(111, 'Amna Malik', 66, 'Male', 'Haripur', 'Asthma', 'General', 67283),
(112, 'Talha Khan', 63, 'Female', 'Peshawar', 'Migraine', 'Cardiology', 111797),
(113, 'Ayesha Khan', 49, 'Male', 'Peshawar', 'Hypertension', 'General', 110194),
(114, 'Sana Malik', 77, 'Female', 'Abbottabad', 'Asthma', 'Pediatrics', 117884),
(115, 'Yasir Ahmed', 38, 'Female', 'Islamabad', 'Diabetes', 'Orthopedics', 30862),
(116, 'Omar Qureshi', 43, 'Male', 'Abbottabad', 'Infection', 'General', 90137),
(117, 'Ali Ahmed', 20, 'Female', 'Rawalpindi', 'Fracture', 'ICU', 60909),
(118, 'Shahzaib Iqbal', 74, 'Male', 'Haripur', 'Migraine', 'Orthopedics', 16020),
(119, 'Talha Butt', 31, 'Male', 'Peshawar', 'Allergy', 'Cardiology', 27700),
(120, 'Usman Siddiqui', 32, 'Male', 'Peshawar', 'Allergy', 'Orthopedics', 93356),
(121, 'Hamza Sheikh', 33, 'Male', 'Islamabad', 'Migraine', 'Pediatrics', 79302),
(122, 'Talha Sheikh', 35, 'Female', 'Islamabad', 'Migraine', 'ICU', 62592),
(123, 'Ayesha Aslam', 33, 'Male', 'Abbottabad', 'Asthma', 'ICU', 41877),
(124, 'Daniyal Akram', 74, 'Male', 'Islamabad', 'Diabetes', 'Cardiology', 37984),
(125, 'Noor Ahmed', 33, 'Male', 'Haripur', 'Allergy', 'General', 18412),
(126, 'Usman Ahmed', 18, 'Female', 'Abbottabad', 'Allergy', 'Pediatrics', 10290),
(127, 'Haris Sheikh', 74, 'Female', 'Abbottabad', 'Diabetes', 'General', 29847),
(128, 'Haris Hussain', 56, 'Male', 'Haripur', 'Fracture', 'Orthopedics', 118525),
(129, 'Daniyal Aslam', 29, 'Female', 'Rawalpindi', 'Migraine', 'General', 18864),
(130, 'Laiba Malik', 58, 'Female', 'Abbottabad', 'Flu', 'Pediatrics', 49566),
(131, 'Iqra Khan', 27, 'Male', 'Abbottabad', 'Migraine', 'General', 83567),
(132, 'Bilal Raza', 64, 'Male', 'Haripur', 'Fracture', 'Cardiology', 93908),
(133, 'Laiba Raza', 41, 'Male', 'Rawalpindi', 'Migraine', 'General', 31661),
(134, 'Waqas Khan', 20, 'Female', 'Rawalpindi', 'Allergy', 'General', 58499),
(135, 'Shahzaib Ahmed', 24, 'Female', 'Rawalpindi', 'Hypertension', 'Orthopedics', 16947),
(136, 'Hamza Raza', 59, 'Male', 'Peshawar', 'Migraine', 'Cardiology', 42132),
(137, 'Omar Nawaz', 60, 'Female', 'Peshawar', 'Flu', 'Pediatrics', 102692),
(138, 'Hina Sheikh', 54, 'Female', 'Peshawar', 'Infection', 'General', 118278),
(139, 'Areeba Iqbal', 67, 'Female', 'Abbottabad', 'Infection', 'Cardiology', 31695),
(140, 'Yasir Raza', 78, 'Male', 'Peshawar', 'Hypertension', 'Cardiology', 19881),
(141, 'Sara Siddiqui', 70, 'Male', 'Peshawar', 'Fracture', 'Cardiology', 106325),
(142, 'Zainab Qureshi', 28, 'Male', 'Haripur', 'Flu', 'Orthopedics', 23677),
(143, 'Zeeshan Chaudhry', 59, 'Female', 'Haripur', 'Fracture', 'Orthopedics', 27503),
(144, 'Areeba Aslam', 27, 'Female', 'Islamabad', 'Hypertension', 'Orthopedics', 27516),
(145, 'Zainab Aslam', 77, 'Male', 'Haripur', 'Infection', 'Cardiology', 103770),
(146, 'Maryam Farooq', 69, 'Male', 'Islamabad', 'Hypertension', 'General', 68273),
(147, 'Zeeshan Iqbal', 38, 'Male', 'Rawalpindi', 'Infection', 'General', 98363),
(148, 'Daniyal Sheikh', 57, 'Male', 'Abbottabad', 'Infection', 'Orthopedics', 115932),
(149, 'Ali Chaudhry', 30, 'Female', 'Abbottabad', 'Asthma', 'General', 57395),
(150, 'Hamza Iqbal', 78, 'Male', 'Peshawar', 'Fracture', 'General', 24590),
(151, 'Laiba Qureshi', 33, 'Male', 'Haripur', 'Flu', 'Pediatrics', 20431),
(152, 'Omar Akram', 42, 'Female', 'Rawalpindi', 'Migraine', 'Cardiology', 45397),
(153, 'Zeeshan Nawaz', 55, 'Male', 'Peshawar', 'Infection', 'Pediatrics', 63561),
(154, 'Zainab Akram', 50, 'Female', 'Abbottabad', 'Flu', 'General', 86119),
(155, 'Bilal Sheikh', 49, 'Female', 'Abbottabad', 'Allergy', 'Orthopedics', 107232),
(156, 'Talha Nawaz', 70, 'Female', 'Abbottabad', 'Allergy', 'Cardiology', 19034),
(157, 'Talha Aslam', 22, 'Male', 'Islamabad', 'Infection', 'Pediatrics', 17021),
(158, 'Waqas Siddiqui', 69, 'Female', 'Rawalpindi', 'Flu', 'General', 88419),
(159, 'Omar Chaudhry', 26, 'Male', 'Islamabad', 'Diabetes', 'General', 103573),
(160, 'Anum Ahmed', 50, 'Female', 'Abbottabad', 'Flu', 'General', 85494),
(161, 'Ayesha Nawaz', 64, 'Male', 'Abbottabad', 'Hypertension', 'Cardiology', 42733),
(162, 'Maryam Chaudhry', 79, 'Male', 'Abbottabad', 'Diabetes', 'Pediatrics', 85012),
(163, 'Maham Malik', 66, 'Female', 'Abbottabad', 'Fracture', 'Orthopedics', 41043),
(164, 'Anum Sheikh', 75, 'Female', 'Abbottabad', 'Migraine', 'Orthopedics', 67928),
(165, 'Fatima Chaudhry', 31, 'Female', 'Rawalpindi', 'Asthma', 'Pediatrics', 53793),
(166, 'Haris Butt', 20, 'Male', 'Abbottabad', 'Infection', 'ICU', 88436),
(167, 'Amna Butt', 77, 'Female', 'Islamabad', 'Infection', 'ICU', 108825),
(168, 'Haris Ahmed', 68, 'Female', 'Haripur', 'Flu', 'Pediatrics', 119419),
(169, 'Haris Malik', 46, 'Male', 'Islamabad', 'Infection', 'Pediatrics', 39701),
(170, 'Hina Malik', 42, 'Female', 'Rawalpindi', 'Hypertension', 'Pediatrics', 48362),
(171, 'Ali Malik', 66, 'Male', 'Peshawar', 'Asthma', 'ICU', 85658),
(172, 'Amna Chaudhry', 65, 'Male', 'Islamabad', 'Migraine', 'Pediatrics', 88786),
(173, 'Anum Malik', 79, 'Female', 'Haripur', 'Flu', 'ICU', 24577),
(174, 'Asad Nawaz', 36, 'Female', 'Peshawar', 'Fracture', 'General', 22304),
(175, 'Usman Khan', 49, 'Male', 'Rawalpindi', 'Flu', 'General', 12129),
(176, 'Haris Siddiqui', 18, 'Female', 'Islamabad', 'Diabetes', 'Orthopedics', 51812),
(177, 'Ayesha Raza', 52, 'Male', 'Peshawar', 'Migraine', 'Orthopedics', 22527),
(178, 'Haris Nawaz', 31, 'Female', 'Rawalpindi', 'Allergy', 'ICU', 22661),
(179, 'Komal Aslam', 18, 'Male', 'Abbottabad', 'Allergy', 'General', 13345),
(180, 'Zainab Chaudhry', 58, 'Male', 'Islamabad', 'Infection', 'Pediatrics', 6506),
(181, 'Sana Sheikh', 21, 'Female', 'Rawalpindi', 'Allergy', 'Orthopedics', 72840),
(182, 'Waqas Farooq', 64, 'Female', 'Abbottabad', 'Hypertension', 'General', 10767),
(183, 'Amna Siddiqui', 21, 'Male', 'Peshawar', 'Hypertension', 'ICU', 25868),
(184, 'Sana Aslam', 21, 'Male', 'Haripur', 'Asthma', 'ICU', 59156),
(185, 'Maham Raza', 30, 'Female', 'Rawalpindi', 'Hypertension', 'Orthopedics', 45551),
(186, 'Waqas Nawaz', 22, 'Female', 'Haripur', 'Allergy', 'Orthopedics', 5832),
(187, 'Iqra Malik', 42, 'Female', 'Peshawar', 'Diabetes', 'Cardiology', 27988),
(188, 'Yasir Malik', 32, 'Male', 'Islamabad', 'Asthma', 'General', 21156),
(189, 'Iqra Raza', 39, 'Female', 'Haripur', 'Migraine', 'Orthopedics', 94028),
(190, 'Ali Aslam', 45, 'Female', 'Islamabad', 'Asthma', 'General', 71509),
(191, 'Hina Qureshi', 18, 'Male', 'Islamabad', 'Asthma', 'ICU', 25864),
(192, 'Daniyal Qureshi', 65, 'Female', 'Abbottabad', 'Infection', 'Pediatrics', 83804),
(193, 'Yasir Khan', 33, 'Female', 'Rawalpindi', 'Allergy', 'Cardiology', 115062),
(194, 'Yasir Akram', 51, 'Male', 'Haripur', 'Infection', 'ICU', 79755),
(195, 'Zainab Iqbal', 74, 'Female', 'Abbottabad', 'Infection', 'Orthopedics', 81720),
(196, 'Hamza Khan', 22, 'Male', 'Abbottabad', 'Flu', 'General', 19666),
(197, 'Areeba Ahmed', 24, 'Male', 'Islamabad', 'Hypertension', 'General', 9046),
(198, 'Areeba Nawaz', 20, 'Male', 'Haripur', 'Diabetes', 'General', 13619),
(199, 'Waqas Ahmed', 72, 'Female', 'Abbottabad', 'Diabetes', 'Cardiology', 19039),
(200, 'Talha Raza', 33, 'Male', 'Abbottabad', 'Diabetes', 'General', 9512);


/*============================================================
 Business Analysis Queries
============================================================*/

# Q1. Total Number of Patients */ How many Patients are in Hospital?

SELECT COUNT(*) AS TotalPatients
FROM Patient;

# Q2. Average Age of Patients */ What is the average age of patients?

SELECT AVG(Age) AS Avg_Age
FROM Patient;

# Q3. Gender Distribution */ How many patients belongs to each gender?

SELECT Gender,
			COUNT(*) AS TotalPatients
FROM Patient
GROUP BY Gender;

# Q4. City with Highest Patients */ Which city as the most patients?

SELECT City,
		COUNT(*) AS TotalPatients
FROM Patient
GROUP BY City
ORDER BY TotalPatients DESC;

# Q5. Diagnosis with Highest Average Bill */ Which diagnosis has the highest average bill?

SELECT Diagnosis,
			AVG(Bill) AS AvgBill
FROM Patient
GROUP BY Diagnosis
ORDER BY AvgBill DESC;

# Q6. Wards with More Than 20 Patients */ Which ward have more than 20 patients?

SELECT Ward,
			COUNT(*) AS TotalPatients
FROM Patient
GROUP BY Ward
HAVING COUNT(*) > 20;

# Q7. Categorize Patients by Bill */ Categorize patients based on their bill?

SELECT Name,
	   Bill,
       CASE
       WHEN Bill < 30000 THEN 'LOW'
       WHEN Bill BETWEEN 30000 AND 70000 THEN 'MEDIUM'
       ELSE 'HIGH'
       END AS Bill_Category
FROM Patient;

# Q8. Bills Above Average */ Find patients whose bill is above the overall average?

SELECT Name,
	   Bill
FROM Patient
WHERE Bill > (
			SELECT AVG(Bill)
            FROM Patient);
            
# Q9. High Bill Patients Using CTE */ Create a temporary list of high-bill patient?

WITH HighBillsPatients AS
(
	SELECT *
    FROM Patient
    WHERE Bill > 80000
)
SELECT *
FROM HighBillsPatients;


/*============================================================
 Business Analysis Queries
============================================================*/

# Q1. Total Number of Patients */0 Which city generates the highest hospital revenue?

SELECT City,
		SUM(Bill) AS TotalRevenue
FROM Patient
GROUP BY City
ORDER BY TotalRevenue DESC;


/*============================================================
 Business Analysis Queries
============================================================*/
# Q1. Total Number of Patients */1 What are the top 10 highest bill patients?

SELECT Patient_ID,
	   Name,
       Diagnosis,
       Bill
FROM Patient
ORDER BY Bill DESC
LIMIT 10;


/*============================================================
 Business Analysis Queries
============================================================*/

# Q1. Total Number of Patients */2 Which age group generates the most revenue?

SELECT
	   CASE 
			WHEN Age < 30 THEN '18 - 29'
            WHEN Age BETWEEN 30 AND 50 THEN '30 - 50'
            ELSE '51+'
		END AS AgeGroup,
        SUM(Bill) AS TotalRevenue
FROM Patient
GROUP BY AgeGroup
ORDER BY TotalRevenue DESC;