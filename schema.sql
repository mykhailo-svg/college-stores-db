CREATE TABLE stores (
    store_code VARCHAR(50) PRIMARY KEY,
    store_name VARCHAR(100),
    store_url VARCHAR(100),
    store_country VARCHAR(50),
    phone VARCHAR(20),
    email VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100),
    ip_address VARCHAR(50),
    postal_code VARCHAR(20),
    billing_country VARCHAR(50),
    billing_city VARCHAR(50),
    state_province VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    visible BOOLEAN,
    weight DECIMAL(10, 2),
    height DECIMAL(10, 2),
    sold INT,
    currency VARCHAR(10),
    price DECIMAL(10, 2),
    image_url VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Створення таблиці Orders
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    store_code VARCHAR(50),
    order_date DATE,
    status VARCHAR(50),
    quantity INT,
    shipping_cost DECIMAL(10, 2),
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (store_code) REFERENCES stores(store_code)
);

CREATE TABLE transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    transaction_type VARCHAR(50),
    amount DECIMAL(10, 2),
    total DECIMAL(10, 2),
    tax DECIMAL(10, 2),
    error_code VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

CREATE TABLE payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    credit_card_num VARCHAR(20),
    credit_card_date DATE,
    credit_card_cvv VARCHAR(10),
    payment_status VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
