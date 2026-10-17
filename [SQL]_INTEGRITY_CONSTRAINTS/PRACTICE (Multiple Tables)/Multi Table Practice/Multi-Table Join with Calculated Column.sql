-- Display each invoice line item showing InvoiceNo, OrderDate, ProductDescription, Quantity, UnitCost, and the computed line total (Quantity * UnitCost) labeled as TotalAmount.
SELECT o.InvoiceNo, o.OrderDate, p.ProductDescription, d.Quantity, p.UnitCost, (d.Quantity * p.UnitCost) AS Total_Amount FROM review.order o
INNER JOIN review.detail d ON d.InvoiceNo = o.InvoiceNo
INNER JOIN review.product p ON p.ProductCode = d.ProdCode