-- Insert random data into the Users table
INSERT INTO Users (Name, Email, Phone, Address)
VALUES ('John Doe', 'john.doe@example.com', '1234567890', '123 Main Street');

INSERT INTO Users (Name, Email, Phone, Address)
VALUES ('Jane Smith', 'jane.smith@example.com', '0987654321', '456 Elm Street');

-- Insert random data into the Packages table
INSERT INTO Packages (UserID, TrackingCode, Size, Status, PickupReminder, PickupNotificationMethod)
VALUES (1, 'ABC123', 'Small', 'In Transit', 1, 'Email');

INSERT INTO Packages (UserID, TrackingCode, Size, Status, PickupReminder, PickupNotificationMethod)
VALUES (2, 'DEF456', 'Medium', 'Delivered', 0, 'SMS');

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
INSERT INTO UsersCredentials (UserID, Username, Password)
VALUES (1, 'johndoe', 'password123');

INSERT INTO UsersCredentials (UserID, Username, Password)
VALUES (2, 'janesmith', 'qwerty456');

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


-- Insert random data into the Packages table
INSERT INTO Packages (UserID, TrackingCode, Size, Status, PickupReminder, PickupNotificationMethod)
VALUES (3, 'GHI789', 'Large', 'In Transit', 1, 'Email');

INSERT INTO Packages (UserID, TrackingCode, Size, Status, PickupReminder, PickupNotificationMethod)
VALUES (4, 'JKL012', 'Small', 'Delivered', 0, 'SMS');

INSERT INTO Packages (UserID, TrackingCode, Size, Status, PickupReminder, PickupNotificationMethod)
VALUES (5, 'MNO345', 'Medium', 'In Transit', 1, 'Email');

INSERT INTO Packages (UserID, TrackingCode, Size, Status, PickupReminder, PickupNotificationMethod)
VALUES (1, 'PQR678', 'Large', 'Delivered', 0, 'SMS');

INSERT INTO Packages (UserID, TrackingCode, Size, Status, PickupReminder, PickupNotificationMethod)
VALUES (2, 'STU901', 'Small', 'In Transit', 1, 'Email');


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


-- Insert random data into the UsersCredentials table
INSERT INTO UsersCredentials (UserID, Username, Password)
VALUES (3, 'michaelj', 'abc123');

INSERT INTO UsersCredentials (UserID, Username, Password)
VALUES (4, 'emilyd', 'xyz789');

INSERT INTO UsersCredentials (UserID, Username, Password)
VALUES (5, 'davidw', 'password456');

INSERT INTO UsersCredentials (UserID, Username, Password)
VALUES (1, 'oliviat', 'qwerty789');

INSERT INTO UsersCredentials (UserID, Username, Password)
VALUES (2, 'ethanm', 'pass123');
