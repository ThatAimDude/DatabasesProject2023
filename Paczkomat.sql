
USE master;
GO

IF EXISTS (SELECT * FROM sys.databases WHERE name = 'Paczkomat')
BEGIN
    ALTER DATABASE Paczkomat SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    
    DROP DATABASE Paczkomat;
END
GO

CREATE DATABASE Paczkomat;
GO

USE Paczkomat;
GO

IF OBJECT_ID('Users', 'U') IS NOT NULL
    DROP TABLE Users;
GO

IF OBJECT_ID('Packages', 'U') IS NOT NULL
    DROP TABLE Packages;
GO

IF OBJECT_ID('Paczkomats', 'U') IS NOT NULL
    DROP TABLE Paczkomats;
GO

IF OBJECT_ID('LockerSlots', 'U') IS NOT NULL
    DROP TABLE LockerSlots;
GO

IF OBJECT_ID('UsersCredentials', 'U') IS NOT NULL
    DROP TABLE UsersCredentials;
GO

CREATE TABLE Users (
    UserID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(255),
    Email NVARCHAR(255),
    Phone NVARCHAR(255),
    Address NVARCHAR(255)
);

CREATE TABLE Packages (
    PackageID INT IDENTITY(1,1) PRIMARY KEY,
    UserID INT FOREIGN KEY REFERENCES Users(UserID),
    TrackingCode NVARCHAR(255),
    Size NVARCHAR(255),
    Status NVARCHAR(255),
    PickupReminder BIT,
    PickupNotificationMethod NVARCHAR(255),
    StatusStage1 NVARCHAR(255),
    StatusStage2 NVARCHAR(255),
    StatusStage3 NVARCHAR(255),
    StatusStage4 NVARCHAR(255),
    StatusStage5 NVARCHAR(255)
);


CREATE TABLE Paczkomats (
    PaczkomatID INT IDENTITY(1,1) PRIMARY KEY,
    Location NVARCHAR(255),
    PostalCode NVARCHAR(255),
    Capacity INT,
    Accessibility NVARCHAR(255)
);

CREATE TABLE LockerSlots (
    SlotID INT IDENTITY(1,1) PRIMARY KEY,
    PaczkomatID INT FOREIGN KEY REFERENCES Paczkomats(PaczkomatID),
    Size NVARCHAR(255),
    Availability NVARCHAR(255)
);

CREATE TABLE UsersCredentials (
    Username NVARCHAR(255),
    Password NVARCHAR(255)
);

CREATE TABLE CityCosts (
    ID INT IDENTITY(1, 1) PRIMARY KEY,
    FromCity NVARCHAR(255),
    ToCity NVARCHAR(255),
    Cost DECIMAL(10, 2)
);
