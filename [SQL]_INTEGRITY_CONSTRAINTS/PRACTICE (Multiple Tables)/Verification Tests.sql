-- Test 1: Cascade Delete from Products (Delete SSD HD04)
DELETE FROM sabado.products WHERE SKU = 'HD04';
-- Expected: HD04 is automatically removed from order_details
SELECT * FROM sabado.order_details WHERE SKU = 'HD04';

-- Test 2: Cascade Delete from Orders (Delete Order 5001)
DELETE FROM sabado.orders WHERE OrderID = 5001;
-- Expected: All line items for 5001 are gone from order_details
SELECT * FROM sabado.order_details WHERE OrderID = 5001;

-- Test 3: Set Null from Customers (Delete Customer C102)
DELETE FROM sabado.customers WHERE CustID = 'C102';
-- Expected: Orders 5002 and 5007 still exist, but CustID is NULL
SELECT * FROM sabado.orders WHERE OrderID IN (5002, 5007);