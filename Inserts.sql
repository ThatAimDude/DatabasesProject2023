-- Insert random data into the Users table
INSERT INTO Users (Name, Email, Phone, Address)
VALUES ('John Doe', 'john.doe@example.com', '1234567890', '123 Main Street');

INSERT INTO Users (Name, Email, Phone, Address)
VALUES ('Jane Smith', 'jane.smith@example.com', '0987654321', '456 Elm Street');



-- Insert random data into the Paczkomats table
INSERT INTO Paczkomats (Location, PostalCode, Capacity, Accessibility)
VALUES ('Paczkomat A', '12345', 100, 'Accessible');

INSERT INTO Paczkomats (Location, PostalCode, Capacity, Accessibility)
VALUES ('Paczkomat B', '67890', 200, 'Not Accessible');

-- Insert random data into the LockerSlots table
INSERT INTO LockerSlots (PaczkomatID, Size, Availability)
VALUES (1, 'Small', 'Available');

INSERT INTO LockerSlots (PaczkomatID, Size, Availability)
VALUES (2, 'Large', 'Unavailable');

-- Insert random data into the UsersCredentials table

-- Insert random data into the Users table
INSERT INTO Users (Name, Email, Phone, Address)
VALUES ('Michael Johnson', 'michael.johnson@example.com', '111222333', '789 Oak Avenue');

INSERT INTO Users (Name, Email, Phone, Address)
VALUES ('Emily Davis', 'emily.davis@example.com', '444555666', '321 Pine Street');

INSERT INTO Users (Name, Email, Phone, Address)
VALUES ('David Wilson', 'david.wilson@example.com', '777888999', '987 Cedar Road');

INSERT INTO Users (Name, Email, Phone, Address)
VALUES ('Olivia Thompson', 'olivia.thompson@example.com', '333222111', '654 Birch Lane');

INSERT INTO Users (Name, Email, Phone, Address)
VALUES ('Ethan Martinez', 'ethan.martinez@example.com', '999888777', '123 Spruce Court');


INSERT INTO Packages (UserID, TrackingCode, Size, Status, PickupReminder, PickupNotificationMethod, StatusStage1, StatusStage2, StatusStage3, StatusStage4, StatusStage5)
VALUES (1, 'ABC123', 'Small', 'In Transit', 1, 'Email', 'Ordered', 'Shipped', 'In Transit', 'Delivered', 'Received');

INSERT INTO Packages (UserID, TrackingCode, Size, Status, PickupReminder, PickupNotificationMethod, StatusStage1, StatusStage2, StatusStage3, StatusStage4, StatusStage5)
VALUES (2, 'DEF456', 'Medium', 'Delivered', 0, 'SMS', 'Ordered', 'Shipped', 'In Transit', 'Delivered', 'Received');

INSERT INTO Packages (UserID, TrackingCode, Size, Status, PickupReminder, PickupNotificationMethod, StatusStage1, StatusStage2, StatusStage3, StatusStage4, StatusStage5)
VALUES (3, 'GHI789', 'Large', 'In Transit', 1, 'Email', 'Ordered', 'Shipped', 'In Transit', null, null);

INSERT INTO Packages (UserID, TrackingCode, Size, Status, PickupReminder, PickupNotificationMethod, StatusStage1, StatusStage2, StatusStage3, StatusStage4, StatusStage5)
VALUES (4, 'JKL012', 'Small', 'Delivered', 0, 'SMS', 'Ordered', 'Shipped', null, null, null);

INSERT INTO Packages (UserID, TrackingCode, Size, Status, PickupReminder, PickupNotificationMethod, StatusStage1, StatusStage2, StatusStage3, StatusStage4, StatusStage5)
VALUES (5, 'MNO345', 'Medium', 'In Transit', 1, 'Email', 'Ordered', null, null, null, null);



-- Insert random data into the Paczkomats table
INSERT INTO Paczkomats (Location, PostalCode, Capacity, Accessibility)
VALUES ('Paczkomat C', '13579', 150, 'Accessible');

INSERT INTO Paczkomats (Location, PostalCode, Capacity, Accessibility)
VALUES ('Paczkomat D', '24680', 100, 'Not Accessible');

INSERT INTO Paczkomats (Location, PostalCode, Capacity, Accessibility)
VALUES ('Paczkomat E', '98765', 50, 'Accessible');

INSERT INTO Paczkomats (Location, PostalCode, Capacity, Accessibility)
VALUES ('Paczkomat F', '43210', 200, 'Accessible');

INSERT INTO Paczkomats (Location, PostalCode, Capacity, Accessibility)
VALUES ('Paczkomat G', '56789', 100, 'Not Accessible');


-- Insert random data into the LockerSlots table
INSERT INTO LockerSlots (PaczkomatID, Size, Availability)
VALUES (3, 'Small', 'Available');

INSERT INTO LockerSlots (PaczkomatID, Size, Availability)
VALUES (4, 'Medium', 'Unavailable');

INSERT INTO LockerSlots (PaczkomatID, Size, Availability)
VALUES (5, 'Large', 'Available');

INSERT INTO LockerSlots (PaczkomatID, Size, Availability)
VALUES (1, 'Small', 'Unavailable');

INSERT INTO LockerSlots (PaczkomatID, Size, Availability)
VALUES (2, 'Large', 'Available');



INSERT INTO CityCosts (FromCity, ToCity, Cost)
VALUES
    ('Lublin', 'Warsaw', 40.00),
    ('Lublin', 'Krakow', 50.00),
    ('Lublin', 'Gdansk', 70.00),
    ('Lublin', 'Wroclaw', 60.00),
    ('Warsaw', 'Lublin', 40.00),
    ('Warsaw', 'Krakow', 40.00),
    ('Warsaw', 'Gdansk', 80.00),
    ('Warsaw', 'Wroclaw', 70.00),
    ('Krakow', 'Lublin', 50.00),
    ('Krakow', 'Warsaw', 40.00),
    ('Krakow', 'Gdansk', 90.00),
    ('Krakow', 'Wroclaw', 80.00),
    ('Gdansk', 'Lublin', 70.00),
    ('Gdansk', 'Warsaw', 80.00),
    ('Gdansk', 'Krakow', 90.00),
    ('Gdansk', 'Wroclaw', 100.00),
    ('Wroclaw', 'Lublin', 60.00),
    ('Wroclaw', 'Warsaw', 70.00),
    ('Wroclaw', 'Krakow', 80.00),
    ('Wroclaw', 'Gdansk', 100.00);
