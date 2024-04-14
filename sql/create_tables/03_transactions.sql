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
    transaction_id          INT PRIMARY KEY AUTO_INCREMENT        NOT NULL,
    amount                  DECIMAL(10, 2)                        NOT NULL,
    currency                VARCHAR(30)                           NOT NULL,
    datetime_of_transaction TIMESTAMP DEFAULT (CURRENT_TIMESTAMP) NOT NULL,

    transaction_type_id     INT                                   NOT NULL,
    FOREIGN KEY (transaction_type_id) REFERENCES Bank_System.transaction_type (transaction_type_id),
    status_id               INT                                   NOT NULL,
    FOREIGN KEY (status_id) REFERENCES Bank_System.transaction_status (transaction_status_id),
    account_id              INT                                   NOT NULL,
    FOREIGN KEY (account_id) REFERENCES Bank_System.account (account_id)
);