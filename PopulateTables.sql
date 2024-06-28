/*
This MSSQL script populates the tables of the database with data provided by the
client.
*/
INSERT INTO city(cityName)
VALUES ('Auckland'),
('Hamilton'),
('Wellington'),
('Christchurch'),
('Dunedin'),
('Invercargill'),
('Tauranga'),
('Gisborne'),
('Hastings'),
('Morrinsville')

INSERT INTO customer(fname,lname,gender,phNo,email,address1,address2,cityID)
VALUES('Stewart','Austin','M',0273408401,'deane_austin@hotmail.com','41 Campbell
Street','RD3, Waihou',1),
('James','Hardy','M',0348382956,'james_hardy@outlook.com','123 Main Street
Silverton',NULL,2),
('Kelly','Brooks','F',0248295678,'kelly_brroks@gmail.com','45 George Street
Wakari',NULL,5),
('Molly','Ringwold','F',027876234,'molly_ringwold@hotmail.com','10B Jamaica Avenue
Chartwell',NULL,2),
('Homer','Simpson','M',0273549843,'homer_simpson@outlook.com','111 Springfield Avenue
Greenhill',NULL,8),
('Oliver','Jones','M',023423142,'Ojones@hotmail.com','123 Sneed st',NULL,2),
('Harry','Wilson','M',0142241234,'Hwil22@gmail.com','23 Chuck rd',NULL,7),
('Jack','Brown','M',0234656754,'JackB@yahoo.net','174 Sunset st','13 Med st',2),
('Max','Walker','M',024324324,'MaxW14@gmail.com','33 Oak st','79 Pine rd',5),
('Emma','Lewis','F',027117654,'Elewis@outlook.com','76 Maple st','54 Rose st',10)

INSERT INTO item(itemName,itemDesc,itemPrice)
VALUES('simCard','Sim card for phone',4.95),
('phoneCase','Phone case',49.95),
('screenProtector','Screen Protector',15),
('screenCloth','Screen cloth',5),
('headPhoneswl','Wireless Head Phones',49.95),
('headPhonesw','Wired Head Phones',29.95),
('batteryBank','Battery Bank',19.95),
('selfieStick','Selfie Stick',10),
('sdCard32','SD Card 32GB',45),
('sdCard64','SD Card 64GB',65)

INSERT INTO supplier(supplierName,contactPerson,contactPh,contactEmail)
VALUES('Phones R US','John Smith',123456789,'john.smith@outlook.com'),
('Sim City','Mandy Hollows',345875643,'Mandy.Hollows@hotmail.com'),
('Battery World','Robin Banks',382847564,'Robin.Banks@gmail.com'),
('Carters Cases','Leeroy Brown',473846784,'Leeroy.Brown@yahoo.com'),
('Xi Xing Jiun','Lee Jiun',768349239,'Lee.Jiun@outlook.com'),
('PBTech','Jim Morrison',384594573,'Jim.Morrison@hotmail.com'),
('Wizard Phones','Ben Lehman',475847362,'Ben.Lehman@gmail.com'),
('Memory Madness','Luke Mann',475869696,'Luke.Mann@yahoo.com'),
('HeadPhones City','Morgan Hodgson',385969578,'Morgan.Hodgson@outlook.com'),
('We Sell Phones','Cory Feldman',487485959,'Cory.Feldman@hotmail.com')

INSERT INTO purchaceOrder(supplierID,itemID,qty,dateOrdered,dateRecieved)
VALUES(1,1,150,'2023-06-1','2023-06-15'),
(5,3,50,'2023-07-2','2023-07-23'),
(7,7,20,'2023-05-3','2023-05-20'),
(6,6,10,'2023-08-15','2023-08-28'),
(10,8,20,'2023-09-20',NULL),
(7,7,30,'2023-10-4',NULL),
(8,9,50,'2023-09-15','2023-10-4'),
(8,10,50,'2023-10-2','2023-10-4'),
(5,8,15,'2023-09-26','2023-10-3'),
(9,5,20,'2023-09-21',NULL)

INSERT INTO inventory(salePrice,purchaceOrderID,itemID,stockOnHand,minStock)
VALUES(10,1,1,56,100),
(60,NULL,2,0,5),
(10,NULL,4,0,5),
(40,4,6,11,5),
(30,3,3,12,10),
(70,8,10,14,5),
(60,10,5,30,10),
(20,9,8,35,10),
(30,6,7,23,15),
(60,7,9,31,20)

INSERT INTO product(productName,productPrice,stockOnHand,minStock)
VALUES('Op-X Red 32GB',799.95,16,15),
('Op-X Red 64GB',999.95,21,25),
('Op-X Blue 32GB',799.95,32,15),
('Op-X Blue 64GB',999.95,26,25),
('Op-X Black 32GB',799.95,32,15),
('Op-X Black 64GB',999.95,43,25),
('Op-X Pink 32GB',749.5,16,15),
('Op-X Pink 64GB',949.5,18,25),
('Op-X White 32GB',849.5,23,15),
('Op-X White 64GB',1049.5,21,25)

INSERT INTO salesDetail(customerID,priceTotal,dateSold)
VALUES(1,839.95,'2023-11-1'),
(3,829.95,'2023-09-15'),
(4,1829.45,'2023-09-1'),
(2,879.50,'2023-09-3'),
(1,859.50,'2023-10-1'),
(10,969.50,'2023-09-14'),
(8,1039.95,'2023-10-4'),
(9,2029.90,'2023-09-5'),
(7,949.5,'2023-10-3'),
(6,3179.85,'2023-10-1')

INSERT INTO salesDetailProductItem(salesDetailID,productID,productQty,itemID,itemQty)
VALUES(1,1,1,1,1),
(1,1,1,3,1),
(2,3,1,7,1),
(3,6,1,4,1),
(3,7,1,6,1),
(4,9,1,7,1),
(5,9,1,1,1),
(6,8,1,4,2),
(7,4,1,6,1),
(8,2,2,3,1),
(9,8,1,NULL,NULL),
(10,2,3,9,3)