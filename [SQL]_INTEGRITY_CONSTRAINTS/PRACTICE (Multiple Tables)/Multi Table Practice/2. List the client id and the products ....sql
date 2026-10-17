-- 2. List the client id and the products (product code only) 
-- with order qty ordered by each client.
SELECT 
    c.ClientNo,
    d.ProdCode,
    d.Quantity
FROM clientv2 c
JOIN `order` o ON c.ClientNo = o.ClientNo
JOIN detail d ON o.InvoiceNo = d.InvoiceNo;