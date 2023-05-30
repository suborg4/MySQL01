/*
1 Создайте таблицу с мобильными телефонами, используя графический интерфейс.
Id, ProductName, Manufacturer, ProductCount, Price
Заполните БД данными.

2 Выведите название, производителя и цену для товаров, количество которых превышает 2

3 Выведите весь ассортимент товаров марки “Samsung”
4.*** С помощью регулярных выражений найти:

Товары, в наименовании которых есть упоминание "Iphone"
Товары, в наименовании которых есть упоминание "Samsung"
Товары, в наименовании которых есть ЦИФРЫ
Товары, в наименовании которых есть ЦИФРА "8"
*/

CREATE DATABASE hw_01;
USE hw_01;
CREATE TABLE Phones (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(20) NOT NULL,
    Manufacturer VARCHAR(20) NOT NULL,
    ProductCount INT DEFAULT 0,
    Price INT
);
INSERT INTO Phones (ProductName, Manufacturer, ProductCount, Price)
VALUES
('iPhone 10', 'Apple', 3, 77000),
('iPhone 7', 'Apple', 2, 55000),
('Galaxy S8', 'Samsung', 2, 45000),
('Galaxy S6', 'Samsung', 1, 21000),
('Massandra', 'Huawei', 5, 17000);

--2
SELECT ProductName, Manufacturer, Price FROM Phones WHERE ProductCount > 2;

--3
SELECT * FROM Phones WHERE Manufacturer = 'Samsung';

--4
SELECT * FROM Phones WHERE ProductName LIKE '%Iphone%';
SELECT * FROM Phones WHERE ProductName LIKE '%Samsung%';
SELECT * FROM Phones WHERE ProductName RLIKE '[0-9]';
SELECT * FROM Phones WHERE ProductName LIKE '%8%';
