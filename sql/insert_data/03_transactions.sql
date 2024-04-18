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

INSERT INTO Bank_System.cash_desk (number, balance, branch_id)
VALUES ('M001', 10000, 1),
       ('M002', 50000, 1),
       ('L001', 40000, 1),
       ('C001', 100, 2),
       ('M003', 50, 2),
       ('L002', 100, 2),
       ('C002', 200, 2);

INSERT INTO Bank_System.transaction(amount, currency, recipient_account, employee_id,
                                    cash_desk_id, transaction_type_id, status_id, account_id)
VALUES (1000, 'USD', 2, 1, 1, 1, 2, 1),
       (500, 'USD', 3, 1, 1, 1, 2, 2),
       (100, 'USD', 4, 1, 1, 1, 2, 3),
       (100, 'USD', 5, 1, 1, 1, 2, 1),
       (100, 'USD', 6, 1, 1, 1, 2, 2),
       (100, 'USD', 7, 1, 1, 1, 2, 3),
       (100, 'USD', 8, 1, 1, 1, 2, 1),
       (100, 'USD', 9, 1, 1, 1, 2, 2),
       (100, 'USD', 10, 1, 1, 1, 2, 3),
       (100, 'USD', 11, 1, 1, 1, 2, 2),
       (100, 'USD', 12, 1, 1, 1, 2, 1),
       (100, 'USD', 13, 1, 1, 1, 2, 2),
       (100, 'USD', 14, 1, 1, 1, 2, 1);


