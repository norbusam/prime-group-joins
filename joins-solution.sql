--Get all customers and their addresses.
SELECT "customers"."first_name", "customers"."last_name", "street", "city", "state", "zip" FROM "addresses"
JOIN "customers" ON "customers"."id" = "addresses"."customer_id";

--Get all orders and their line items (orders, quantity and product).
SELECT "products"."description", "orders"."order_date", "line_items"."quantity" FROM "line_items"
JOIN "products" ON "products"."id" = "line_items"."product_id"
JOIN "orders" ON "orders"."id" = "line_items"."order_id";
--Which warehouses have cheetos?
SELECT "products"."description", "warehouse"."warehouse" FROM "warehouse_product"
JOIN "products" on "products"."id" = "warehouse_product"."product_id"
JOIN "warehouse" on "warehouse"."id" = "warehouse_product"."warehouse_id"
WHERE "products"."description" = 'cheetos';

--Which warehouses have diet pepsi?
SELECT "products"."description", "warehouse"."warehouse" FROM "warehouse_product"
JOIN "products" on "products"."id" = "warehouse_product"."product_id"
JOIN "warehouse" on "warehouse"."id" = "warehouse_product"."warehouse_id"
WHERE "products"."description" = 'diet pepsi';

--Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT "customers"."first_name","customers"."last_name", count(*) FROM "orders"
JOIN "addresses" ON "addresses"."id" = "orders"."address_id"
JOIN "customers" ON "customers"."id" = "addresses"."customer_id"
GROUP BY "customers"."id";

--How many customers do we have?



--How many products do we carry?
SELECT count(*) FROM "products";


--What is the total available on-hand quantity of diet pepsi?



