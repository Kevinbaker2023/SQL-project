INSERT INTO customer(
    full_name,
    email
) VALUES (
    'Joe Smith',
    'Jsmith2023@gmail.com'
), (
    'Julie Harris',
    'Julharris1998@yahoo.com'
), (
    'Tammy Garcia',
    'Tgar@aol.com'
);

INSERT INTO customer(
    full_name,
    email
) VALUES (
    'Samuel Edwards',
    'samedwards@yahoo.com'
), (
    'Gloria Peterson',
    'gpeters@yahoo.com'
), (
    'Randy Mitchell',
    'Rmitchell@gmail.com'
);

INSERT INTO invoice(
    customer_id,
    salesperson_id,
    car_id,
    amount_paid
) VALUES (
    1,
    1,
    1,
    '$30,525'
), (
    2,
    2,
    2,
    '$21,925'
), (
    3,
    3,
    3,
    '$159,999'
);

INSERT INTO salesperson(
    salesperson_name,
    phone_number,
    email
) VALUES (
    'David Mitchell',
    '993-986-9643',
    'davidmitchell@frostromsubaru.com'
), (
    'Ashley Morgan',
    '993-238-1695',
    'ashleymorgan@frostromsubaru.com'
), (
    'Eric Miller',
    '993-539-4688',
    'ericmiller@frostromsubaru.com'
);

INSERT INTO car(
    car_info,
    car_year,
    make,
    model
) VALUES (
    'New',
    2023,
    'Subaru',
    'Forester'
), (
    'New',
    2024,
    'Toyota',
    'Supra'
), (
    'Used',
    1967,
    'Chevrolet',
    'Impala'
), (
    'Used',
    1965,
    'Ford',
    'Mustang Shelby GT350'
);

INSERT INTO customer_car(
    car_vin,
    car_year,
    car_make,
    car_model
) VALUES (
    'JH4KA7570MC014889',
    2022,
    'Kia',
    'Forte'
), (
    'JF1GR7E64DG203230',
    2012,
    'Toyota',
    'Corolla'
), (
    'WDBAB23ADCB324720',
    2002,
    'Mazda',
    'RX-7'
);

INSERT INTO mechanic(
    mechanic_name
) VALUES (
    'Frank Gonzalez'
), (
    'Jesse Edwards'
), (
    'Terry Campbell'
), (
    'Victor Evans'
);

INSERT INTO services(
    service_info,
    price
) VALUES (
    'Oil Change',
    '$69.99'
), (
    'Tire Rotation',
    '$29.99'
), (
    'Brake Replacememt',
    '$249.95'
);

INSERT INTO service_history(
    customer_id,
    mechanic_id,
    service_id,
    service_history_desc
) VALUES (
    5,
    3,
    1,
    'Oil change done on 09/12/2020'
), (
    6,
    2,
    2,
    'Tire rotation done on 02/28/2019'
);

INSERT INTO service_ticket(
    customer_id,
    mechanic_id,
    service_id,
    customer_car_id,
    service_desc
) VALUES (
    4,
    1,
    1,
    1,
    'Oil change on 05/22/2023'
), (
    5,
    2,
    2,
    2,
    'Tire Rotation 05/23/2023'
), (
    6,
    4,
    3,
    3,
    'Break replacement on 05/24/2023'
);

SELECT * FROM invoice