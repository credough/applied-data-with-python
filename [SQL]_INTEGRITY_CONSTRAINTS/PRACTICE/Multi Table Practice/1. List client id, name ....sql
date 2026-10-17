-- 1. List client id, name (first name, mid initial with '.', last name, concatenated) 
-- and his corresponding orders (invoice numbers) and order 
-- date from the order table if the order was made in 2020.   

SELECT
    c.ClientNo,
    CONCAT(TRIM(c.FirstName), ' ', LEFT(TRIM(c.MidName), 1), '. ', TRIM(c.Surname)) AS FullName,
    o.InvoiceNo,
    o.OrderDate
FROM clientv2 c
JOIN `order` o ON c.ClientNo = o.ClientNo
WHERE YEAR(o.OrderDate) = 2020;