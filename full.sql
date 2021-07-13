BEGIN;

DROP TABLE IF EXISTS products CASCADE;
CREATE TABLE products (id bigserial PRIMARY KEY, title VARCHAR(255), price int, category_id bigint, FOREIGN KEY (category_id) REFERENCES categories (id));
INSERT INTO products (title, price, category_id) VALUES
('Bread', 15, 1),
('Milk', 30, 1),
('Apples', 25, 1),
('iPhone', 300, 2),
('iPad', 400, 2),
('iMac', 500, 2);

DROP TABLE IF EXISTS categories CASCADE;
CREATE TABLE categories(id bigserial PRIMARY KEY, title VARCHAR(255));
INSERT INTO categories (title) VALUES
('food'),
('device');

COMMIT;