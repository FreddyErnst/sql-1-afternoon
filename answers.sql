                                  -- // TABLE PERSON //
1. CREATE TABLE person (
  person_id SERIAL PRIMARY KEY,
  name VARCHAR(200) NOT NULL,
  age INT NOT NULL,
  height INT NOT NULL,
  city VARCHAR(200) NOT NULL,
  favorite_color VARCHAR(200) NOT NULL
 
)

2. INSERT INTO person 
(name, favorite_color, city, height, age)
VALUES 
('Frank Synatra', 'green', 'Las Vegas', 183, 40),
('Billy Bob', 'yellow', 'Orlando', 173, 25),
('Tom Bruise', 'red', 'Manhattan', 189, 33),
('Ryan Fosling', 'black', 'Los Angeles', 174, 28), 
('George Blooney', 'orange', 'San Diego', 133, 90);

3. SELECT * FROM person ORDER BY height DESC;

4. SELECT * FROM person ORDER BY height asc;

5. SELECT * FROM person ORDER BY age desc;

6. SELECT * FROM person WHERE age > 20;

7. Query ran successfully. 0 rows to display.

8. SELECT * FROM person WHERE age < 20 OR age > 30;

9. SELECT * FROM person WHERE age != 27;

10. SELECT * FROM person WHERE favorite_color != 'red';

11. SELECT * FROM person WHERE favorite_color != 'red' OR favorite_color != 'blue';

12. SELECT * FROM person WHERE favorite_color = 'orange' OR favorite_color = 'green';

13. SELECT * FROM person WHERE favorite_color in('orange', 'green', 'blue');

14. SELECT * FROM person WHERE favorite_color in('yellow', 'purple');


                                       -- TABLE ORDERS 

1. CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INT ,
    product_name VARCHAR(200) NOT NULL,
    product_price NUMERIC NOT NULL,
    quantity INT NOT NULL 
)

2. INSERT INTO orders 
    (person_id, product_name, product_price, quantity)
    VALUES 
    (0, 'burger', 9, 3),
    (1, 'chicken', 12, 2),
    (2, 'sushi', 20, 3),
    (3, 'milkshake', 6, 2),
    (4, 'sandwhich', 12, 4);

3. SELECT * FROM orders;

4. SELECT SUM(quantity) FROM orders;

5. SELECT SUM(quantity * product_price) FROM orders;

6. SELECT SUM(quantity * product_price) FROM orders WHERE person_id = 1;


                                            -- TABLE ARTIST

1.  INSERT INTO artist 
    (name)
    VALUES 
    ('Willie Nelson'),
    ('Jimi Hendrix'),
    ('Com Truise');

2. SELECT * FROM artist ORDER BY name DESC LIMIT 10;

3. SELECT * FROM artist ORDER BY name ASC LIMIT 5;

4. SELECT * FROM artist WHERE name LIKE 'BLACK%';

5. SELECT * FROM artist WHERE name LIKE 'BLACK%';


                                        --TABLE EMPLOYEE

1. SELECT first_name, last_name FROM employee WHERE city = 'Calgary';

2. SELECT MAX(birth_date) from employee;

3. SELECT min(birth_date) from employee;

4. SELECT * FROM employee WHERE reports_to = 2;

5. SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';

                                        --  TABLE INVOICE

1. SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';

2. SELECT MAX (total) FROM invoice;

3. SELECT MIN(total) FROM invoice;

4. SELECT * from invoice WHERE total > 5;

5. SELECT COUNT(*) FROM invoice WHERE total < 5;

6. SELECT COUNT(*) FROM invoice WHERE billing_state IN('CA', 'TX', 'AZ');

7. SELECT AVG(total) FROM invoice;

8. SELECT SUM(total) FROM invoice;

