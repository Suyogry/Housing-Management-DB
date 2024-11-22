CREATE OR REPLACE TRIGGER AutoStatusUpdate
AFTER INSERT ON MaintenanceRequests
FOR EACH ROW
BEGIN
    IF :NEW.Status IS NULL THEN
        UPDATE MaintenanceRequests
        SET Status = 'Pending'
        WHERE RequestID = :NEW.RequestID;
    END IF;
END;
/
