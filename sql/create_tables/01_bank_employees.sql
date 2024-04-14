CREATE SCHEMA IF NOT EXISTS Bank_System;

USE Bank_System;

CREATE TABLE Bank_System.branch
(
    branch_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    address   VARCHAR(100)                   NOT NULL,
    code      VARCHAR(10)                    NOT NULL UNIQUE
);

CREATE TABLE Bank_System.employee_type
(
    employee_type_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    employee_type    VARCHAR(50)                    NOT NULL
);

CREATE TABLE Bank_System.employee
(
    employee_id      INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    first_name       VARCHAR(30)                    NOT NULL,
    last_name        VARCHAR(30)                    NOT NULL,
    salary           DECIMAL(10, 2)                 NOT NULL,

    employee_type_id INT,
    FOREIGN KEY (employee_type_id) REFERENCES Bank_System.employee_type (employee_type_id)

);

CREATE TABLE Bank_System.employee_detail
(
    employee_detail_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    address            VARCHAR(50)                    NOT NULL,
    phone_number       VARCHAR(13)                    NOT NULL,

    employee_id        INT UNIQUE                     NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Bank_System.employee (employee_id)
);

ALTER TABLE Bank_System.branch
    ADD COLUMN manager_id INT NOT NULL,
    ADD CONSTRAINT manager_id
        FOREIGN KEY (manager_id) REFERENCES Bank_System.employee (employee_id);

ALTER TABLE Bank_System.employee
    ADD COLUMN branch_id INT NOT NULL,
    ADD CONSTRAINT branch_id
        FOREIGN KEY (branch_id) REFERENCES Bank_System.branch (branch_id);
