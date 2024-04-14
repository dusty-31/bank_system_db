CREATE TABLE Bank_System.currency
(
    currency_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name        VARCHAR(50)                    NOT NULL,
    code        VARCHAR(3)                     NOT NULL,
    symbol      VARCHAR(5)                     NOT NULL
);


CREATE TABLE Bank_System.transaction_type
(
    transaction_type_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name                VARCHAR(50)
);

CREATE TABLE Bank_System.transaction_status
(
    transaction_status_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name                  VARCHAR(20)                    NOT NULL
);


CREATE TABLE Bank_System.transaction
(
    transaction_id          INT PRIMARY KEY AUTO_INCREMENT      NOT NULL,
    datetime_of_transaction TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    amount                  DECIMAL(10, 2)                      NOT NULL,

    currency_id             INT                                 NOT NULL,
    FOREIGN KEY (currency_id) REFERENCES Bank_System.currency (currency_id),
    transaction_type_id     INT                                 NOT NULL,
    FOREIGN KEY (transaction_type_id) REFERENCES Bank_System.transaction_type (transaction_type_id),
    status_id               INT                                 NOT NULL,
    FOREIGN KEY (status_id) REFERENCES Bank_System.transaction_status (transaction_status_id)
);

CREATE TABLE Bank_System.account_transaction
(
    account_transaction_id INT PRIMARY KEY AUTO_INCREMENT,

    account_id             INT NOT NULL,
    FOREIGN KEY (account_id) REFERENCES Bank_System.account (account_id),
    transaction_id         INT NOT NULL,
    FOREIGN KEY (transaction_id) REFERENCES Bank_System.transaction (transaction_id)
);

CREATE TABLE Bank_System.transaction_approval
(
    transaction_approval_id INT PRIMARY KEY AUTO_INCREMENT      NOT NULL,
    approval_date           TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,

    approved_by_employee_id INT                                 NOT NULL,
    FOREIGN KEY (approved_by_employee_id) REFERENCES Bank_System.employee (employee_id),
    transaction_id          INT                                 NOT NULL,
    FOREIGN KEY (transaction_id) REFERENCES Bank_System.transaction (transaction_id)

);

CREATE TABLE Bank_System.rejected_transaction
(
    rejected_transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    rejection_date          TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    reason                  VARCHAR(255) NOT NULL,

    rejected_by_user_id     INT          NOT NULL,
    FOREIGN KEY (rejected_by_user_id) REFERENCES Bank_System.employee (employee_id),
    transaction_id          INT          NOT NULL,
    FOREIGN KEY (transaction_id) REFERENCES Bank_System.transaction (transaction_id)
);
