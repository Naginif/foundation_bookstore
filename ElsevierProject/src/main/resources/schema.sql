drop table customer if exists;

CREATE TABLE customer
(
    customerId int(11) NOT NULL,
    customerName varchar(100) NOT NULL,
    address varchar(100) DEFAULT NULL,
    PRIMARY KEY(customerID)
);



