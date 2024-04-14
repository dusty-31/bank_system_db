INSERT INTO Bank_System.transaction_type (name)
VALUES ('Deposit'),
       ('Withdrawal'),
       ('Transfer'),
       ('Currency Exchange'),
       ('Bill Payment'),
       ('Currency Purchase'),
       ('Check Operations');

INSERT INTO Bank_System.transaction_status (name)
VALUES ('Pending'),
       ('Completed'),
       ('Canceled'),
       ('Failed');

INSERT INTO Bank_System.transaction(amount, currency, transaction_type_id, status_id,
                                    account_id)
VALUES (1000, 'USD', 1, 2, 1),
       (500, 'USD', 2, 2, 1),
       (200, 'USD', 3, 2, 1),
       (100, 'USD', 4, 2, 1),
       (50, 'USD', 5, 2, 1),
       (100, 'USD', 6, 2, 1),
       (200, 'USD', 7, 2, 1);