SELECT
SUM(p.unitprice * t.quantity * (1 - t.discount))
AS total_revenue
FROM transactions t
JOIN products p
ON t.productid = p.productid;


SELECT
SUM(
(p.unitprice * t.quantity * (1 - t.discount)) - (p.costprice * t.quantity))
AS total_profit
FROM transactions t
JOIN products p
ON t.productid = p.productid;


SELECT
p.productname,
SUM(p.unitprice * t.quantity * (1 - t.discount))
AS revenue
FROM transactions t
JOIN products p
ON t.productid = p.productid
GROUP BY p.productname
ORDER BY revenue DESC
LIMIT 10;


SELECT
s.region,
SUM(p.unitprice * t.quantity * (1 - t.discount))
AS revenue
FROM transactions t
JOIN products p
ON t.productid = p.productid
JOIN stores s
ON t.storeid = s.storeid
GROUP BY s.region
ORDER BY revenue DESC;


SELECT
p.category,
ROUND(SUM((p.unitprice * t.quantity) * (1 - t.discount)),0) AS revenue
FROM transactions t
JOIN products p
ON t.productid = p.productid
GROUP BY p.category
ORDER BY revenue DESC
LIMIT 10;