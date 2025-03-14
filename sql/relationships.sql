-- Add Relationships
ALTER TABLE Leases ADD CONSTRAINT fk_student FOREIGN KEY (StudentID) REFERENCES Students(StudentID);
ALTER TABLE Leases ADD CONSTRAINT fk_room FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID);

ALTER TABLE Payments ADD CONSTRAINT fk_lease FOREIGN KEY (LeaseID) REFERENCES Leases(LeaseID);

ALTER TABLE MaintenanceRequests ADD CONSTRAINT fk_room FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID);
