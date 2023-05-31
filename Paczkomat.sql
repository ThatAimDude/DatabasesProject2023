
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
    UserID INT PRIMARY KEY,
    Name NVARCHAR(255),
    Email NVARCHAR(255),
    Phone NVARCHAR(255),
    Address NVARCHAR(255)
);

CREATE TABLE Packages (
    PackageID INT PRIMARY KEY,
    UserID INT FOREIGN KEY REFERENCES Users(UserID),
    TrackingCode NVARCHAR(255),
    Size NVARCHAR(255),
    Status NVARCHAR(255),
    PickupReminder BIT,
    PickupNotificationMethod NVARCHAR(255)
);

CREATE TABLE Paczkomats (
    PaczkomatID INT PRIMARY KEY,
    Location NVARCHAR(255),
    PostalCode NVARCHAR(255),
    Capacity INT,
    Accessibility NVARCHAR(255)
);

CREATE TABLE LockerSlots (
    SlotID INT PRIMARY KEY,
    PaczkomatID INT FOREIGN KEY REFERENCES Paczkomats(PaczkomatID),
    Size NVARCHAR(255),
    Availability NVARCHAR(255)
);

CREATE TABLE UsersCredentials (
    UserID INT PRIMARY KEY FOREIGN KEY REFERENCES Users(UserID),
    Username NVARCHAR(255),
    Password NVARCHAR(255)
);
