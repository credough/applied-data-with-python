-- 2. Display the client id and name of client together 
-- with the invoice corresponding to the client. Display 
-- the client info even if he didn’t make any purchase.

SELECT 
    c.ClientNo,
    CONCAT(c.FirstName, ' ', c.Surname) AS ClientName,
    o.InvoiceNo
FROM multi.clientv2 c
LEFT JOIN `order` o ON c.ClientNo = o.ClientNo;