	USE MYBANKING;
    
  --   cau 1 
    
    DELIMITER //
    CREATE PROCEDURE spDEPOSIT
    (
    IN ID_CUSTOMER_INPUT INT,
    IN AMOUNT_DEPOSIT DECIMAL,
    OUT FULLNAME_CUSTOMER_DEPOSIT VARCHAR(50),
    OUT BALANCE_CUSTOMER DECIMAL
    )
    BEGIN
		UPDATE CUSTOMERS SET BALANCE = BALANCE + AMOUNT_DEPOSIT WHERE ID_CUSTOMER = ID_CUSTOMER_INPUT;
        SELECT FULLNAME_CUSTOMER,BALANCE INTO FULLNAME_CUSTOMER_DEPOSIT,BALANCE_CUSTOMER FROM CUSTOMERS  WHERE ID_CUSTOMER = ID_CUSTOMER_INPUT;
    END//
    DELIMITER ;
    
--     DROP PROCEDURE spDEPOSIT; 
    
    SELECT * FROM CUSTOMERS;
    
    CALL spDEPOSIT(1,20000,@fullname,@balance);
    SELECT @fullname,@balance;
    
--     cau 2

DELIMITER //
    CREATE PROCEDURE spWITHDRAW
    (
    IN ID_CUSTOMER_INPUT INT,
    IN AMOUNT_WITHDRAW DECIMAL,
    OUT FULLNAME_CUSTOMER_WITHDRAW VARCHAR(50),
    OUT BALANCE_CUSTOMER DECIMAL
    )
    BEGIN
		UPDATE CUSTOMERS SET BALANCE = BALANCE - AMOUNT_WITHDRAW WHERE ID_CUSTOMER = ID_CUSTOMER_INPUT;
        SELECT FULLNAME_CUSTOMER,BALANCE INTO FULLNAME_CUSTOMER_WITHDRAW,BALANCE_CUSTOMER FROM CUSTOMERS  WHERE ID_CUSTOMER = ID_CUSTOMER_INPUT;
    END//
    DELIMITER ;
    
--     DROP PROCEDURE spWITHDRAW; 
    
    SELECT * FROM CUSTOMERS;
    
    CALL spWITHDRAW(1,20000,@fullname,@balance);
    SELECT @fullname,@balance;
    
--     cau 3

DELIMITER //
CREATE PROCEDURE spTRANSFER
    (
    IN ID_SENDER INT,
    IN ID_RECIPIENT INT,
    IN AMOUNT_TRANSFER DECIMAL,
    OUT FULLNAME_SENDER VARCHAR(50),
    OUT BALANCE_SENDER DECIMAL,
    OUT FULLNAME_RECIPIENT VARCHAR(50),
    OUT BALANCE_RECIPIENT DECIMAL
    )
    BEGIN
		UPDATE CUSTOMERS SET BALANCE = BALANCE - AMOUNT_TRANSFER WHERE ID_CUSTOMER = ID_SENDER;
        UPDATE CUSTOMERS SET BALANCE = BALANCE + AMOUNT_TRANSFER WHERE ID_CUSTOMER = ID_RECIPIENT;
        SELECT FULLNAME_CUSTOMER,BALANCE INTO FULLNAME_SENDER,BALANCE_SENDER FROM CUSTOMERS  WHERE ID_CUSTOMER = ID_SENDER;
        SELECT FULLNAME_CUSTOMER,BALANCE INTO FULLNAME_RECIPIENT,BALANCE_RECIPIENT FROM CUSTOMERS  WHERE ID_CUSTOMER = ID_RECIPIENT;
    END//
    DELIMITER ;
    
--     DROP PROCEDURE spWITHDRAW; 
    
    SELECT * FROM CUSTOMERS;
    
    CALL spTRANSFER(2,3,60000,@sender_name,@sender_balance,@recipient_name,@recipient_balance);
    SELECT @sender_name,@sender_balance,@recipient_name,@recipient_balance;
    







