USE QuanLyBanHang;
CREATE TABLE Customers(
cID INT PRIMARY KEY,
cName VARCHAR(45),
cAge INT
);

CREATE TABLE Orders(
oID INT PRIMARY KEY,
cID INT,
oDate DATE,
oTotalPrice INT,
FOREIGN KEY (cID) REFERENCES Customers(cID)
);

CREATE TABLE Products(
pID INT PRIMARY KEY,
pName VARCHAR(45),
pPrice INT 
);

CREATE TABLE OrderDetail(
oID INT,
pID INT,
-- PRIMARY KEY (oID, pID),
FOREIGN KEY (oID) REFERENCES Orders(oID),
FOREIGN KEY (pID) REFERENCES Products(pID),
odQTY INT
);

INSERT INTO Customers
VALUES(1, 'Minh Quan', 10);
INSERT INTO Customers
VALUES(2, 'Ngoc Oanh', 20);
INSERT INTO Customers
VALUES(3, 'Hong Ha', 50);

INSERT INTO Orders(oID, cID, oDate)
VALUES(1, 1, '2006-3-21');
INSERT INTO Orders(oID, cID, oDate)
VALUES(2, 2, '2006-3-23');
INSERT INTO Orders(oID, cID, oDate)
VALUES(3, 1, '2006-3-16');

INSERT INTO Products(pID, pName, pPrice)
VALUES(1, 'May Giat', 3),
(2, 'Tu Lanh', 5),
(3, 'Dieu Hoa', 7),
(4, 'Quat', 1),
(5, 'Bep Dien', 2);

INSERT INTO OrderDetail(oID, pID, odQTY)
VALUES (1, 1, 3),
	  (1, 3, 7),
      (1, 4, 2),
      (2, 1, 1),
      (3, 1, 8),
      (2, 5, 4),
      (2, 3, 3);

