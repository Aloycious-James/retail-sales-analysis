SELECT
p.productname AS product,
SUM((p.unitprice * t.quantity) * (1 - t.discount) - (p.costprice * t.quantity)) AS profit
FROM transactions t JOIN products p 
ON t.productid = p.productid
GROUP BY p.productname
ORDER BY profit DESC
LIMIT 10;


SELECT
s.region,
SUM((p.unitprice * t.quantity) * (1 - t.discount) - (p.costprice * t.quantity)) AS profit
FROM transactions t
JOIN products p
ON t.productid = p.productid
JOIN stores s
ON t.storeid = s.storeid
GROUP BY s.region
ORDER BY profit DESC
LIMIT 10;

SELECT
p.category,
ROUND(SUM((p.unitprice * t.quantity) * (1 - t.discount) - (p.costprice * t.quantity))) AS profit
FROM transactions t
JOIN products p
ON t.productid = p.productid
GROUP BY p.category
ORDER BY profit DESC
LIMIT 10;


SELECT
p.productname as product,
ROUND(AVG(t.discount),2) AS avg_discount,
ROUND(SUM((p.unitprice * t.quantity) * (1 - t.discount)),0) AS revenue
FROM transactions t
JOIN products p
ON t.productid = p.productid
GROUP BY p.productname
ORDER BY avg_discount DESC
LIMIT 10;


SELECT
    p.category,
    ROUND(SUM((p.unitprice * t.quantity) * (1 - t.discount)),0) AS revenue,
    ROUND(SUM((p.unitprice * t.quantity) * (1 - t.discount) - (p.costprice * t.quantity)),0) AS profit
FROM transactions t
JOIN products p
ON t.productid = p.productid
GROUP BY p.category
ORDER BY profit DESC;


SELECT
    p.productname,
    ROUND(SUM((p.unitprice * t.quantity) * (1 - t.discount)),0) AS revenue,
    ROUND(SUM((p.unitprice * t.quantity) * (1 - t.discount) - (p.costprice * t.quantity)),0) AS profit
FROM transactions t
JOIN products p
ON t.productid = p.productid
GROUP BY p.productname
ORDER BY revenue DESC;


SELECT
CASE
    WHEN discount = 0 THEN 'No Discount'
    WHEN discount <= 0.10 THEN 'Low Discount'
    WHEN discount <= 0.20 THEN 'Medium Discount'
    ELSE 'High Discount'
END AS discount_group,
ROUND(SUM((p.unitprice * t.quantity) * (1 - t.discount)),0) AS revenue,
ROUND(SUM((p.unitprice * t.quantity) * (1 - t.discount) - (p.costprice * t.quantity)),0) AS profit
FROM transactions t
JOIN products p
ON t.productid = p.productid
GROUP BY discount_group
ORDER BY profit DESC;


SELECT
    s.storename,
    ROUND(SUM((p.unitprice * t.quantity) * (1 - t.discount)),0) AS revenue,
    ROUND(SUM((p.unitprice * t.quantity) * (1 - t.discount) - (p.costprice * t.quantity)),0) AS profit
FROM transactions t
JOIN products p
ON t.productid = p.productid
JOIN stores s
ON t.storeid = s.storeid
GROUP BY s.storename
ORDER BY profit DESC;