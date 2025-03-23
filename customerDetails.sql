CREATE DATABASE customerDetails;
USE customerDetails;

CREATE TABLE customer(
	customer_ID INT PRIMARY KEY,
    customer_name VARCHAR(50),
    mode VARCHAR(20),
    city VARCHAR(20)
);

INSERT INTO customer
(customer_ID , customer_name , mode , city)
VALUES
(101,"Oliva Barrett","Netbanking","Portland"),
(102,"Ethan Sinclair","Credit Card","Miami"),
(103,"Maya Hernandez","Credit Card","Seattle"),
(104,"Liam Donovan","Netbanking","Denver"),
(105,"Sophia Nguyen","Credit Card","New Orleans"),
(106,"Caleb Foster","Debit Card","Minneapolis"),
(107,"Ava Patel","Debit Card","Phoenix"),
(108,"Lucas Carter","Netbanking","Boston"),
(109,"Isabella Martinez","Netbanking","Nashvilla"),
(110,"Jackson Brooks","Credit Card","Boston");

SELECT mode,COUNT(customer_ID) FROM customer GROUP BY mode;