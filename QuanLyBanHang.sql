CREATE TABLE Customers(
cID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
cName VARCHAR(45),
cAge INT);

CREATE TABLE Oders(
oID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
cID INT,
oDate DATE,
oTotalPrice INT,
FOREIGN KEY (cID) REFERENCES Customers (cID)
);

CREATE TABLE Productbooks