-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.18-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema foodcourt
--

CREATE DATABASE IF NOT EXISTS foodcourt;
USE foodcourt;

--
-- Definition of table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `SNo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `UName` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`SNo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` (`SNo`,`UName`,`Password`) VALUES 
 (1,'Neha Sharma','54321'),
 (2,'Raunak Kharbanda','54321'),
 (3,'Arjun Dhingra','54321');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;


--
-- Definition of table `barista`
--

DROP TABLE IF EXISTS `barista`;
CREATE TABLE `barista` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Category` varchar(45) NOT NULL,
  `Product` varchar(100) NOT NULL,
  `Price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=456 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barista`
--

/*!40000 ALTER TABLE `barista` DISABLE KEYS */;
INSERT INTO `barista` (`id`,`Category`,`Product`,`Price`) VALUES 
 (401,'Hot Classics','Cafe Latte',139),
 (402,'Hot Classics','Cafe Mocha',149),
 (403,'Hot Classics','Espresso Italiano',89),
 (404,'Hot Classics','Roasted Hazelnut Latte',169),
 (405,'Hot Classics','Irish Cream Latte',169),
 (406,'Hot Classics','Caramel Cappuccino',149),
 (411,'Cold Coffees','Brrrista',139),
 (412,'Cold Coffees','Brrrista Frappe',179),
 (413,'Cold Coffees','Iced Americano',109),
 (414,'Cold Coffees','Iced Cafe Mocha',169),
 (421,'Iced Teas','Lemon Iced Tea',149),
 (422,'Iced Teas','Peach Iced Tea',149),
 (423,'Iced Teas','Strawberry Iced Tea',149),
 (431,'Smoothies','Mango Smoothie',189),
 (432,'Smoothies','Chocolate Smoothie',189),
 (433,'Smoothies','Raspberry Smoothie',189),
 (441,'Mojitos','Classic Mojito',149),
 (442,'Mojitos','Raspberry Mojito',149),
 (443,'Mojitos','Paan Mojito',149),
 (451,'Non Coffees','Hot Chocolate',139),
 (452,'Non Coffees','Assam Tea',105),
 (453,'Non Coffees','Masala Tea',105),
 (454,'Non Coffees','Green Tea',105),
 (455,'Non Coffees','Darjeeling Tea',105);
/*!40000 ALTER TABLE `barista` ENABLE KEYS */;


--
-- Definition of table `baristacategories`
--

DROP TABLE IF EXISTS `baristacategories`;
CREATE TABLE `baristacategories` (
  `SNo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Category` varchar(45) NOT NULL,
  PRIMARY KEY (`SNo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `baristacategories`
--

/*!40000 ALTER TABLE `baristacategories` DISABLE KEYS */;
INSERT INTO `baristacategories` (`SNo`,`Category`) VALUES 
 (1,'Hot Classics'),
 (2,'Cold Coffees'),
 (3,'Iced Teas'),
 (4,'Smoothies'),
 (5,'Mojitos'),
 (6,'Non Coffees');
/*!40000 ALTER TABLE `baristacategories` ENABLE KEYS */;


--
-- Definition of table `ben`
--

DROP TABLE IF EXISTS `ben`;
CREATE TABLE `ben` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Category` varchar(45) NOT NULL,
  `Product` varchar(100) NOT NULL,
  `Price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1053 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ben`
--

/*!40000 ALTER TABLE `ben` DISABLE KEYS */;
INSERT INTO `ben` (`id`,`Category`,`Product`,`Price`) VALUES 
 (1001,'Cups & Cones','Small',100),
 (1002,'Cups & Cones','Large',125),
 (1011,'Toppings','Rainbow Sprinkles',20),
 (1012,'Toppings','Chocolate Jimmies',20),
 (1013,'Toppings','Nuts',35),
 (1014,'Toppings','Chocolate Syrup',20),
 (1015,'Toppings','Whipped Cream',20),
 (1016,'Toppings','Strawberry Sauce',20),
 (1017,'Toppings','Candy',35),
 (1018,'Toppings','Brownie Chunks',35),
 (1019,'Toppings','Fruit',35),
 (1021,'Sundaes','Hot Fudge Sundae',235),
 (1022,'Sundaes','Brownie Special',235),
 (1023,'Sundaes','Cookie Sundae',235),
 (1024,'Sundaes','Waffle Bowl Sundae',260),
 (1025,'Sundaes','VerMonster Sundae',285),
 (1031,'Beverages','Smoothie',220),
 (1032,'Beverages','Shake',200),
 (1033,'Beverages','Malt',200),
 (1034,'Beverages','Root Beer Float',200),
 (1035,'Beverages','Water (bottled)',40),
 (1041,'Cakes','Small',475),
 (1042,'Cakes','Medium',525),
 (1043,'Cakes','Large',600),
 (1051,'Bakery','Cookies',90),
 (1052,'Bakery','Brownies',125);
/*!40000 ALTER TABLE `ben` ENABLE KEYS */;


--
-- Definition of table `bencategories`
--

DROP TABLE IF EXISTS `bencategories`;
CREATE TABLE `bencategories` (
  `SNo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Category` varchar(45) NOT NULL,
  PRIMARY KEY (`SNo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bencategories`
--

/*!40000 ALTER TABLE `bencategories` DISABLE KEYS */;
INSERT INTO `bencategories` (`SNo`,`Category`) VALUES 
 (1,'Cups & Cones'),
 (2,'Toppings'),
 (3,'Sundaes'),
 (4,'Beverages'),
 (5,'Cakes'),
 (6,'Bakery');
/*!40000 ALTER TABLE `bencategories` ENABLE KEYS */;


--
-- Definition of table `buffet`
--

DROP TABLE IF EXISTS `buffet`;
CREATE TABLE `buffet` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Category` varchar(45) NOT NULL,
  `Product` varchar(100) NOT NULL,
  `Price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=609 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `buffet`
--

/*!40000 ALTER TABLE `buffet` DISABLE KEYS */;
INSERT INTO `buffet` (`id`,`Category`,`Product`,`Price`) VALUES 
 (601,'Vegetarian','Weekday Lunch',650),
 (602,'Vegetarian','Weekday Dinner',850),
 (603,'Vegetarian','Weekend Lunch',725),
 (604,'Vegetarian','Weekend Dinner',925),
 (605,'Non-Vegetarian','Weekday Lunch',750),
 (606,'Non-Vegetarian','Weekday Dinner',900),
 (607,'Non-Vegetarian','Weekend Lunch',825),
 (608,'Non-Vegetarian','Weekend Dinner',1025);
/*!40000 ALTER TABLE `buffet` ENABLE KEYS */;


--
-- Definition of table `cashier`
--

DROP TABLE IF EXISTS `cashier`;
CREATE TABLE `cashier` (
  `SNo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `UName` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`SNo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cashier`
--

/*!40000 ALTER TABLE `cashier` DISABLE KEYS */;
INSERT INTO `cashier` (`SNo`,`UName`,`Password`) VALUES 
 (1,'Rakesh','12345'),
 (2,'Prerna','12345'),
 (3,'Manan','12345'),
 (4,'Vikram','12345'),
 (5,'Sheena','12345'),
 (6,'Rahul','12345');
/*!40000 ALTER TABLE `cashier` ENABLE KEYS */;


--
-- Definition of table `dominos`
--

DROP TABLE IF EXISTS `dominos`;
CREATE TABLE `dominos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Category` varchar(45) NOT NULL,
  `Product` varchar(100) NOT NULL,
  `Price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=753 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dominos`
--

/*!40000 ALTER TABLE `dominos` DISABLE KEYS */;
INSERT INTO `dominos` (`id`,`Category`,`Product`,`Price`) VALUES 
 (701,'Veg (Treat & Special)','Country Special',330),
 (702,'Veg (Treat & Special)','Farmhouse',330),
 (703,'Veg (Treat & Special)','Veggie Paradise',405),
 (704,'Veg (Treat & Special)','Deluxe Veggie',405),
 (705,'Veg (Treat & Special)','Mexican Green Wave',405),
 (711,'Non-Veg (Treat & Special)','Chicken Fiesta',405),
 (712,'Non-Veg (Treat & Special)','Barbeque Chicken',405),
 (713,'Non-Veg (Treat & Special)','Chef\'s Chicken Choice',450),
 (714,'Non-Veg (Treat & Special)','Chicken Golden Delight',450),
 (715,'Non-Veg (Treat & Special)','Chicken Mexicana',450),
 (721,'Veg Feast Pizzas','Chef\'s Veg Wonder',460),
 (722,'Veg Feast Pizzas','Veg Extravaganza',460),
 (723,'Veg Feast Pizzas','Cloud 9',460),
 (731,'Non-Veg Feast Pizzas','Chicken Dominator',510),
 (732,'Non-Veg Feast Pizzas','Seventh Heaven',510),
 (733,'Non-Veg Feast Pizzas','Non-Veg Supreme',510),
 (741,'Sides','Zingy Parcel',35),
 (742,'Sides','Chicken Wings',140),
 (743,'Sides','Taco Mexicana',115),
 (744,'Sides','Calzone Pockets',115),
 (745,'Sides','Stuffed Garlic Breads',105),
 (746,'Sides','Cheesy Jalapeno Dip/Cheesy Dip',25),
 (747,'Sides','Pasta Italiano in white sauce',120),
 (748,'Sides','Choco Lava Cake',75),
 (751,'Beverages','Mobile Coke/Fanta/Sprite/7-UP/Thums Up',40),
 (752,'Beverages','Canned Coke/Fanta/Sprite/7-UP/Thums Up',50);
/*!40000 ALTER TABLE `dominos` ENABLE KEYS */;


--
-- Definition of table `dominoscategories`
--

DROP TABLE IF EXISTS `dominoscategories`;
CREATE TABLE `dominoscategories` (
  `SNo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Category` varchar(45) NOT NULL,
  PRIMARY KEY (`SNo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dominoscategories`
--

/*!40000 ALTER TABLE `dominoscategories` DISABLE KEYS */;
INSERT INTO `dominoscategories` (`SNo`,`Category`) VALUES 
 (1,'Veg (Treat & Special)'),
 (2,'Non-Veg (Treat & Special)'),
 (3,'Veg Feast Pizzas'),
 (4,'Non-Veg Feast Pizzas'),
 (5,'Sides'),
 (6,'Beverages');
/*!40000 ALTER TABLE `dominoscategories` ENABLE KEYS */;


--
-- Definition of table `dominosmeal`
--

DROP TABLE IF EXISTS `dominosmeal`;
CREATE TABLE `dominosmeal` (
  `Sno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Product` varchar(100) NOT NULL,
  `Price` float NOT NULL,
  PRIMARY KEY (`Sno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dominosmeal`
--

/*!40000 ALTER TABLE `dominosmeal` DISABLE KEYS */;
INSERT INTO `dominosmeal` (`Sno`,`Product`,`Price`) VALUES 
 (1,'Veg Singles Combo',225),
 (2,'Veg Doubles Combo',305),
 (3,'Non Veg Singles Combo',355),
 (4,'Non Veg Doubles Combo',385),
 (5,'Mixed Doubles Combo',345);
/*!40000 ALTER TABLE `dominosmeal` ENABLE KEYS */;


--
-- Definition of table `dunkin`
--

DROP TABLE IF EXISTS `dunkin`;
CREATE TABLE `dunkin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Category` varchar(45) NOT NULL,
  `Product` varchar(100) NOT NULL,
  `Price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=943 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dunkin`
--

/*!40000 ALTER TABLE `dunkin` DISABLE KEYS */;
INSERT INTO `dunkin` (`id`,`Category`,`Product`,`Price`) VALUES 
 (901,'Burgers','Big Joy Delight',95),
 (902,'Burgers','Double Big Joy',105),
 (903,'Burgers','Dunkin Classic',95),
 (904,'Burgers','Naughty Lucy',220),
 (905,'Burgers','Chef\'s Special',160),
 (906,'Burgers','Spicy Grilled Chicken',135),
 (907,'Burgers','Heaven Can Wait',220),
 (908,'Burgers','Classic Mutton',160),
 (911,'Wraps','Wicked Wrap Veggie',150),
 (912,'Wraps','Wicked Wrap Chicken',170),
 (921,'Snacks','Potato Hash Browns (3 pcs)',60),
 (922,'Snacks','Tex Mex Potato Wedges',60),
 (923,'Snacks','Tex Mex Dip',15),
 (924,'Snacks','Munchkins (Pack of 6)',100),
 (931,'Donuts','Box of 12',595),
 (932,'Donuts','Box of 6',320),
 (933,'Donuts','Classic Glazed/White',62),
 (934,'Donuts','Choco Frosted/ Dark Choco',62),
 (935,'Donuts','Strawberry Creme/ Fruity Choco Berry',62),
 (936,'Donuts','Caramel/Mocha',62),
 (937,'Donuts','Nutty Choco Cuddle',62),
 (938,'Donuts','Boston Creme',62),
 (939,'Donuts','Jelly Filled',62),
 (941,'Beverages','Pet Bottle Coke/Fanta/Sprite/Thums Up',40),
 (942,'Beverages','Kinley Mineral Water',20);
/*!40000 ALTER TABLE `dunkin` ENABLE KEYS */;


--
-- Definition of table `dunkincategories`
--

DROP TABLE IF EXISTS `dunkincategories`;
CREATE TABLE `dunkincategories` (
  `SNO` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Category` varchar(45) NOT NULL,
  PRIMARY KEY (`SNO`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dunkincategories`
--

/*!40000 ALTER TABLE `dunkincategories` DISABLE KEYS */;
INSERT INTO `dunkincategories` (`SNO`,`Category`) VALUES 
 (1,'Burgers'),
 (2,'Wraps'),
 (3,'Snacks'),
 (4,'Donuts'),
 (5,'Beverages');
/*!40000 ALTER TABLE `dunkincategories` ENABLE KEYS */;


--
-- Definition of table `dunkinmeal`
--

DROP TABLE IF EXISTS `dunkinmeal`;
CREATE TABLE `dunkinmeal` (
  `Sno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Product` varchar(100) NOT NULL,
  `Price` float NOT NULL,
  PRIMARY KEY (`Sno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dunkinmeal`
--

/*!40000 ALTER TABLE `dunkinmeal` DISABLE KEYS */;
INSERT INTO `dunkinmeal` (`Sno`,`Product`,`Price`) VALUES 
 (1,'Chef\'s Favourite Meal',235),
 (2,'Big Joy Delight Meal',170),
 (3,'Wicked Veg Meal',225),
 (4,'Wicked Non Veg Meal',240);
/*!40000 ALTER TABLE `dunkinmeal` ENABLE KEYS */;


--
-- Definition of table `employeeinfo`
--

DROP TABLE IF EXISTS `employeeinfo`;
CREATE TABLE `employeeinfo` (
  `eid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Dutyinfo` varchar(45) NOT NULL,
  `Shift` varchar(45) NOT NULL,
  `Salary` int(10) unsigned NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employeeinfo`
--

/*!40000 ALTER TABLE `employeeinfo` DISABLE KEYS */;
INSERT INTO `employeeinfo` (`eid`,`Name`,`Dutyinfo`,`Shift`,`Salary`) VALUES 
 (101,'Aman Bawa','McDonalds - Kitchen','Full Time',16000),
 (102,'Rohit Golia','McDonalds - Kitchen','Full Time',16080),
 (103,'Kanwar Randhawa','McDonalds - Attendant','Full Time',12000),
 (104,'Karan Sharma','McDonalds - Cleaning','Full Time',9000),
 (105,'Prerna Saini','KFC - Attendant','Full Time',12500),
 (106,'Divya Kumar','KFC - Kitchen','Full Time',16000),
 (107,'Aditya Ralhan','KFC - Kitchen','Full Time',16000),
 (108,'Amit Kapoor','KFC - Cleaning','Full Time',9000),
 (109,'Rohan Aggarwal','Starbucks - Cleaning','Full Time',9000),
 (110,'Lovish Sukhija','Starbucks - Kitchen','Full Time',16000),
 (111,'Pulkit Nanda','Starbucks - Kitchen','Full Time',16000),
 (112,'Taman Kaur','Starbucks - Attendant','Full Time',12000),
 (113,'Sonia Gupta','Barista - Attendant','Full Time',12000),
 (114,'Amrit Singh','Barista - Cleaning','Full Time',9000),
 (115,'Kalpana Mehra','Barista - Kitchen','Full Time',16000),
 (116,'Sanya Verma','Barista - Kitchen','Full Time',16000),
 (117,'Arjun Mishra','Pizza Hut - Cleaning','Full Time',9000),
 (118,'Kamal Dhawan','Pizza Hut - Attendant','Full Time',12000),
 (119,'Simran Soni','Pizza Hut - Kitchen','Full Time',16000),
 (120,'Radhika Awasthi','Pizza Hut - Kitchen','Full Time',16000),
 (121,'Nikhil Mathur','Dominos - Kitchen','Full Time',16000),
 (122,'Shyam Jaiswal','Dominos - Kitchen','Full Time',16000),
 (123,'Pranav Jindal','Dominos - Cleaning','Full Time',9000),
 (124,'Gautam Kothari','Dominos - Attendant','Full Time',12000),
 (125,'Pankaj Saini','Dunkin Donuts - Attendant','Full Time',12000),
 (126,'Shivam Kumar','Dunkin Donuts - Kitchen','Full Time',16000),
 (127,'Raman Malhotra','Dunkin Donuts - Kitchen','Full Time',16000),
 (128,'Piyush Mohindra','Dunkin Donuts - Cleaning','Full Time',9000),
 (129,'Siddharth Bhatia','Ben & Jerry\'s - Kitchen','Full Time',16000),
 (130,'Vikram Bedi','Ben & Jerry\'s - Kitchen','Full Time',16000),
 (131,'Ramesh Shorey','Ben & Jerry\'s - Cleaning','Full Time',9000),
 (132,'Kritika Sharma','Ben & Jerry\'s - Attendant','Full Time',12000),
 (133,'Suhana Gupta','Nando\'s - Cleaning','Full Time',9000),
 (134,'Aashna Singla','Nando\'s - Attendant','Full Time',12000),
 (135,'Rohit Kumar','Nando\'s - Kitchen','Full Time',16000),
 (136,'Kirti Mehta','Nando\'s - Kitchen','Full Time',16000),
 (137,'Shivani Mehra','Ovenfresh - Attendant','Full Time',12000),
 (138,'Vani Bawa','Ovenfresh - Kitchen','Full Time',16000),
 (139,'Pawan Kapoor','Ovenfresh - Kitchen','Full Time',16000),
 (140,'Sameer Singla','Ovenfresh - Cleaning','Full Time',9000),
 (141,'Aditi Aggarwal','The Buffet - Kitchen','Full Time',16000),
 (142,'Anish Ahuja','The Buffet - Kitchen','Full Time',16000),
 (143,'Akash Bakshi','The Buffet - Kitchen','Full Time',16000),
 (144,'Dhruv Chopra','The Buffet - Kitchen','Half Time',16000),
 (145,'Lakshay Arora','The Buffet - Servers','Full Time',10000),
 (146,'Jaspreet Kohli','The Buffet - Servers','Full Time',10000),
 (148,'Rakesh Joshi','The Buffet - Servers','Full Time',10000),
 (149,'Priya Grover','The Buffet - Servers','Half Time',10000),
 (150,'Sonia Bhasin','The Buffet - Cleaning','Half Time',9000),
 (151,'Kamal Goswami','The Buffet - Cleaning','Half Time',9000),
 (152,'Pooja Singla','The Buffet - Attendant','Full Time',12000),
 (153,'Rakesh','Cashier','Half Time',10000),
 (154,'Prerna','Cashier','Half Time',10000),
 (155,'Manan','Cashier','Half Time',10000),
 (156,'Vikram','Cashier','Half Time',10000),
 (157,'Sheena','Cashier','Half Time',10000),
 (158,'Rahul','Cashier','Half Time',10000);
/*!40000 ALTER TABLE `employeeinfo` ENABLE KEYS */;


--
-- Definition of table `kfc`
--

DROP TABLE IF EXISTS `kfc`;
CREATE TABLE `kfc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Category` varchar(45) NOT NULL,
  `Product` varchar(100) NOT NULL,
  `Price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=264 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kfc`
--

/*!40000 ALTER TABLE `kfc` DISABLE KEYS */;
INSERT INTO `kfc` (`id`,`Category`,`Product`,`Price`) VALUES 
 (201,'Snacks','Hash Browns w/ Dip',119),
 (202,'Snacks','Hot Wings',149),
 (203,'Snacks','Chicken Popcorn',119),
 (204,'Snacks','Boneless Strips',149),
 (205,'Snacks','Large Fries',149),
 (206,'Snacks','Medium Fries',129),
 (207,'Snacks','Regular Fries',109),
 (208,'Snacks','Veg Strips',115),
 (211,'Burgers','Cheezy Crunch Burger',95),
 (212,'Burgers','Chicken Zinger',125),
 (213,'Burgers','Paneer Zinger',89),
 (214,'Burgers','Chicken Rockin\' Burger',155),
 (221,'Box Meal','5-in-1 Rice Meal Box',215),
 (222,'Box Meal','5-in-1 Zinger Meal Box',235),
 (223,'Box Meal','KFC Rock Box Chicken',269),
 (224,'Box Meal','Veg Crunch Box',235),
 (231,'Chicken','2pc Hot & Crispy',129),
 (232,'Chicken','4pc Hot & Crispy',199),
 (233,'Chicken','2pc Fiery Grilled',145),
 (234,'Chicken','4pc Fiery Grilled',229),
 (241,'Rice Bowlz','Veg Rice Bowl',199),
 (242,'Rice Bowlz','Chicken Popcorn Rice Bowl',245),
 (243,'Rice Bowlz','Fiery Grilled Rice Bowl',265),
 (251,'Krushers','Virgin Mojito',79),
 (252,'Krushers','Choco Lash',99),
 (253,'Krushers','Chocopeanut Bolt',105),
 (254,'Krushers','Alphonso Burst',129),
 (255,'Krushers','Strawberry Storm',129),
 (261,'Share a Bucket','8pc Hot & Crispy',425),
 (262,'Share a Bucket','8pc Fiery Grilled',499),
 (263,'Share a Bucket','Mingles Bucket',449);
/*!40000 ALTER TABLE `kfc` ENABLE KEYS */;


--
-- Definition of table `kfccategories`
--

DROP TABLE IF EXISTS `kfccategories`;
CREATE TABLE `kfccategories` (
  `SNo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Category` varchar(45) NOT NULL,
  PRIMARY KEY (`SNo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kfccategories`
--

/*!40000 ALTER TABLE `kfccategories` DISABLE KEYS */;
INSERT INTO `kfccategories` (`SNo`,`Category`) VALUES 
 (1,'Snacks'),
 (2,'Burgers'),
 (3,'Box Meal'),
 (4,'Chicken'),
 (5,'Rice bowlz'),
 (6,'Krushers'),
 (7,'Share a Bucket');
/*!40000 ALTER TABLE `kfccategories` ENABLE KEYS */;


--
-- Definition of table `kfcmeal`
--

DROP TABLE IF EXISTS `kfcmeal`;
CREATE TABLE `kfcmeal` (
  `SNo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Product` varchar(100) NOT NULL,
  `Price` float NOT NULL,
  PRIMARY KEY (`SNo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kfcmeal`
--

/*!40000 ALTER TABLE `kfcmeal` DISABLE KEYS */;
INSERT INTO `kfcmeal` (`SNo`,`Product`,`Price`) VALUES 
 (1,'Chicken Zinger Combo',260),
 (2,'8pc Bucket Combo',525);
/*!40000 ALTER TABLE `kfcmeal` ENABLE KEYS */;


--
-- Definition of table `mcd`
--

DROP TABLE IF EXISTS `mcd`;
CREATE TABLE `mcd` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Category` varchar(45) NOT NULL,
  `Product` varchar(100) NOT NULL,
  `Price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mcd`
--

/*!40000 ALTER TABLE `mcd` DISABLE KEYS */;
INSERT INTO `mcd` (`id`,`Category`,`Product`,`Price`) VALUES 
 (101,'Breakfast','Fruit N\' Yogurt Parfait',149),
 (102,'Breakfast','Egg McMuffin',59),
 (103,'Breakfast','Egg White DElight McMuffin',65),
 (104,'Breakfast','Sauasage McMuffin',89),
 (105,'Breakfast','Bacon, Egg & Cheese Biscuit',89),
 (106,'Breakfast','Big Breakfast',189),
 (107,'Breakfast','Big Breakfast w/ Hotcakes',215),
 (108,'Breakfast','Hash Browns',119),
 (109,'Breakfast','Fruit & Maple Oatmeal',149),
 (111,'Burgers','Maple Bacon Dijon',119),
 (112,'Burgers','Pico Guacamole',89),
 (113,'Burgers','Sweet BBQ Chicken',99),
 (114,'Burgers','Big Mac',119),
 (115,'Burgers','Quarter Pounder w/ Cheese',99),
 (116,'Burgers','Double Quarter Pounder w/ Cheese',119),
 (117,'Burgers','Hamburger',149),
 (118,'Burgers','Cheeseburger',129),
 (121,'Salads','Bacon Ranch Salad',119),
 (122,'Salads','Bacon Ranch Grilled Chicken Salad',179),
 (123,'Salads','Southwest Buttermilk Salad',159),
 (124,'Salads','Southwest Grilled Chicken Salad',199),
 (125,'Salads','Side Salad',99),
 (131,'Sides','French Fries',69),
 (132,'Sides','Spicy Fries',89),
 (133,'Sides','Strawberry Yogurt',55),
 (134,'Sides','Fruit Parfait',119),
 (135,'Sides','Side Munchie Salad',119),
 (141,'Drinks','Flavoured Soda Drinks',45),
 (142,'Drinks','Chocolate Shake',79),
 (143,'Drinks','Strawberry Shake',99),
 (144,'Drinks','Vanilla Shake',75),
 (145,'Drinks','Iced Tea',69),
 (146,'Drinks','Caramel Frappe',115),
 (147,'Drinks','Choco Chip Frappe',115),
 (148,'Drinks','McCafe Coffee',99),
 (149,'Drinks','Sweet Tea',89),
 (151,'Desserts','Vanilla Cone',75),
 (152,'Desserts','McFlurry ROLO',99),
 (153,'Desserts','Hot Fudge Sundae',105),
 (154,'Desserts','McFlurry w/ m&ms',119),
 (155,'Desserts','Caramel Sundae',99),
 (156,'Desserts','Strawberry Sundae',99),
 (157,'-','-',0),
 (158,'-','-',0),
 (159,'-','-',0);
/*!40000 ALTER TABLE `mcd` ENABLE KEYS */;


--
-- Definition of table `mcdcategories`
--

DROP TABLE IF EXISTS `mcdcategories`;
CREATE TABLE `mcdcategories` (
  `SNo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Category` varchar(50) NOT NULL,
  PRIMARY KEY (`SNo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mcdcategories`
--

/*!40000 ALTER TABLE `mcdcategories` DISABLE KEYS */;
INSERT INTO `mcdcategories` (`SNo`,`Category`) VALUES 
 (1,'Breakfast'),
 (2,'Burgers'),
 (3,'Salads'),
 (4,'Sides'),
 (5,'Drinks'),
 (6,'Desserts');
/*!40000 ALTER TABLE `mcdcategories` ENABLE KEYS */;


--
-- Definition of table `mcdmeal`
--

DROP TABLE IF EXISTS `mcdmeal`;
CREATE TABLE `mcdmeal` (
  `SNo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Product` varchar(100) NOT NULL,
  `Price` float NOT NULL,
  PRIMARY KEY (`SNo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mcdmeal`
--

/*!40000 ALTER TABLE `mcdmeal` DISABLE KEYS */;
INSERT INTO `mcdmeal` (`SNo`,`Product`,`Price`) VALUES 
 (1,'Spicy Sharing Pack',280),
 (2,'Maharaja Sharing Pack',345),
 (3,'McBreakfast Pack',230),
 (4,'McCafe Sweet Meal',195);
/*!40000 ALTER TABLE `mcdmeal` ENABLE KEYS */;


--
-- Definition of table `nando`
--

DROP TABLE IF EXISTS `nando`;
CREATE TABLE `nando` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Category` varchar(45) NOT NULL,
  `Product` varchar(100) NOT NULL,
  `Price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1166 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nando`
--

/*!40000 ALTER TABLE `nando` DISABLE KEYS */;
INSERT INTO `nando` (`id`,`Category`,`Product`,`Price`) VALUES 
 (1101,'Appetizers','Chicken Wings',290),
 (1102,'Appetizers','Spicy Mixed Olives',180),
 (1103,'Appetizers','Hummus with PERI-PERI Drizzle',190),
 (1104,'Appetizers','Garlic Bread',120),
 (1111,'Burgers, Pitas, Wraps','Chicken Wrap (Combined w/ 1 side)',370),
 (1112,'Burgers, Pitas, Wraps','Chicken Breast Burger (Combined w/ 1 side)',370),
 (1113,'Burgers, Pitas, Wraps','Chicken Caesar Wrap (Combined w/ 1 side)',400),
 (1114,'Burgers, Pitas, Wraps','Chicken Pita (Combined w/ 1 side)',370),
 (1115,'Burgers, Pitas, Wraps','Nandocas Choice',490),
 (1121,'Sides','Coleslaw',120),
 (1122,'Sides','PERi-PERi Chips',120),
 (1123,'Sides','PERi-PERi Wedges',120),
 (1124,'Sides','Chargrilled Veg',120),
 (1125,'Sides','Corn-on-the-Cob',120),
 (1131,'Salads','Algarve Salad',250),
 (1132,'Salads','Mediterranean Salad',250),
 (1133,'Salads','Caesar Salad',250),
 (1134,'Salads','Portugese Salad',190),
 (1141,'Beverages','Refillable Soft Drinks',120),
 (1142,'Beverages','Iced Tea',120),
 (1143,'Beverages','Fresh Lime Soda',140),
 (1144,'Beverages','Portugese Lemonade',150),
 (1145,'Beverages','Bottled Water',60),
 (1151,'Designer Drinks','Citra',195),
 (1152,'Designer Drinks','Citrus Bliss',195),
 (1153,'Designer Drinks','Madeira Red',195),
 (1154,'Designer Drinks','Refreshmint',195),
 (1155,'Designer Drinks','Rosa Fresca',195),
 (1161,'Desserts','Natas',100),
 (1162,'Desserts','Mango Mousse Cake',200),
 (1163,'Desserts','Choco Raspberry Cake',200),
 (1164,'Desserts','Choco Cake',200),
 (1165,'Desserts','Creamy Cheese Cake',120);
/*!40000 ALTER TABLE `nando` ENABLE KEYS */;


--
-- Definition of table `nandocategories`
--

DROP TABLE IF EXISTS `nandocategories`;
CREATE TABLE `nandocategories` (
  `SNo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Category` varchar(45) NOT NULL,
  PRIMARY KEY (`SNo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nandocategories`
--

/*!40000 ALTER TABLE `nandocategories` DISABLE KEYS */;
INSERT INTO `nandocategories` (`SNo`,`Category`) VALUES 
 (1,'Appetizers'),
 (2,'Burgers, Pitas, Wraps'),
 (3,'Sides'),
 (4,'Salads'),
 (5,'Beverages'),
 (6,'Designer Drinks'),
 (7,'Desserts');
/*!40000 ALTER TABLE `nandocategories` ENABLE KEYS */;


--
-- Definition of table `nandomeal`
--

DROP TABLE IF EXISTS `nandomeal`;
CREATE TABLE `nandomeal` (
  `SNo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Product` varchar(100) NOT NULL,
  `Price` float NOT NULL,
  PRIMARY KEY (`SNo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nandomeal`
--

/*!40000 ALTER TABLE `nandomeal` DISABLE KEYS */;
INSERT INTO `nandomeal` (`SNo`,`Product`,`Price`) VALUES 
 (1,'Nando\'s Original Meal',295),
 (2,'Wrapped up & Soda Meal',245),
 (3,'Kid\'s Favourite Meal',265);
/*!40000 ALTER TABLE `nandomeal` ENABLE KEYS */;


--
-- Definition of table `ovenfresh`
--

DROP TABLE IF EXISTS `ovenfresh`;
CREATE TABLE `ovenfresh` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Category` varchar(45) NOT NULL,
  `Product` varchar(100) NOT NULL,
  `Price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=863 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ovenfresh`
--

/*!40000 ALTER TABLE `ovenfresh` DISABLE KEYS */;
INSERT INTO `ovenfresh` (`id`,`Category`,`Product`,`Price`) VALUES 
 (801,'Thai','Thai Green Curry w/ Basil Rice (Veg)',330),
 (802,'Thai','Thai Red Curry w/ Basil Rice (Veg)',330),
 (803,'Thai','Thai Green Curry w/ Basil Rice (Non Veg)',360),
 (804,'Thai','Thai Red Curry w/ Basil Rice (Non Veg)',380),
 (811,'Crescent Sandwiches','Paneer Tikka',200),
 (812,'Crescent Sandwiches','Veg. Crescent',200),
 (813,'Crescent Sandwiches','Chicken Tikka',230),
 (814,'Crescent Sandwiches','BBQ Chicken',230),
 (821,'Pizzas','BBQ Chicken Pizza',360),
 (822,'Pizzas','Meat Trio',360),
 (823,'Pizzas','Achari Chicken',360),
 (824,'Pizzas','Garden Fresh',320),
 (825,'Pizzas','Mexican Heat Wave',320),
 (826,'Pizzas','Seasons Penne Alfredo',320),
 (831,'Pancakes','Honey Jacks',210),
 (832,'Pancakes','Chocolate',210),
 (833,'Pancakes','Strawberry',210),
 (841,'Baked Pastas','Baked Brocolli Alfredo',390),
 (842,'Baked Pastas','Baked Penne Arrabiata',360),
 (843,'Baked Pastas','Baked Sausage Alfredo',430),
 (844,'Baked Pastas','Baked Spaghetti Bolognaise',430),
 (851,'Continental','Grilled Chicken w/ Mushroom Sauce',350),
 (852,'Continental','Black Pepper Cheese Steak',300),
 (853,'Continental','Grilled Vegetables w/ Parmesan Sauce',220),
 (861,'Burgers','Veg. Burger',170),
 (862,'Burgers','Chicken Burger',240);
/*!40000 ALTER TABLE `ovenfresh` ENABLE KEYS */;


--
-- Definition of table `ovenfreshcategories`
--

DROP TABLE IF EXISTS `ovenfreshcategories`;
CREATE TABLE `ovenfreshcategories` (
  `SNo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Category` varchar(45) NOT NULL,
  PRIMARY KEY (`SNo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ovenfreshcategories`
--

/*!40000 ALTER TABLE `ovenfreshcategories` DISABLE KEYS */;
INSERT INTO `ovenfreshcategories` (`SNo`,`Category`) VALUES 
 (1,'Thai'),
 (2,'Crescent Sandwiches'),
 (3,'Pizzas'),
 (4,'Pancakes'),
 (5,'Baked Pastas'),
 (6,'Continental'),
 (7,'Burgers');
/*!40000 ALTER TABLE `ovenfreshcategories` ENABLE KEYS */;


--
-- Definition of table `pizzahut`
--

DROP TABLE IF EXISTS `pizzahut`;
CREATE TABLE `pizzahut` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Category` varchar(45) NOT NULL,
  `Product` varchar(100) NOT NULL,
  `Price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=592 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pizzahut`
--

/*!40000 ALTER TABLE `pizzahut` DISABLE KEYS */;
INSERT INTO `pizzahut` (`id`,`Category`,`Product`,`Price`) VALUES 
 (501,'Supreme Pizzas','Veggie Supreme',490),
 (502,'Supreme Pizzas','Exotica',490),
 (503,'Supreme Pizzas','Paneer Vegorama',490),
 (504,'Supreme Pizzas','Chicken Supreme',570),
 (505,'Supreme Pizzas','Triple Chicken Feast',570),
 (506,'Supreme Pizzas','Chicken Italiano',570),
 (507,'Supreme Pizzas','Ultimate Chicken',570),
 (511,'Signature Pizzas','Tandoori Paneer',460),
 (512,'Signature Pizzas','Veggie Lover',460),
 (513,'Signature Pizzas','Country Feast',460),
 (514,'Signature Pizzas','Chicken Tikka',490),
 (515,'Signature Pizzas','Double Trouble',490),
 (516,'Signature Pizzas','Chickeroni',490),
 (521,'Favourite Pizzas','Double Cheese',370),
 (522,'Favourite Pizzas','Veggie Feast',370),
 (523,'Favourite Pizzas','Rawalpindi Chana',370),
 (524,'Favourite Pizzas','Chicken N Spicy',460),
 (525,'Favourite Pizzas','Keema Masala',460),
 (531,'Classic Pizzas','Margherita',250),
 (532,'Classic Pizzas','Chicken Sausage',350),
 (541,'Hand Tossed Big Pizzas','Paneer Overloaded',270),
 (542,'Hand Tossed Big Pizzas','Veggie Overloaded',240),
 (543,'Hand Tossed Big Pizzas','Spice Overloaded',240),
 (544,'Hand Tossed Big Pizzas','Spicy Chicken Overloaded',300),
 (555,'Hand Tossed Big Pizzas','Classic Chicken Overloaded',300),
 (561,'Sides','Spicy Baked Chicken Wings',170),
 (562,'Sides','Garlic Bread Exotica',140),
 (563,'Sides','Garlic Bread Cheese',110),
 (564,'Sides','Garlic Bread Spicy Supreme',130),
 (565,'Sides','Garlic Bread',90),
 (566,'Sides','Stuffed Pocket Veg',80),
 (567,'Sides','Stuffed Pocket Non Veg',100),
 (568,'Sides','Texas Garlic Dip',25),
 (571,'Drinks','Red Bull',126),
 (572,'Drinks','Frooti',61),
 (573,'Drinks','Cafe Cuba',52),
 (574,'Drinks','Appy Edge',34),
 (575,'Drinks','7-UP/Mirinda/Pepsi',60),
 (581,'Pasta','Spanish Tomato Veg Pasta',140),
 (582,'Pasta','Spanish Tomato Non Veg Pasta',160),
 (591,'Desserts','Choco Mousse',80);
/*!40000 ALTER TABLE `pizzahut` ENABLE KEYS */;


--
-- Definition of table `pizzahutcategories`
--

DROP TABLE IF EXISTS `pizzahutcategories`;
CREATE TABLE `pizzahutcategories` (
  `SNo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Category` varchar(45) NOT NULL,
  PRIMARY KEY (`SNo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pizzahutcategories`
--

/*!40000 ALTER TABLE `pizzahutcategories` DISABLE KEYS */;
INSERT INTO `pizzahutcategories` (`SNo`,`Category`) VALUES 
 (1,'Supreme Pizzas'),
 (2,'Signature Pizzas'),
 (3,'Favourite Pizzas'),
 (4,'Classic Pizzas'),
 (5,'Hand Tossed Big Pizzas'),
 (6,'Sides'),
 (7,'Drinks'),
 (8,'Pasta'),
 (9,'Desserts');
/*!40000 ALTER TABLE `pizzahutcategories` ENABLE KEYS */;


--
-- Definition of table `pizzahutmeal`
--

DROP TABLE IF EXISTS `pizzahutmeal`;
CREATE TABLE `pizzahutmeal` (
  `SNo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Product` varchar(100) NOT NULL,
  `Price` float NOT NULL,
  PRIMARY KEY (`SNo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pizzahutmeal`
--

/*!40000 ALTER TABLE `pizzahutmeal` DISABLE KEYS */;
INSERT INTO `pizzahutmeal` (`SNo`,`Product`,`Price`) VALUES 
 (1,'Triple Treat Box Veg',630),
 (2,'Triple Treat Box Non-Veg',700),
 (3,'Overloaded Meal',350),
 (4,'Magic Pan Box Veg',300),
 (5,'Magic Pan Box Non-Veg',410);
/*!40000 ALTER TABLE `pizzahutmeal` ENABLE KEYS */;


--
-- Definition of table `starbucks`
--

DROP TABLE IF EXISTS `starbucks`;
CREATE TABLE `starbucks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Category` varchar(45) NOT NULL,
  `Product` varchar(100) NOT NULL,
  `Price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=389 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `starbucks`
--

/*!40000 ALTER TABLE `starbucks` DISABLE KEYS */;
INSERT INTO `starbucks` (`id`,`Category`,`Product`,`Price`) VALUES 
 (301,'Feautured Drinks','Coconut Strawberry Frappuccino',139),
 (302,'Feautured Drinks','Roasted Marshmallow Frappuccino',159),
 (303,'Feautured Drinks','Mocha Cookie Crumble',159),
 (304,'Feautured Drinks','Alphonso & Java Chip Frappuccino',179),
 (311,'Espresso Drinks','Caffe Latte',99),
 (312,'Espresso Drinks','Vanilla Latte',99),
 (313,'Espresso Drinks','Hazelnut Latte',119),
 (314,'Espresso Drinks','Caramel Latte',105),
 (315,'Espresso Drinks','Cocoa Cappuccino',149),
 (316,'Espresso Drinks','Caffe Mocha',149),
 (317,'Espresso Drinks','Caramel Machiato',149),
 (318,'Espresso Drinks','Espresso Machiato',175),
 (321,'Freshly Brewed Coffee','Blends & Single - Origin Coffee',179),
 (322,'Freshly Brewed Coffee','Iced Brewed Coffee',199),
 (323,'Freshly Brewed Coffee','Caffe Misto',165),
 (331,'Coffee Frappuccino','Mocha Frappuccino',139),
 (332,'Coffee Frappuccino','Java Chip Frappuccino',139),
 (333,'Coffee Frappuccino','Caramel Frappuccino',169),
 (334,'Coffee Frappuccino','Coffee Frappuccino',145),
 (335,'Coffee Frappuccino','Espresso Frappuccino',199),
 (336,'Coffee Frappuccino','White Mocha Frappuccino',199),
 (341,'Other Beverages','Signature Hot Chocolate',229),
 (351,'Cold Brew','Cold Brew',199),
 (352,'Cold Brew','Vanilla Sweet Cream Cold Brew',249),
 (361,'Desserts','Cherry Choco Cake',225),
 (362,'Desserts','Date & Walnut Cake',225),
 (363,'Desserts','Blueberry Delight Cake',259),
 (364,'Desserts','Chocolate Brownie',239),
 (365,'Desserts','Red Velvet Orange Cake',275),
 (366,'Desserts','Chocolate Raspberry Cake',239),
 (371,'Cookies & Muffins','Almond & Butterscotch Cookie',105),
 (372,'Cookies & Muffins','Java Chip Chocolate Cookie',129),
 (373,'Cookies & Muffins','Blueberry Muffin',125),
 (374,'Cookies & Muffins','Java Chip Chocolate Muffin',149),
 (381,'Sandwiches & Wraps','Chicken Mozzarella Wrap',225),
 (382,'Sandwiches & Wraps','Grilled Chicken Salad Sandwich',199),
 (383,'Sandwiches & Wraps','Chicken Club Sandwich',199),
 (384,'Sandwiches & Wraps','Salmon & Cheese Croissant',275),
 (385,'Sandwiches & Wraps','Chilli Cheese Toast',190),
 (386,'Sandwiches & Wraps','Spinach and Corn Flat Bread',165),
 (387,'Sandwiches & Wraps','Hawaiian Veg Club Sandwich',185),
 (388,'Sandwiches & Wraps','Mexican Veg Club Sandwich',199);
/*!40000 ALTER TABLE `starbucks` ENABLE KEYS */;


--
-- Definition of table `starbuckscategories`
--

DROP TABLE IF EXISTS `starbuckscategories`;
CREATE TABLE `starbuckscategories` (
  `SNo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Category` varchar(100) NOT NULL,
  PRIMARY KEY (`SNo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `starbuckscategories`
--

/*!40000 ALTER TABLE `starbuckscategories` DISABLE KEYS */;
INSERT INTO `starbuckscategories` (`SNo`,`Category`) VALUES 
 (1,'Featured Drinks'),
 (2,'Espresso Drinks'),
 (3,'Freshly Brewed Coffee'),
 (4,'Coffee Frappuccino'),
 (5,'Other Beverages'),
 (6,'Cold Brew'),
 (7,'Desserts'),
 (8,'Cookies and Muffins'),
 (9,'Sandwiches and Wraps');
/*!40000 ALTER TABLE `starbuckscategories` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
