CREATE TABLE Bank_System.customer
(
    customer_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    first_name  VARCHAR(30),
    last_name   VARCHAR(30)
);

CREATE TABLE Bank_System.customer_detail
(
    customer_detail_id     INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    date_of_birth          DATE                           NOT NULL,
    address                VARCHAR(50)                    NOT NULL,
    phone                  VARCHAR(15)                    NOT NULL,
    social_security_number VARCHAR(10)                    NOT NULL,
    occupation             VARCHAR(50)                    NOT NULL,
    date_of_registration   DATE DEFAULT (CURRENT_DATE),
    date_of_last_update    DATE DEFAULT NULL,
    email                  VARCHAR(30),

    customer_id            INT                            NOT NULL UNIQUE,
    FOREIGN KEY (customer_id) REFERENCES Bank_System.customer (customer_id)
);

CREATE TABLE Bank_System.account_type
(
    account_type_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    type            VARCHAR(30)                    NOT NULL
);

CREATE TABLE Bank_System.account
(
    account_id             INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    balance                DECIMAL(10, 2)                 NOT NULL,
    date_of_creation       DATE DEFAULT (CURRENT_DATE)    NOT NULL,
    date_of_last_operation DATE DEFAULT NULL,
    date_of_closing        DATE DEFAULT NULL,

    account_type_id        INT                            NOT NULL,
    FOREIGN KEY (account_type_id) REFERENCES Bank_System.account_type (account_type_id),

    customer_id            INT                            NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Bank_System.customer (customer_id)
);
