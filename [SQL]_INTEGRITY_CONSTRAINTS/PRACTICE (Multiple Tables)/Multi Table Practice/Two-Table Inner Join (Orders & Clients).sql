-- Display the InvoiceNo, OrderDate, client's full name (concatenated FirstName and Surname as ClientName), and City for all orders placed in the year 2020. Sort the output chronologically by OrderDate.
SELECT o.InvoiceNo, o.OrderDate, CONCAT(cl.FirstName, ' ', cl.MidName, ' ', cl.Surname) AS ClientName, cl.City FROM review.clientv2 cl
INNER JOIN review.order o ON cl.ClientNo = o.ClientNo
WHERE YEAR(o.OrderDate) = 2020; 