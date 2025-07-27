create database SalesData_GiftMthiyane

/*Question 1*/
/*(A) Create table called Data__Relation*/

create table Date (
    Date_ID int primary key,
    Year int,
    Month varchar(20)
);

insert into Date(Date_ID, Year, Month) values
(202201, 2022, 'January'),
(202202, 2022, 'February'),
(202203, 2022, 'March'),
(202204, 2022, 'April'),
(202205, 2022, 'May'),
(202206, 2022, 'June'),
(202207, 2022, 'July'),
(202208, 2022, 'August'),
(202209, 2022, 'September'),
(202210, 2022, 'October'),
(202211, 2022, 'November'),
(202212, 2022, 'December'),
(202301, 2023, 'January'),
(202302, 2023, 'February'),
(202303, 2023, 'March'),
(202304, 2023, 'April'),
(202305, 2023, 'May'),
(202306, 2023, 'June'),
(202307, 2023, 'July'),
(202308, 2023, 'August'),
(202309, 2023, 'September'),
(202310, 2023, 'October'),
(202311, 2023, 'November'),
(202312, 2023, 'December');

select * from Date
/*(B) Create the Date relation*/
Create table Data_Relation(
Date_ID int primary key,
Year int, 
Month varchar(1)
)

create table City_Code (
    CityCode varchar(2) primary key,
    CityName varchar(50)
);

insert into City_Code VALUES
('JH', 'Johannesburg'), 
('LT', 'Luis Tritchart'), 
('CT', 'Kappa'), 
('NP', 'Neslpruit'), 
('DB', 'KZN'), 
('PT', 'Tshwane'), 
('PE', 'Port Elizabeth'), 
('MK', 'Mafikeng'), 
('PL', 'Polokwane'), 
('EL', 'East London'), 
('NW', 'Newcastle'), 
('BF', 'Bloemfontein');
 
 select * from City_Code

/*Question 2 Create table called Product ID*/

create table Product_ID(
Product_Code int primary key,
Product_Description varchar (50),
Product_Price Decimal (10,2)
)

Insert into Product_ID values
(10, 'Air Fryer', 900.00), 
(11, 'Pressure Cooker', 1200.00), 
(12, 'Desktop', 6600.00), 
(13, 'Car Charger', 70.00), 
(14, 'PS5 Gamer', 1800.00), 
(15, 'Portable Fan', 600.00), 
(16, 'Electric Kettle', 350.00), 
(17, 'Fork Set', 270.00), 
(18, 'Spoon Set', 250.00), 
(19, 'Coffee Table', 2300.00), 
(20, 'Dish Washer', 6800.00)

select * from Product_ID

/*Question 3 create table City Code*/

create table City(
City_Code varchar(2) primary key,
City_Name varchar (50)
);

insert into City (City_Code, City_Name) values
('JH', 'Johannesburg'),
('LT', 'Luis Tritchart'),
('CT', 'Kappa'),
('NP', 'Neslpruit'),
('DB', 'KZN'),
('PT', 'Tshwane'),
('PE', 'Port Elizabeth'),
('MK', 'Mafikeng'),
('PL', 'Polokwane'),
('EL', 'East London'),
('NW', 'Newcastle'),
('BF', 'Bloemfontein');

select * from City

/*Question 4* create Sales*/
create table Sales (
    CustomerID int primary key,
    CustomerName varchar(100),
    CityCode varchar(2),
    ProductID int,
    Quantity int,
    ProductPrice decimal(10,2),
    Sales decimal(15,2),
    DateID int,
    foreign key (ProductID) references Product_ID(Product_Code),
    foreign key (CityCode) references City(City_Code),
    foreign key (DateID) references Date(Date_ID)
);

insert into Sales (CustomerID, CustomerName, CityCode, ProductID, Quantity, ProductPrice, Sales, DateID) VALUES
(101, 'Andile', 'JH', 10, 800, 900.00, 720000.00, 202201),
(102, 'Belinda', 'LT', 11, 104, 1200.00, 124800.00, 202201),
(103, 'Cathy', 'CT', 12, 300, 6600.00, 1980000.00, 202201),
(104, 'Dylan', 'NP', 13, 240, 70.00, 16800.00, 202201),
(105, 'Emery', 'DB', 14, 321, 1800.00, 577800.00, 202201),
(106,  'Fatima',  'PT',  15, 105,  600.00,  63000.00,  202202), 
(107,  'Gaily',  'PE',  16, 503,  350.00,  176050.00,  202202), 
(108,  'Hlope', 'MK',  17, 438,  270.00,  118260.00,  202202), 
(109,  'Imran',  'PL',  18, 352,  250.00, 88000.00,  202202), 
(110,  'Julia', 'JH',  19, 678,  2300.00,  1559400.00,  202202), 
(111,  'Kuda', 'EL', 20, 424,  6800.00,  2883200.00,  202203), 
(112, 'Lynn', 'JH', 10, 965, 900.00, 868500.00, 202203), 
(113, 'Mlungisi', 'CT', 11, 236, 1200.00, 283200.00, 202203), 
(114, 'Ngubane', 'LT', 12, 463, 6600.00, 3055800.00, 202203), 
(115, 'Otilia', 'PL', 13, 198, 70.00,  13860.00, 202203), 
(116, 'Pete', 'MK', 14, 673, 1800.00, 1211400.00, 202204), 
(117, 'Qobani', 'PE', 15, 392, 600.00, 235200.00, 202204), 
(118, 'Ramapula', 'JH', 16, 851, 350.00, 297850.00, 202204), 
(119, 'Sue',  'DB', 17, 425, 270.00, 114750.00, 202204), 
(120, 'Teclar', 'NW', 18, 294, 250.00, 73500.00, 202204), 
(121, 'Ulendo', 'BF', 19, 383, 2300.00, 880900.00, 202205), 
(122, 'Vivian', 'NP', 20, 298, 6800.00, 2026400.00, 202205), 
(123, 'Welly', 'MK', 10, 283, 900.00, 254700.00, 202205), 
(124, 'Xolani', 'CT', 11, 593, 1200.00, 711600.00, 202205), 
(125, 'Yvette',  'LT', 12, 296, 6600.00, 1953600.00, 202206), 
(126, 'Zama', 'NW', 13, 519, 70.00,  36330.00, 202206), 
(127, 'Aaron', 'JH', 10, 800, 900.00, 720000.00, 202206), 
(128, 'Brooke', 'LT', 11, 104, 1200.00, 124800.00, 202206), 
(129, 'Cain', 'CT', 12, 300, 6600.00, 1980000.00, 202207), 
(130, 'Dre',  'NP', 13, 240, 70.00,  16800.00, 202207), 
(131, 'Ethan', 'DB', 14, 321, 1800.00, 577800.00, 202207), 
(132, 'Florence', 'PT', 15, 105, 600.00, 63000.00, 202207), 
(133, 'Gilian', 'PE', 16, 503, 350.00, 176050.00, 202207), 
(134, 'Humbulani', 'MK', 17, 438, 270.00, 118260.00, 202208), 
(135, 'Ian',  'PL', 18, 352, 250.00, 88000.00, 202208), 
(136, 'Jacob', 'JH', 19, 678, 2300.00, 1559400.00, 202208), 
(137, 'Khosi', 'EL', 20, 424, 6800.00, 2883200.00, 202208), 
(138, 'Lulu', 'JH', 10, 965, 900.00, 868500.00, 202209), 
(139, 'Mercy', 'CT', 11, 236, 1200.00, 283200.00, 202209), 
(140, 'Nhlakanipho','LT', 12, 463, 6600.00, 3055800.00, 202209), 
(141, 'Obrey', 'PL', 13, 198, 70.00,  13860.00, 202209), 
(142, 'Phule', 'MK', 14, 673, 1800.00, 1211400.00, 202209), 
(143, 'Qulu', 'PE', 15, 392, 600.00, 235200.00, 202210), 
(144, 'Reitumetse','JH', 16, 851, 350.00, 297850.00, 202210), 
(145, 'Slindelo', 'DB', 17, 425, 270.00, 114750.00, 202210), 
(146, 'Thulani', 'NW', 18, 294, 250.00, 73500.00, 202210), 
(147, 'Uria', 'BF', 19, 383, 2300.00, 880900.00, 202210), 
(148, 'Valarie', 'NP', 20, 298, 6800.00, 2026400.00, 202211), 
(149, 'Wandiswa', 'MK', 10, 283, 900.00, 254700.00, 202211), 
(150, 'Xolele', 'CT', 11, 593, 1200.00, 711600.00, 202211), 
(151, 'Yvonne', 'LT', 12, 296, 6600.00, 1953600.00, 202211), 
(152, 'Zime', 'JH', 13, 519, 70.00,  36330.00, 202211), 
(153, 'Allan', 'JH', 10, 800, 900.00, 720000.00, 202212), 
(154, 'Bulelani', 'LT', 11, 104, 1200.00, 124800.00, 202212), 
(155, 'Cele', 'CT', 12, 300, 6600.00, 1980000.00, 202212), 
(156, 'Debra', 'NP', 13, 240, 70.00,  16800.00, 202212), 
(157, 'Ellen', 'DB', 14, 321, 1800.00, 577800.00, 202301), 
(158, 'Felix', 'PT', 15, 105, 600.00, 63000.00, 202301), 
(159, 'George', 'PE', 16, 503, 350.00, 176050.00, 202301), 
(160, 'Holomisa', 'MK', 17, 438, 270.00, 118260.00, 202301), 
(161, 'Ingrid', 'PL', 18, 352, 250.00, 88000.00, 202302), 
(162, 'Jason', 'JH', 19, 678, 2300.00, 1559400.00, 202302), 
(163, 'Khumbulani','EL', 20, 424, 6800.00, 2883200.00, 202302), 
(164, 'Lindelani','JH', 10, 965, 900.00, 868500.00, 202302), 
(165, 'Mabaso', 'CT', 11, 236, 1200.00, 283200.00, 202303), 
(166, 'Nqubani', 'LT', 12, 463, 6600.00, 3055800.00, 202303), 
(167, 'Onke', 'PL', 13, 198, 70.00,  13860.00, 202303), 
(168, 'Precious', 'MK', 14, 673, 1800.00, 1211400.00, 202303), 
(169, 'Qwabe', 'PE', 15, 392, 600.00, 235200.00, 202303), 
(170, 'Rulani', 'JH', 16, 851, 350.00, 297850.00, 202303), 
(171, 'Simbongile','DB', 17, 425, 270.00, 114750.00, 202304), 
(172, 'Themba', 'NW', 18, 294, 250.00, 73500.00, 202304), 
(173, 'Urthar', 'BF', 19, 383, 2300.00, 880900.00, 202304), 
(174, 'Vusimusi', 'NP', 20, 298, 6800.00, 2026400.00, 202304), 
(175, 'Wandile', 'MK', 10, 283, 900.00, 254700.00, 202305), 
(176, 'Xolisi', 'CT', 11, 593, 1200.00, 711600.00, 202305), 
(177, 'Yolanda', 'LT', 12, 296, 6600.00, 1953600.00, 202305), 
(178, 'Zinhle', 'LT', 13, 519, 70.00,  36330.00, 202305), 
(179, 'Asanda', 'JH', 10, 800, 900.00, 720000.00, 202306), 
(180, 'Bhekie', 'LT', 11, 104, 1200.00, 124800.00, 202306), 
(181, 'Cumani', 'CT', 12, 300, 6600.00, 1980000.00, 202306), 
(182, 'Dennis', 'NP', 13, 240, 70.00,  16800.00, 202306), 
(183, 'Emma', 'DB', 14, 321, 1800.00, 577800.00, 202307), 
(184, 'Fiona', 'PT', 15, 105, 600.00, 63000.00, 202307), 
(185, 'Garry', 'PE', 16, 503, 350.00, 176050.00, 202307), 
(186, 'Hlalulile', 'MK', 17, 438, 270.00, 118260.00, 202308), 
(187, 'Indie', 'PL', 18, 352, 250.00, 88000.00, 202308), 
(188, 'Juliana', 'JH', 19, 678, 2300.00, 1559400.00, 202308), 
(189, 'Kheswa', 'EL', 20, 424, 6800.00, 2883200.00, 202309), 
(190, 'Lindokuhle','JH', 10, 965, 900.00, 868500.00, 202309), 
(191, 'Mandla', 'CT', 11, 236, 1200.00, 283200.00, 202309), 
(192, 'Ngubane', 'LT', 12, 463, 6600.00, 3055800.00, 202309), 
(193, 'Oscar', 'PL', 13, 198, 70.00,  13860.00, 202310), 
(194, 'Peters', 'MK', 14, 673, 1800.00, 1211400.00, 202310), 
(195, 'Qalani', 'PE', 15, 392, 600.00, 235200.00, 202310), 
(196, 'Respina', 'JH', 16, 851, 350.00, 297850.00, 202310), 
(197, 'Shozi', 'DB', 17, 425, 270.00, 114750.00, 202311), 
(198, 'Thembalami','NW', 18, 294, 250.00, 73500.00, 202311), 
(199, 'Usofia', 'BF', 19, 383, 2300.00, 880900.00, 202311), 
(200, 'Vhutshilo', 'NP', 20, 298, 6800.00, 2026400.00, 202311), 
(201, 'Wendy', 'MK', 10, 283, 900.00, 254700.00, 202312), 
(202, 'Xulu', 'CT', 11, 593, 1200.00, 711600.00, 202312), 
(203, 'Yolandie', 'LT', 12, 296, 6600.00, 1953600.00, 202312), 
(204, 'Zuma', 'LT',  13, 519, 70.00,  36330.00, 202312) 
;

select * from Sales

/*Question 5 Overall Sales made by busness*/
select SUM(Sales) AS TotalSales
from Sales;

/*Question 6 column in the Sales relation for Total Costs and the total cost of 
each product*/

alter table Sales
add TotalCost decimal(15,2);

update Sales
set TotalCost = Quantity * ProductPrice;

select CustomerID, CustomerName, ProductID, Quantity, ProductPrice, TotalCost
from Sales;

/*Question 7 Create a column for Profit and calculate the profit for each product*/

alter table Sales
add Profit decimal(15,2);

update Sales
set Profit = Sales - TotalCost;

select CustomerID, CustomerName, ProductID, Sales, TotalCost, Profit
from Sales;

select * from Sales

/*Question 8 Create a column in the Sales for Products Cost given that the cost of each 
product was 10% of the product price*/

alter table Sales
add ProductCost decimal(10,2);

update Sales
set ProductCost = ProductPrice * 0.10;

select * from Sales

/*Question 9 Write an SQL statement to display the total sales per city*/

select CityCode, SUM(Sales) as TotalSales
from Sales
group by CityCode;

/*Question 10 Write an SQL statement to display the total profit made per product showing the product 
name and the corresponding profit.*/

select 
    P.Product_Code, 
    SUM(S.Profit) as TotalProfit
from 
    Sales S
JOIN 
    Product_ID P on S.ProductID = P.Product_ID
group by 
    P.Product_Code;
	/*Questions 13. Write an SQL statement that displays the top 5 selling products of the business showing 
the name of the product and the quantity sold.*/

SELECT 
    P.Product_ID, 
    SUM(S.Quantity) AS TotalQuantitySold
FROM 
    Sales S
JOIN 
    Product_ID P ON S.ProductID = P.Product_ID
GROUP BY 
    P.Product_ID
ORDER BY 
    TotalQuantitySold DESC
LIMIT 5;
