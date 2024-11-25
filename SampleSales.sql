CREATE DATABASE SampleSales;
USE SampleSales;

CREATE TABLE Products (
  idProducts INT PRIMARY KEY,
  productName VARCHAR(50) UNIQUE
);

CREATE TABLE Customers (
  idCustomers INT PRIMARY KEY,
  customerName VARCHAR(50) UNIQUE
);

CREATE TABLE Regions (
  idRegions INT PRIMARY KEY,
  Suburb VARCHAR(50),
  City VARCHAR(50),
  postcode VARCHAR(50),
  Longitude Float,
  Latitude Float,
  FullAddress VARCHAR(100)
);

CREATE TABLE Orders (
  OrderNumber INT PRIMARY KEY,
  OrderDate DATE,
  ShipDate DATE,
  idCustomers INT,
  FOREIGN KEY (idCustomers) REFERENCES Customers(idCustomers),
  Channels VARCHAR(50),
  CurrencyCode VARCHAR(3),
  WarehouseCode VARCHAR(6),
  idRegions INT,
  FOREIGN KEY (idRegions) REFERENCES Regions(idRegions),
  idProducts INT,
  FOREIGN KEY (idProducts) REFERENCES Products(idProducts),
  OrderQuantity INT,
  UnitPrice FLOAT,
  TotalUnitCost FLOAT,
  TotalRevenue FLOAT
);


SHOW VARIABLES LIKE 'secure_file_priv';

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Products.csv"
INTO TABLE Products
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Customers.csv"
INTO TABLE Customers
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


USE SampleSales;
LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Orders.csv"
INTO TABLE Orders
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Regions.csv"
INTO TABLE Regions
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from samplesales;

USE SampleSales;
select * from customers;