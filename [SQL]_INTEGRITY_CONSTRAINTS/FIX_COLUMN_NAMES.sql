-- 1. clientv2
ALTER TABLE multi.clientv2 
    CHANGE COLUMN `ï»¿ClientNo` `ClientNo` VARCHAR(10) NOT NULL,
    MODIFY COLUMN FirstName VARCHAR(50),
    MODIFY COLUMN MidName VARCHAR(50),
    MODIFY COLUMN Surname VARCHAR(50),
    MODIFY COLUMN Street VARCHAR(100),
    MODIFY COLUMN City VARCHAR(50),
    MODIFY COLUMN Zip VARCHAR(10),
    MODIFY COLUMN Email VARCHAR(100),
    MODIFY COLUMN MobileNo VARCHAR(20),
    MODIFY COLUMN Landline VARCHAR(20),
    MODIFY COLUMN CreditLimit DECIMAL(10,2);

-- 2. product
ALTER TABLE multi.product 
    CHANGE COLUMN `ï»¿ProductCode` `ProductCode` VARCHAR(10) NOT NULL,
    MODIFY COLUMN ProductDescription VARCHAR(100),
    MODIFY COLUMN UnitCost DECIMAL(10,2),
    MODIFY COLUMN Category VARCHAR(50);

-- 3. order (`order` is a reserved word in SQL, so keep backticks around it)
ALTER TABLE multi.order 
    CHANGE COLUMN `ï»¿InvoiceNo` `InvoiceNo` INT NOT NULL,
    MODIFY COLUMN ClientNo VARCHAR(10) NULL,
    MODIFY COLUMN OrderDate DATE;

-- 4. detail
ALTER TABLE multi.detail 
    CHANGE COLUMN `ï»¿InvoiceNo` `InvoiceNo` INT NOT NULL,
    MODIFY COLUMN ProdCode VARCHAR(10) NOT NULL,
    MODIFY COLUMN Quantity INT;