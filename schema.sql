-- Tabla de clientes
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    country VARCHAR(50)
);

-- Tabla de productos
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10,2)
);

-- Tabla de órdenes
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
-- Insertar clientes
INSERT INTO customers (customer_id, name, country) VALUES
(1, 'Juan', 'Argentina'),
(2, 'Ana', 'Chile'),
(3, 'Carlos', 'Peru');

-- Insertar productos
INSERT INTO products (product_id, product_name, price) VALUES
(1, 'Mouse', 25.00),
(2, 'Keyboard', 50.00),
(3, 'Monitor', 200.00);

-- Insertar órdenes
INSERT INTO orders (order_id, customer_id, product_id, quantity, order_date) VALUES
(1, 1, 1, 2, '2024-01-10'),
(2, 2, 2, 1, '2024-01-11'),
(3, 1, 3, 1, '2024-01-12'),
(4, 3, 1, 1, '2024-01-13'),
(5, 2, 1, 3, '2024-01-14');