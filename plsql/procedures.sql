CREATE OR REPLACE PROCEDURE UpdatePaymentStatus (p_leaseID NUMBER) AS
BEGIN
    UPDATE Payments
    SET PaymentDate = SYSDATE
    WHERE LeaseID = p_leaseID;
    COMMIT;
END;
/
