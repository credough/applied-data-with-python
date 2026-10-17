-- Add primary keys

ALTER TABLE sabado.customers
ADD CONSTRAINT PK_customers PRIMARY KEY (CustID);

ALTER TABLE sabado.order_details
ADD CONSTRAINT PK_order_details PRIMARY KEY(ORDERID, SKU);

ALTER TABLE sabado.orders
ADD CONSTRAINT PK_orders PRIMARY KEY(OrderID);

ALTER TABLE sabado.products
ADD CONSTRAINT PK_products PRIMARY KEY(SKU);
