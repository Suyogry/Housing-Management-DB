-- View for Lease Details
CREATE OR REPLACE VIEW LeaseDetails AS
SELECT 
    Leases.LeaseID,
    Students.Name AS StudentName,
    Rooms.RoomNumber,
    Rooms.Building,
    Leases.StartDate,
    Leases.EndDate
FROM Leases
JOIN Students ON Leases.StudentID = Students.StudentID
JOIN Rooms ON Leases.RoomID = Rooms.RoomID;

-- View for Payment Status
CREATE OR REPLACE VIEW PaymentStatus AS
SELECT 
    Payments.PaymentID,
    Students.Name AS StudentName,
    Rooms.RoomNumber,
    Payments.PaymentDate,
    Payments.AmountPaid
FROM Payments
JOIN Leases ON Payments.LeaseID = Leases.LeaseID
JOIN Students ON Leases.StudentID = Students.StudentID
JOIN Rooms ON Leases.RoomID = Rooms.RoomID;
