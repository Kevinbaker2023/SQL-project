CREATE TABLE customer(
customer_id SERIAL PRIMARY KEY,
full_name VARCHAR,
email VARCHAR
);

CREATE TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    salesperson_name VARCHAR,
    phone_number VARCHAR,
    email VARCHAR
);

CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    car_info VARCHAR,
    car_year INTEGER,
    make VARCHAR,
    model VARCHAR
);

CREATE TABLE customer_car(
    customer_car_id SERIAL PRIMARY KEY,
    car_vin VARCHAR,
    car_year INTEGER,
    car_make VARCHAR,
    car_model VARCHAR
);

CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    mechanic_name VARCHAR
);

CREATE TABLE services(
    service_id SERIAL PRIMARY KEY,
    service_info VARCHAR(150),
    price VARCHAR
);

CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    salesperson_id INTEGER,
    car_id INTEGER,
    amount_paid VARCHAR,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
    FOREIGN KEY (car_id) REFERENCES car(car_id)
);

CREATE TABLE service_ticket(
    service_ticket_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    mechanic_id INTEGER,
    service_id INTEGER,
    customer_car_id INTEGER,
    service_desc VARCHAR,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id),
    FOREIGN KEY (service_id) REFERENCES services(service_id),
    FOREIGN KEY (customer_car_id) REFERENCES customer_car(customer_car_id)
);

CREATE TABLE service_history(
    service_history_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    mechanic_id INTEGER,
    service_id INTEGER,
    service_history_desc VARCHAR,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id),
    FOREIGN KEY (service_id) REFERENCES services(service_id)
);