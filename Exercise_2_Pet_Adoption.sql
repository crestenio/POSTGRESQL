CREATE TABLE customers(customer_id SERIAL PRIMARY KEY, first_name VARCHAR(50) NOT NULL, last_name VARCHAR(50) NOT NULL);
INSERT INTO customers(first_name, last_name)
VALUES ('Pedro', 'Penduko');

SELECT * FROM customers;

CREATE TABLE IF NOT EXISTS pets(pet_id SERIAL PRIMARY KEY,pet_name VARCHAR(50) NOT NULL,age INTEGER NOT NULL, breed TEXT NOT NULL, type_of_pet TEXT NOT NULL);
INSERT INTO pets(pet_name, age, breed, type_of_pet)
VALUES ('Browny', '2', 'Bulldog', 'dog');
INSERT INTO pets(pet_name, age, breed, type_of_pet)
VALUES ('Memeng', '1', 'Persian', 'cat');

SELECT * FROM pets;

CREATE TABLE adoption (pet_id int UNIQUE, customer_id int REFERENCES customers(customer_id));
INSERT INTO adoption(pet_id, customer_id) VALUES(1, 1) ON CONFLICT DO NOTHING;
INSERT INTO adoption(pet_id, customer_id) VALUES(1, 2) ON CONFLICT DO NOTHING;


SELECT * FROM adoption;