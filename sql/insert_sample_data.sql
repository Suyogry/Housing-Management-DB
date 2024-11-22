-- Insert Sample Data into Students Table
INSERT INTO Students VALUES (1, 'Alice Smith', 'alice.smith@example.com', '123-456-7890', TO_DATE('1998-05-15', 'YYYY-MM-DD'));
INSERT INTO Students VALUES (2, 'Bob Johnson', 'bob.johnson@example.com', '987-654-3210', TO_DATE('2000-10-10', 'YYYY-MM-DD'));

-- Insert Sample Data into Rooms Table
INSERT INTO Rooms VALUES (101, 'Building A', 'A101', 2, 500);
INSERT INTO Rooms VALUES (102, 'Building B', 'B201', 1, 700);

-- Insert Sample Data into Leases Table
INSERT INTO Leases VALUES (1, 1, 101, TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'));
INSERT INTO Leases VALUES (2, 2, 102, TO_DATE('2023-02-01', 'YYYY-MM-DD'), TO_DATE('2023-11-30', 'YYYY-MM-DD'));

-- Insert Sample Data into Payments Table
INSERT INTO Payments VALUES (1, 1, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 500);
INSERT INTO Payments VALUES (2, 2, TO_DATE('2023-02-15', 'YYYY-MM-DD'), 700);

-- Insert Sample Data into MaintenanceRequests Table
INSERT INTO MaintenanceRequests VALUES (1, 101, TO_DATE('2023-03-01', 'YYYY-MM-DD'), 'Fix leaking faucet', 'Pending');
INSERT INTO MaintenanceRequests VALUES (2, 102, TO_DATE('2023-03-05', 'YYYY-MM-DD'), 'Replace light bulb', 'Completed');
