SELECT
    t.transactionid,
    t.date,

    c.customerid,
    c.gender,
    c.birthdate,
    c.city AS customer_city,
    c.joindate,

    p.productid,
    p.productname,
    p.category,
    p.subcategory,
    p.unitprice,
    p.costprice,

    s.storeid,
    s.storename,
    s.region,

    t.quantity,
    t.discount,
    t.paymentmethod,

    (p.unitprice * t.quantity * (1 - t.discount)) AS revenue,

    (p.costprice * t.quantity) AS cost,

    ((p.unitprice * t.quantity * (1 - t.discount))
    - (p.costprice * t.quantity)) AS profit

FROM transactions t
JOIN customers c
ON t.customerid = c.customerid
JOIN products p
ON t.productid = p.productid
JOIN stores s
ON t.storeid = s.storeid;