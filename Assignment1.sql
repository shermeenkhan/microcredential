/*
--Write a select statement to return all columns and rows from the customer table.
SELECT * FROM customer;


--Write a query to select first name, last name, and email from the customer table.
SELECT first_name, last_name, email;
FROM CUSTOMER;


--Write a query to return all rows and columns from the film table.
SELECT * FROM FILM;


--Write a query to return unique rows from the release_year column in the film table.
SELECT DISTINCT RELEASE_YEAR;
FROM FILM


-- Write a query to return unique rows from the rental_rate column in the film table.
SELECT DISTINCT RENTAL_RATE;
FROM FILM


-- A customer left us some feedback about our store.  Write a query to find her email address – for Nancy Thomas.
SELECT email, first_name, last_name
FROM CUSTOMER
WHERE first_name= 'Nancy' and last_name='Thomas'


-- We’re trying to find a customer located at a certain address ‘259 Ipoh Drive’ – can you find their phone number? 
SELECT c.first_name, c.last_name, c.email, a.phone
from customer c
join address a
on a.address_id = c.address_id
where a.address= '259 Ipoh Drive'


-- Write a query from the customer table, where store id is 1 and address id is greater than 150
SELECT store_id, address_id
FROM customer
WHERE store_id=1 AND address_id>150


--Write a query from the payment table where the amount is either 4.99 or 1.99.
SELECT AMOUNT, payment_id, customer_id
FROM PAYMENT
WHERE AMOUNT = 4.99 OR AMOUNT = 1.99


--Write a query to return a list of transitions from the payment table where the amount is greater than 5.
SELECT Payment_id, payment_date, amount
FROM PAYMENT
WHERE AMOUNT > 5

*/