-- Adding Primary Keys

-- Primary key for clientv2
-- For Testing 
SELECT * FROM multi.clientv2

ALTER TABLE multi.clientv2 
    ADD CONSTRAINT PK_Client PRIMARY KEY (ClientNo);
    
-- Primary key for product
SELECT * FROM multi.product;

ALTER TABLE multi.product
ADD CONSTRAINT PK_Product PRIMARY KEY (ProductCode);

-- Primary keys for order
SELECT * FROM multi.order

ALTER TABLE multi.order
ADD CONSTRAINT PK_Order PRIMARY KEY (InvoiceNo);

-- primary for detail
ALTER TABLE multi.detail
ADD CONSTRAINT PK_Detail PRIMARY KEY (InvoiceNo, ProdCode);