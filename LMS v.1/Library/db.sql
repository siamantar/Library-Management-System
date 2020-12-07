CREATE TABLE IF NOT EXISTS `librarian` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS `books` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `callno` varchar(100) NOT NULL UNIQUE,
  `name` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `quantity` int NOT NULL,
  `issued` int NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS `issuebooks` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `bookcallno` varchar(50) NOT NULL,
  `studentid` int NOT NULL,
  `studentname` varchar(50) NOT NULL,
  `studentcontact` varchar(20) NOT NULL,
  `issueddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);
