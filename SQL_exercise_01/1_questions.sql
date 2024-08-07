-- LINK: https://en.wikibooks.org/wiki/SQL_Exercises/The_computer_store
-- 1.1 Select the names of all the products in the store.
SELECT Name FROM Products;
-- 1.2 Select the names and the prices of all the products in the store.
SELECT Price FROM Products;
-- 1.3 Select the name of the products with a price less than or equal to $200.
SELECT NAME FROM PRODUCTS WHERE PRICE <= 200
-- 1.4 Select all the products with a price between $60 and $120.
SELECT * FROM Products WHERE Price BETWEEN 60 AND 120
-- 1.5 Select the name and price in cents (i.e., the price must be multiplied by 100).
SELECT Name, Price * 100 FROM products
-- 1.6 Compute the average price of all the products.
SELECT AVG(PRICE) FROM Products
-- 1.7 Compute the average price of all products with manufacturer code equal to 2.
SELECT AVG(Price) FROM Products WHERE Code == 2
-- 1.8 Compute the number of products with a price larger than or equal to $180.
SELECT COUNT(*) FROM Products WHERE Price == 180
-- 1.9 Select the name and price of all products with a price larger than or equal to $180, and sort first by price (in descending order), and then by name (in ascending order).
SELECT Name, Price FROM Products WHERE Price >= 180 ORDER BY Price DESC, Name ASC
-- 1.10 Select all the data from the products, including all the data for each product's manufacturer.
select a.*, b.name from products a join Manufacturers b on(a.manufacturer = b.code);
-- 1.11 Select the product name, price, and manufacturer name of all the products.
select a.name, a.price, b.name from products a join manufacturers b  on (a.manufacturer = b.code)
-- 1.12 Select the average price of each manufacturer's products, showing only the manufacturer's code.
SELECT AVG(Price), Manufacturer
    FROM Products
GROUP BY Manufacturer;
-- 1.13 Select the average price of each manufacturer's products, showing the manufacturer's name.
-- 1.14 Select the names of manufacturer whose products have an average price larger than or equal to $150.
-- 1.15 Select the name and price of the cheapest product.
-- 1.16 Select the name of each manufacturer along with the name and price of its most expensive product.
-- 1.17 Add a new product: Loudspeakers, $70, manufacturer 2.
-- 1.18 Update the name of product 8 to "Laser Printer".
-- 1.19 Apply a 10% discount to all products.
-- 1.20 Apply a 10% discount to all products with a price larger than or equal to $120.
