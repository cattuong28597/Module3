USE QuanLyBanHang;

SELECT * FROM Orders;

SELECT
	Customers.cID,
    Customers.cName,
    Customers.cAge,
    Orders.oID
FROM Customers
JOIN Orders ON Customers.cID = Orders.cID; 

SELECT 
	OrderDetail.pID,
    Products.pName
FROM Products
JOIN OrderDetail ON OrderDetail.pID = Products.pID;    

SELECT Customers.cID, Customers.cName, Customers.cAge
FROM Customers WHERE Customers.cID IN (SELECT Orders.cID FROM Orders);
    