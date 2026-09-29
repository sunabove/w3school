SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE DATABASE IF NOT EXISTS mydb ;
USE mydb;

CREATE TABLE categories (
  CategoryID int NOT NULL,
  CategoryName varchar(255) DEFAULT NULL,
  Description varchar(255) DEFAULT NULL
) ;

CREATE TABLE customers (
  CustomerID int NOT NULL,
  CustomerName varchar(255) DEFAULT NULL,
  ContactName varchar(255) DEFAULT NULL,
  Address varchar(255) DEFAULT NULL,
  City varchar(255) DEFAULT NULL,
  PostalCode varchar(255) DEFAULT NULL,
  Country varchar(255) DEFAULT NULL
) ;

CREATE TABLE employees (
  EmployeeID int NOT NULL,
  LastName varchar(255) DEFAULT NULL,
  FirstName varchar(255) DEFAULT NULL,
  BirthDate date DEFAULT NULL,
  Photo varchar(255) DEFAULT NULL,
  Notes text
) ;

CREATE TABLE orders (
  OrderID int NOT NULL,
  CustomerID int DEFAULT NULL,
  EmployeeID int DEFAULT NULL,
  OrderDate date DEFAULT NULL,
  ShipperID int DEFAULT NULL
) ;

CREATE TABLE order_details (
  OrderDetailID int NOT NULL,
  OrderID int DEFAULT NULL,
  ProductID int DEFAULT NULL,
  Quantity int DEFAULT NULL
) ;

CREATE TABLE products (
  ProductID int NOT NULL,
  ProductName varchar(255) DEFAULT NULL,
  SupplierID int DEFAULT NULL,
  CategoryID int DEFAULT NULL,
  Unit varchar(255) DEFAULT NULL,
  Price double DEFAULT NULL
) ;

CREATE TABLE shippers (
  ShipperID int NOT NULL,
  ShipperName varchar(255) DEFAULT NULL,
  Phone varchar(255) DEFAULT NULL
) ;

CREATE TABLE suppliers (
  SupplierID int NOT NULL,
  SupplierName varchar(255) DEFAULT NULL,
  ContactName varchar(255) DEFAULT NULL,
  Address varchar(255) DEFAULT NULL,
  City varchar(255) DEFAULT NULL,
  PostalCode varchar(255) DEFAULT NULL,
  Country varchar(255) DEFAULT NULL,
  Phone varchar(255) DEFAULT NULL
) ;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
