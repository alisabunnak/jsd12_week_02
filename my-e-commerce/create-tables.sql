CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE staff (
    staff_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(50),
    phone VARCHAR(20)
);

CREATE TABLE shoe_categories (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);

CREATE TABLE shoes (
    shoe_id SERIAL PRIMARY KEY,
    brand VARCHAR(50),
    model VARCHAR(50),
    size INT,
    color VARCHAR(30),
    rental_price DECIMAL(10,2) NOT NULL,
    status VARCHAR(20) DEFAULT 'available',
    category_id INT,

    FOREIGN KEY (category_id)
    REFERENCES shoe_categories(category_id)
);

CREATE TABLE rentals (
    rental_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    shoe_id INT NOT NULL,
    staff_id INT,
    rent_date DATE NOT NULL,
    return_date DATE,
    status VARCHAR(20) DEFAULT 'rented',

    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id),

    FOREIGN KEY (shoe_id)
    REFERENCES shoes(shoe_id),

    FOREIGN KEY (staff_id)
    REFERENCES staff(staff_id)
);

CREATE TABLE payments (
    payment_id SERIAL PRIMARY KEY,
    rental_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    payment_date DATE DEFAULT CURRENT_DATE,
    payment_method VARCHAR(50),

    FOREIGN KEY (rental_id)
    REFERENCES rentals(rental_id)
);