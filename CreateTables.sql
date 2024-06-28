/*
This MSSQL script creates the tables of the database.
*/
/*Creates the city table.*/
CREATE TABLE city(
cityID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
cityName VARCHAR(20) NOT NULL,
)

CREATE TABLE customer(
customerID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
fName VARCHAR(20) NOT NULL,
lName VARCHAR(20) NOT NULL,
gender CHAR(1) CHECK(gender in ('M','F')),
phNo VARCHAR(20) NOT NULL,
email VARCHAR(30) NOT NULL,
address1 VARCHAR(50) NOT NULL,
address2 VARCHAR(50),
cityID INT FOREIGN KEY REFERENCES city(cityID)
)

/*Creates the item table.*/
CREATE TABLE item(
itemID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
itemName VARCHAR(20) NOT NULL,
itemDesc VARCHAR(40) NOT NULL,
itemPrice DECIMAL(8,2)
)

/*Creates the supplier table.*/
CREATE TABLE supplier(
supplierID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
supplierName VARCHAR(20) NOT NULL,
contactPerson VARCHAR(40) NOT NULL,
contactPh VARCHAR(20) NOT NULL,
contactEmail VARCHAR(40) NOT NULL
)

/*Creates the purchaceOrder table.*/
CREATE TABLE purchaceOrder(
purchaceOrderID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
supplierID INT FOREIGN KEY REFERENCES supplier(supplierID) NOT NULL,
itemID INT FOREIGN KEY REFERENCES item(itemID) NOT NULL,
qty INT NOT NULL,
dateOrdered DATETIME NOT NULL,
dateRecieved DATETIME
)

/*Creates the inventory table.*/
CREATE TABLE inventory(
inventoryID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
salePrice DECIMAL(8,2) NOT NULL,
purchaceOrderID INT FOREIGN KEY REFERENCES purchaceOrder(purchaceOrderID),
itemID INT FOREIGN KEY REFERENCES item(itemID) NOT NULL,
stockOnHand INT NOT NULL,
minStock INT NOT NULL
)

/*Creates the product table.*/
CREATE TABLE product(
productID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
productName VARCHAR(20) NOT NULL,
productPrice DECIMAL(8,2) NOT NULL,
stockOnHand INT NOT NULL,
minStock INT NOT NULL
)

/*Creates the salesDetail table.*/
CREATE TABLE salesDetail(
salesDetailID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
customerID INT FOREIGN KEY REFERENCES customer(customerID) NOT NULL,
priceTotal DECIMAL(8,2) NOT NULL,
dateSold DATETIME NOT NULL
)

/*Creates the salesDetailProductItem table.
this table is a composite table.*/
CREATE TABLE salesDetailProductItem(
salesDetailID INT FOREIGN KEY REFERENCES salesDetail(salesDetailID) NOT NULL,
productID INT FOREIGN KEY REFERENCES product(productID) NOT NULL,
productQty INT NOT NULL,
itemID INT FOREIGN KEY REFERENCES item(itemID),
itemQty INT
)