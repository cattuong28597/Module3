USE classicmodels;

EXPLAIN SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.';

ALTER TABLE customers ADD INDEX idx_customerName(customerName);
EXPLAIN SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.';
ALTER TABLE customers DROP INDEX idx_customerName;