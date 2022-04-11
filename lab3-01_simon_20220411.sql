-- Activity 1
USE sakila;

-- 1. Drop column picture from staff.
ALTER TABLE staff
  DROP COLUMN picture; 
  
-- 2. A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.
INSERT INTO staff(first_name, last_name, address_id, store_id, active, username)
VALUES ('Tammy', 'Sanders', 4, 2, 1, 'Tammy');
UPDATE staff
SET email = 'Tammy.Sanders@sakilastaff.com'
WHERE staff_id = 3;
UPDATE staff
SET address_id = 79
WHERE staff_id = 3;

-- 3. Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. 
-- You can use current date for the rental_date column in the rental table. Hint: 
-- Check the columns in the table rental and see what information you would need to add there. You can query those pieces of information. 
-- For eg., you would notice that you need customer_id information as well. To get that you can use the following query:
			-- select customer_id from sakila.customer
				-- where first_name = 'CHARLOTTE' and last_name = 'HUNTER';
				-- Use similar method to get inventory_id, film_id, and staff_id.

INSERT INTO rental(rental_date, inventory_id, customer_id, staff_id)
VALUES (220411, 1, 130, 1);

