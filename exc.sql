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
VALUES(1, 'A01', 'Ao so mi', 15000, 2, 'mau trang', 'loai2'),
	  (2, 'A01', 'Ao so mi', 17000, 3, 'mau trang', 'loai1'),
      (3, 'A01', 'Ao so mi', 20000, 1, 'mau den', 'loai1')
      