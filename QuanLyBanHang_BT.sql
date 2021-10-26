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
    
(SELECT DisplayBill.oID, DisplayBill.oDate, SUM(DisplayBill.Total)
FROM
(SELECT Orders.oID, Orders.oDate, TableTotalMoney.TotalMoney AS Total
FROM Orders
JOIN (SELECT oID, (OrderDetail.odQTY*Products.pPrice) AS TotalMoney
FROM OrderDetail
JOIN Products ON Products.pID = OrderDetail.pID) AS TableTotalMoney
ON Orders.oID = TableTotalMoney.oID) AS DisplayBill
GROUP BY DisplayBill.oID, DisplayBill.oDate)