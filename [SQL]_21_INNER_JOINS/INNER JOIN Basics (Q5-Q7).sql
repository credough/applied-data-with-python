-- Q5. Join products and suppliers to show product_name, category, and the matching supplier_name. (Hint: products.supplier = suppliers.supplier_name)
SELECT products.product_name, products.category, suppliers.supplier_name FROM products
INNER JOIN suppliers ON products.supplier = suppliers.supplier_name

-- Q6. Join products and suppliers to show product_name, unit_price, and the supplier's rating.
SELECT products.product_name, products.unit_price, suppliers.rating FROM products
INNER JOIN suppliers ON products.supplier = suppliers.supplier_name

-- Q7. Join sales and customers — show only sales made by 'Platinum' members. Display full_name, membership, and total_amount.
SELECT customers.full_name, customers.membership, sales.total_amount FROM customers
INNER JOIN sales ON customers.customer_id = sales.customer_id
WHERE membership = 'Platinum'