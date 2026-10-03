-- Adding FKs and Perform Required Actions
-- 4.1 Detail -> Product Foreign Key
-- (deleting/updating in products cascades to details)

ALTER TABLE multi.detail
ADD CONSTRAINT FK_Detail_Product
FOREIGN KEY (ProdCode) REFERENCES multi.product (ProductCode)
ON DELETE CASCADE
ON UPDATE CASCADE;

-- test
SELECT * FROM multi.detail

-- 4.2 Delete Products FT2 and FS
SELECT * FROM multi.product

DELETE FROM multi.product
WHERE ProductCode IN ('FT2', 'FS')
-- check if deleted on both
SELECT * FROM multi.detail
WHERE ProdCode IN ('FT2', 'FS')
SELECT * FROM multi.product

-- 4.3 Detail -> Order Foreign Key
-- Deleting in order cascades to detail.

ALTER TABLE multi.detail
ADD CONSTRAINT FK_DETAIL 
FOREIGN KEY (InvoiceNo) REFERENCES multi.order (InvoiceNo)
ON DELETE CASCADE
ON UPDATE CASCADE;

-- 4.4 Delete invoice 1 and 4
SELECT * FROM multi.detail;
SELECT * FROM multi.order;

DELETE FROM multi.order
WHERE InvoiceNo IN (1,4);

-- 4.5 Order -> Client Foreign Key (THERE'S AN ERROR TULOG MUNA KO)
ALTER TABLE multi.order
ADD CONSTRAINT client_order_FK
FOREIGN KEY (ClientNo) REFERENCES multi.clientv2 (ClientNo)
ON UPDATE CASCADE
ON DELETE SET NULL;

DELETE FROM multi.clientv2
WHERE ClientNo = 'C2'

-- TESTS
SELECT * FROM multi.order
SELECT * FROM multi.clientv2
SELECT * FROM multi.order WHERE InvoiceNo IN (2, 15);

