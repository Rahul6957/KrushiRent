CREATE DATABASE agri_rent;

USE agri_rent;

CREATE TABLE Users
(
    Id INT PRIMARY KEY AUTO_INCREMENT,

    FullName VARCHAR(100) NOT NULL,

    Email VARCHAR(150) NOT NULL UNIQUE,

    Mobile VARCHAR(15) NOT NULL UNIQUE,

    PasswordHash VARCHAR(255) NOT NULL,

    Role ENUM('Farmer', 'Owner', 'Admin') NOT NULL,

    IsActive BOOLEAN NOT NULL DEFAULT TRUE,

    CreatedAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    UpdatedAt DATETIME NULL
);


CREATE TABLE Addresses
(
    Id INT PRIMARY KEY AUTO_INCREMENT,

    UserId INT NOT NULL,

    AddressLine VARCHAR(255) NOT NULL,

    Village VARCHAR(100),

    Taluka VARCHAR(100),

    District VARCHAR(100),

    State VARCHAR(100),

    Pincode VARCHAR(10),

    Latitude DECIMAL(10,8),

    Longitude DECIMAL(11,8),

    CreatedAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (UserId)
        REFERENCES Users(Id)
);

CREATE TABLE EquipmentCategories
(
    Id INT PRIMARY KEY AUTO_INCREMENT,

    CategoryName VARCHAR(100) NOT NULL UNIQUE,

    Description VARCHAR(500),

    IsActive BOOLEAN NOT NULL DEFAULT TRUE,

    CreatedAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE Equipment
(
    Id INT PRIMARY KEY AUTO_INCREMENT,

    OwnerId INT NOT NULL,

    CategoryId INT NOT NULL,

    Name VARCHAR(150) NOT NULL,

    Description TEXT,

    Brand VARCHAR(100),

    Model VARCHAR(100),

    ManufacturingYear YEAR,

    PricePerHour DECIMAL(10,2),

    PricePerDay DECIMAL(10,2),

    Location VARCHAR(200) NOT NULL,

    IsApproved BOOLEAN NOT NULL DEFAULT FALSE,

    IsAvailable BOOLEAN NOT NULL DEFAULT TRUE,

    CreatedAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    UpdatedAt DATETIME NULL,

    FOREIGN KEY (OwnerId)
        REFERENCES Users(Id),

    FOREIGN KEY (CategoryId)
        REFERENCES EquipmentCategories(Id)
);

CREATE TABLE Bookings
(
    Id INT PRIMARY KEY AUTO_INCREMENT,

    EquipmentId INT NOT NULL,

    FarmerId INT NOT NULL,

    StartDate DATE NOT NULL,

    EndDate DATE NOT NULL,

    TotalDays INT NOT NULL,

    PricePerDay DECIMAL(10,2) NOT NULL,

    TotalAmount DECIMAL(10,2) NOT NULL,

    Status ENUM(
        'Pending',
        'Approved',
        'Rejected',
        'Cancelled',
        'Completed'
    ) NOT NULL DEFAULT 'Pending',

    CreatedAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    UpdatedAt DATETIME NULL,

    FOREIGN KEY (EquipmentId)
        REFERENCES Equipment(Id),

    FOREIGN KEY (FarmerId)
        REFERENCES Users(Id)
);