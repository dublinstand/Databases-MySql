-- Problem 5.	Online Store Database

CREATE DATABASE online_store;

USE online_store;

CREATE TABLE cities(
city_id INT NOT NULL PRIMARY KEY,
name VARCHAR(50) NOT NULL,
CONSTRAINT UNIQUE KEY uk_name (name)
);


CREATE TABLE customers(
customer_id INT NOT NULL PRIMARY KEY,
name VARCHAR(50) NOT NULL,
birthdayte DATE,
city_id INT,
CONSTRAINT fk_customers_cities FOREIGN KEY (city_id) REFERENCES cities(city_id)
);


CREATE TABLE orders(
order_id INT NOT NULL PRIMARY KEY,
customer_id INT NOT NULL,
CONSTRAINT fk_orders_customers FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE item_types(
item_type_id INT NOT NULL PRIMARY KEY,
name VARCHAR(50)
);

CREATE TABLE items(
item_id INT NOT NULL PRIMARY KEY,
name VARCHAR(50) NOT NULL,
item_type_id INT,
CONSTRAINT fk_items_item_types FOREIGN KEY (item_type_id) REFERENCES item_types(item_type_id)
);

CREATE TABLE order_items(
order_id INT NOT NULL,
item_id INT NOT NULL,
PRIMARY KEY (order_id, item_id),
CONSTRAINT fk_order_items__items FOREIGN KEY (item_id) REFERENCES items (item_id),
CONSTRAINT fk_order_items__orders FOREIGN KEY (order_id) REFERENCES orders (order_id)
);