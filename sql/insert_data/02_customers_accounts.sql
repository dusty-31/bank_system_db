INSERT INTO Bank_System.customer(first_name, last_name)
VALUES ('John', 'Doe'),
       ('Jade', 'Redfield'),
       ('Chris', 'Cross');

INSERT INTO Bank_System.customer_detail(date_of_birth, address, phone, social_security_number, occupation, email,
                                        customer_id)
VALUES ('1990-01-01', '123 Main St, New York, NY', '123-456-7890', '0000000001', 'Software Engineer',
        'john_doe@gmail.com', 1),
       ('1995-02-02', '456 Elm St, New York, NY', '234-567-8901', '0000000002', 'Doctor', 'jade_redfield@gmail.com',
        2),
       ('1985-03-03', '789 Oak St, New York, NY', '345-678-9012', '0000000003', 'Lawyer', 'chris_cross@gmail.com', 3);

INSERT INTO Bank_System.account_type(type)
VALUES ('Checking'),
       ('Savings'),
       ('Credit Card'),
       ('Loan');

INSERT INTO Bank_System.account(balance, account_type_id, customer_id)
VALUES (1000, 1, 1),
       (2000, 2, 2),
       (3000, 3, 2),
       (4000, 4, 3);


