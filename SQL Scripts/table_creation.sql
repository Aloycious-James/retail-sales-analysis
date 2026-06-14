CREATE TABLE customers (
    customerid VARCHAR(20) PRIMARY KEY,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    gender VARCHAR(10),
    birthdate DATE,
    city VARCHAR(100),
    joindate DATE
);

CREATE TABLE products (
    productid VARCHAR(20) PRIMARY KEY,
    productname VARCHAR(100),
    category VARCHAR(100),
    subcategory VARCHAR(100),
    unitprice NUMERIC(10,2),
    costprice NUMERIC(10,2)
);

CREATE TABLE stores (
    storeid VARCHAR(20) PRIMARY KEY,
    storename VARCHAR(100),
    city VARCHAR(100),
    region VARCHAR(100)
);

CREATE TABLE transactions (
    transactionid VARCHAR(20) PRIMARY KEY,
    date DATE,
    customerid VARCHAR(20),
    productid VARCHAR(20),
    storeid VARCHAR(20),
    quantity INT,
    discount NUMERIC(5,2),
    paymentmethod VARCHAR(50)
);