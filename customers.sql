SELECT c.id as customer_id, c.name, c.email, min(o.created_at) as first_order_at, count(o.id) as number_of_orders
FROM `analytics-engineers-club.coffee_shop.customers` as c
LEFT JOIN `analytics-engineers-club.coffee_shop.orders` as o
ON c.id = o.customer_id 
GROUP BY c.id, c.name, c.email 
ORDER BY first_order_at
LIMIT 5;

