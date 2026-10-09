-- Display the ClientNo and Surname of all clients who have never placed an order. 
SELECT cl.ClientNo, cl.Surname FROM review.clientv2 cl
LEFT JOIN review.order o ON o.ClientNo = cl.ClientNo
WHERE o.InvoiceNo IS NULL