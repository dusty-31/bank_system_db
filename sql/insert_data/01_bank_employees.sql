INSERT INTO Bank_System.branch (address, code)
VALUES ('1234 Main St, New-York, USA', 'M0001'),
       ('5678 Elm St, , Chandler', 'M0002'),
       ('9101 Oak St, Douglas, USA', 'M003');

INSERT INTO Bank_System.employee_type(employee_type)
VALUES ('Teller'),
       ('Branch Manager'),
       ('Loan Officer'),
       ('Customer Service Representative'),
       ('Financial Advisor'),
       ('Accountant'),
       ('Security Guard');

INSERT INTO Bank_System.employee(first_name, last_name, salary, employee_type_id, branch_id)
VALUES ('John', 'Doe', 3500, 2, 1),
       ('Dusty', 'Keegan', 1200, 1, 1),
       ('Sara', 'O\'Connor', 1100, 1, 1),
       ('Tom', 'Smith', 2100, 3, 1),
       ('Mike', 'Lores', 900, 7, 1),
       ('Jane', 'Smith', 60000, 2, 2),
       ('Mike', 'Johnson', 70000, 2, 3);

INSERT INTO Bank_System.employee_detail(address, phone_number, employee_id)
VALUES ('0001 Main St, New-York, USA', '555-123-4567', 1),
       ('0002 Main St, New-York, USA', '555-987-6543', 2),
       ('0003 Main St, New-York, USA', '555-456-7890', 3),
       ('0004 Main St, New-York, USA', '555-321-0987', 4),
       ('0005 Main St, New-York, USA', '555-789-0123', 5),
       ('0006 Main St, New-York, USA', '555-234-5678', 6),
       ('0007 Main St, New-York, USA', '555-876-5432', 7);

UPDATE Bank_System.branch
SET manager_id = 1
WHERE branch_id = 1;

UPDATE Bank_System.branch
SET manager_id = 6
WHERE branch_id = 2;

UPDATE Bank_System.branch
SET manager_id = 7
WHERE branch_id = 3;