SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

USE mydb;

--
-- Indexes for dumped tables
--

--
-- Indexes for table categories
--
ALTER TABLE categories
  ADD PRIMARY KEY (CategoryID);

--
-- Indexes for table customers
--
ALTER TABLE customers
  ADD PRIMARY KEY (CustomerID);

--
-- Indexes for table employees
--
ALTER TABLE employees
  ADD PRIMARY KEY (EmployeeID);

--
-- Indexes for table orders
--
ALTER TABLE orders
  ADD PRIMARY KEY (OrderID),
  ADD KEY CustomerID (CustomerID),
  ADD KEY EmployeeID (EmployeeID),
  ADD KEY ShipperID (ShipperID);

--
-- Indexes for table order_details
--
ALTER TABLE order_details
  ADD PRIMARY KEY (OrderDetailID),
  ADD KEY OrderID (OrderID),
  ADD KEY ProductID (ProductID);

--
-- Indexes for table products
--
ALTER TABLE products
  ADD PRIMARY KEY (ProductID),
  ADD KEY CategoryID (CategoryID),
  ADD KEY SupplierID (SupplierID);

--
-- Indexes for table shippers
--
ALTER TABLE shippers
  ADD PRIMARY KEY (ShipperID);

--
-- Indexes for table suppliers
--
ALTER TABLE suppliers
  ADD PRIMARY KEY (SupplierID);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table categories
--
ALTER TABLE categories
  MODIFY CategoryID int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table customers
--
ALTER TABLE customers
  MODIFY CustomerID int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table employees
--
ALTER TABLE employees
  MODIFY EmployeeID int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table orders
--
ALTER TABLE orders
  MODIFY OrderID int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10444;

--
-- AUTO_INCREMENT for table order_details
--
ALTER TABLE order_details
  MODIFY OrderDetailID int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=519;

--
-- AUTO_INCREMENT for table products
--
ALTER TABLE products
  MODIFY ProductID int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table shippers
--
ALTER TABLE shippers
  MODIFY ShipperID int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table suppliers
--
ALTER TABLE suppliers
  MODIFY SupplierID int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table orders
--
ALTER TABLE orders
  ADD CONSTRAINT orders_ibfk_1 FOREIGN KEY (CustomerID) REFERENCES customers (CustomerID),
  ADD CONSTRAINT orders_ibfk_2 FOREIGN KEY (EmployeeID) REFERENCES employees (EmployeeID),
  ADD CONSTRAINT orders_ibfk_3 FOREIGN KEY (ShipperID) REFERENCES shippers (ShipperID);

--
-- Constraints for table order_details
--
ALTER TABLE order_details
  ADD CONSTRAINT order_details_ibfk_1 FOREIGN KEY (OrderID) REFERENCES orders (OrderID),
  ADD CONSTRAINT order_details_ibfk_2 FOREIGN KEY (ProductID) REFERENCES products (ProductID);

--
-- Constraints for table products
--
ALTER TABLE products
  ADD CONSTRAINT products_ibfk_1 FOREIGN KEY (CategoryID) REFERENCES categories (CategoryID),
  ADD CONSTRAINT products_ibfk_2 FOREIGN KEY (SupplierID) REFERENCES suppliers (SupplierID);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
