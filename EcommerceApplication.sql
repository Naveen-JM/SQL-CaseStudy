Create Database EcommerceApplication;
Use ECommerceApplication;
-- Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255)
);

-- Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    name VARCHAR(255),
    price DECIMAL(10, 2),
    description TEXT,
    stockQuantity INT
);

-- Cart Table
CREATE TABLE cart (
    cart_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_price DECIMAL(10, 2),
    shipping_address VARCHAR(255),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Order Items Table
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Assuming the customers table already exists

INSERT INTO customers (customer_id, name, email, password) 
VALUES
(1, 'Aarav Sharma', 'aarav.sharma@example.com', 'password123'),
(2, 'Anaya Singh', 'anaya.singh@example.com', 'securepass'),
(3, 'Aryan Patel', 'aryan.patel@example.com', 'pass123'),
(4, 'Ishaan Gupta', 'ishaan.gupta@example.com', 'mypassword'),
(5, 'Aisha Reddy', 'aisha.reddy@example.com', 'aishapass'),
(6, 'Zoya Khan', 'zoya.khan@example.com', 'zoyapassword'),
(7, 'Vihaan Verma', 'vihaan.verma@example.com', 'mypassword123'),
(8, 'Sara Yadav', 'sara.yadav@example.com', 'sarapass'),
(9, 'Rohan Kapoor', 'rohan.kapoor@example.com', 'rohanpass'),
(10, 'Anika Mishra', 'anika.mishra@example.com', 'anikapassword');

-- Products Table
INSERT INTO products (product_id, name, price, description, stockQuantity) VALUES
(1, 'Saree', 500.00, 'Traditional Indian attire for women', 50),
(2, 'Kurta Set', 700.00, 'Stylish ethnic wear for men', 30),
(3, 'Jewelry Set', 150.00, 'Handcrafted Indian jewelry', 100),
(4, 'Masala Chai', 10.00, 'Authentic Indian spiced tea blend', 200),
(5, 'Ayurvedic Soap', 50.00, 'Natural soap with Ayurvedic ingredients', 80),
(6, 'Spice Box (Masala Dabba)', 200.00, 'Container for essential Indian spices', 40),
(7, 'Handloom Bedcover', 300.00, 'Traditional handwoven bedcover', 60),
(8, 'Tandoori Oven', 1000.00, 'Clay oven for authentic tandoori dishes', 15),
(9, 'Indian Art Print', 80.00, 'Print of traditional Indian artwork', 25),
(10, 'Incense Sticks (Agarbatti)', 20.00, 'Fragrant incense sticks for rituals', 100);

-- Cart Table
INSERT INTO cart (cart_id, customer_id, product_id, quantity) VALUES
(1, 1, 3, 2), -- Customer 1 adds 2 units of Product 3 to their cart
(2, 2, 1, 1), -- Customer 2 adds 1 unit of Product 1 to their cart
(3, 1, 7, 3), -- Customer 1 adds 3 units of Product 7 to their cart
(4, 3, 4, 1), -- Customer 3 adds 1 unit of Product 4 to their cart
(5, 2, 6, 2), -- Customer 2 adds 2 units of Product 6 to their cart
(6, 1, 2, 1), -- Customer 1 adds 1 unit of Product 2 to their cart
(7, 3, 5, 4), -- Customer 3 adds 4 units of Product 5 to their cart
(8, 1, 9, 2), -- Customer 1 adds 2 units of Product 9 to their cart
(9, 2, 8, 1), -- Customer 2 adds 1 unit of Product 8 to their cart
(10, 3, 10, 3); -- Customer 3 adds 3 units of Product 10 to their cart

-- Orders Table
INSERT INTO orders (order_id, customer_id, order_date, total_price, shipping_address) VALUES
(1, 1, '2023-01-15', 249.99, '123, ABC Street, Mumbai, Maharashtra, 400001, India'),
(2, 2, '2023-02-20', 499.99, '456, XYZ Road, Delhi, Delhi, 110001, India'),
(3, 3, '2023-03-10', 199.99, '789, PQR Lane, Bangalore, Karnataka, 560001, India'),
(4, 1, '2023-04-05', 799.99, '321, LMN Avenue, Kolkata, West Bengal, 700001, India'),
(5, 2, '2023-05-12', 299.99, '654, UVW Drive, Chennai, Tamil Nadu, 600001, India'),
(6, 3, '2023-06-18', 599.99, '987, EFG Boulevard, Hyderabad, Telangana, 500001, India'),
(7, 1, '2023-07-22', 149.99, '111, GHI Crescent, Pune, Maharashtra, 411001, India'),
(8, 2, '2023-08-30', 399.99, '222, JKL Square, Ahmedabad, Gujarat, 380001, India'),
(9, 3, '2023-09-05', 899.99, '333, RST Place, Jaipur, Rajasthan, 302001, India'),
(10, 1, '2023-10-15', 449.99, '444, OPQ Lane, Lucknow, Uttar Pradesh, 226001, India');

-- Order Items Table
INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES
(1, 1, 3, 2), 
(2, 1, 7, 1), 
(3, 2, 1, 1), 
(4, 2, 5, 3), 
(5, 3, 4, 2), 
(6, 3, 8, 1), 
(7, 4, 2, 1), 
(8, 4, 6, 2), 
(9, 5, 10, 3), 
(10, 5, 3, 1); 


