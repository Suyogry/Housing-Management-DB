-- Create Students Table
CREATE TABLE Students (
    StudentID NUMBER PRIMARY KEY,
    Name VARCHAR2(100),
    Email VARCHAR2(100),
    Phone VARCHAR2(15),
    DOB DATE
);

-- Create Rooms Table
CREATE TABLE Rooms (
    RoomID NUMBER PRIMARY KEY,
    Building VARCHAR2(100),
    RoomNumber VARCHAR2(10),
    Capacity NUMBER,
    Rent NUMBER
);

-- Create Leases Table
CREATE TABLE Leases (
    LeaseID NUMBER PRIMARY KEY,
    StudentID NUMBER,
    RoomID NUMBER,
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID)
);

-- Create Payments Table
CREATE TABLE Payments (
    PaymentID NUMBER PRIMARY KEY,
    LeaseID NUMBER,
    PaymentDate DATE,
    AmountPaid NUMBER,
    FOREIGN KEY (LeaseID) REFERENCES Leases(LeaseID)
);

-- Create MaintenanceRequests Table
CREATE TABLE MaintenanceRequests (
    RequestID NUMBER PRIMARY KEY,
    RoomID NUMBER,
    RequestDate DATE,
    Description VARCHAR2(255),
    Status VARCHAR2(20),
    FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID)
);
