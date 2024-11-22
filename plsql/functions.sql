-- Function to Calculate Total Rent for a Given Lease
CREATE OR REPLACE FUNCTION CalculateTotalRent(p_leaseID NUMBER) RETURN NUMBER IS
    total_rent NUMBER;
BEGIN
    SELECT (EndDate - StartDate) * Rent
    INTO total_rent
    FROM Leases
    JOIN Rooms ON Leases.RoomID = Rooms.RoomID
    WHERE Leases.LeaseID = p_leaseID;

    RETURN total_rent;
END;
/
