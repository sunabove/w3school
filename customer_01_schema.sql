SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE DATABASE IF NOT EXISTS mydb /*!40100 DEFAULT CHARACTER SET utf8 */;
USE mydb;
--
-- Database: mydb
--

-- --------------------------------------------------------

--
-- Table structure for table categories
--

CREATE TABLE categories (
  CategoryID int(11) NOT NULL,
  CategoryName varchar(255) DEFAULT NULL,
  Description varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table customers
--

CREATE TABLE customers (
  CustomerID int(11) NOT NULL,
  CustomerName varchar(255) DEFAULT NULL,
  ContactName varchar(255) DEFAULT NULL,
  Address varchar(255) DEFAULT NULL,
  City varchar(255) DEFAULT NULL,
  PostalCode varchar(255) DEFAULT NULL,
  Country varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table employees
--

CREATE TABLE employees (
  EmployeeID int(11) NOT NULL,
  LastName varchar(255) DEFAULT NULL,
  FirstName varchar(255) DEFAULT NULL,
  BirthDate date DEFAULT NULL,
  Photo varchar(255) DEFAULT NULL,
  Notes text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table orders
--

CREATE TABLE orders (
  OrderID int(11) NOT NULL,
  CustomerID int(11) DEFAULT NULL,
  EmployeeID int(11) DEFAULT NULL,
  OrderDate date DEFAULT NULL,
  ShipperID int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table order_details
--

CREATE TABLE order_details (
  OrderDetailID int(11) NOT NULL,
  OrderID int(11) DEFAULT NULL,
  ProductID int(11) DEFAULT NULL,
  Quantity int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table products
--

CREATE TABLE products (
  ProductID int(11) NOT NULL,
  ProductName varchar(255) DEFAULT NULL,
  SupplierID int(11) DEFAULT NULL,
  CategoryID int(11) DEFAULT NULL,
  Unit varchar(255) DEFAULT NULL,
  Price double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table shippers
--

CREATE TABLE shippers (
  ShipperID int(11) NOT NULL,
  ShipperName varchar(255) DEFAULT NULL,
  Phone varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table suppliers
--

CREATE TABLE suppliers (
  SupplierID int(11) NOT NULL,
  SupplierName varchar(255) DEFAULT NULL,
  ContactName varchar(255) DEFAULT NULL,
  Address varchar(255) DEFAULT NULL,
  City varchar(255) DEFAULT NULL,
  PostalCode varchar(255) DEFAULT NULL,
  Country varchar(255) DEFAULT NULL,
  Phone varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
