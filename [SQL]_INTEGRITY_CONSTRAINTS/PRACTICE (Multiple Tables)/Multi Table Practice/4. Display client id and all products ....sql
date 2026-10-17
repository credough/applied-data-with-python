-- 4. Display client id and all products he purchased (product code only). 
-- Display all product codes even if not purchased by any client.

SELECT 
    c.ClientNo,
    p.ProductCode
FROM multi.product p
LEFT JOIN detail d ON p.ProductCode = d.ProdCode
LEFT JOIN `order` o ON d.InvoiceNo = o.InvoiceNo
LEFT JOIN clientv2 c ON o.ClientNo = c.ClientNo;