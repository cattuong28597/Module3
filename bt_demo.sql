USE demo;

CREATE TABLE Products(
Id INT AUTO_INCREMENT PRIMARY KEY,
productCode VARCHAR(45),
productName VARCHAR(255),
productPrice INT,
productAmount INT,
productDescription VARCHAR(255),
productStatus VARCHAR(45)
);

INSERT INTO Products 
VALUES(1, 'A01', 'ao so mi', 15000, 3, 'mau trang', 'loai1'),
	  (2, 'A01', 'ao so mi', 17000, 5, 'mau xanh', 'loai2'),
      (3, 'A02', 'ao pull', 20000, 5, 'mau trang', 'loai1'),
      (4, 'Q01', 'quan tay', 19000, 6, 'mau den', 'loai1'),
      (5, 'Q02', 'quan jeans', 25000, 4, 'mau xanh', 'loai2');
      
ALTER TABLE Products ADD INDEX idx_product(productCode);
EXPLAIN SELECT * FROM Products WHERE productPrice = 20000;

CREATE VIEW view_product AS
SELECT productCode, productName, productPrice, productStatus
FROM Products;
SELECT * FROM view_product;

DELIMITER //
CREATE PROCEDURE display()
BEGIN
	SELECT * FROM Products;
END//
DELIMITER ;    
CALL display();

DELIMITER //
CREATE PROCEDURE add_product(
IN 
add_productCode VARCHAR(45),
add_productName VARCHAR(255),
add_productPrice INT,
add_productAmount INT,
add_productDescription VARCHAR(255),
add_productStatus VARCHAR(45)
)
BEGIN
INSERT INTO Products(productCode, productName, productPrice, productAmount, productDescription, productStatus)
VALUES(add_productCode, add_productName, add_productPrice, add_productAmount, add_productDescription, add_productStatus);
END//
DELIMITER ;
CALL add_product('Q03', 'quan kaki', 16000, 3, 'mau den', 'loai1');
SELECT * FROM Products;

DELIMITER //
CREATE PROCEDURE edit_product(
IN 
edit_Id INT,
edit_productCode VARCHAR(45),
edit_productName VARCHAR(255),
edit_productPrice INT,
edit_productAmount INT,
edit_productDescription VARCHAR(255),
edit_productStatus VARCHAR(45)
)
BEGIN
UPDATE Products
SET 
productCode = edit_productCode,
productName = edit_productName,
productPrice = edit_productPrice,
productAmount = edit_productAmount,
productDescription = edit_productDescription,
productStatus = edit_productStatus
WHERE Id = edit_Id;
END//
DELIMITER ;
-- DROP PROCEDURE edit_product;
CALL edit_product(6, 'A04', 'ao kieu', 25000, 6, 'mau vang', 'loai2');
SELECT * FROM Products;

DELIMITER //
CREATE PROCEDURE delete_product(
IN
del_Id INT
)
BEGIN
	DELETE FROM Products WHERE Id = del_Id;
END//
DELIMITER ;
CALL delete_product(2);
SELECT * FROM Products;