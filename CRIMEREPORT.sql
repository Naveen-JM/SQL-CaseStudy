create database CARS ;
Use CARS;
CREATE TABLE Incidents (
    IncidentID INT PRIMARY KEY,
    IncidentType VARCHAR(50), 
    IncidentDate DATE,
    Location GEOMETRY,
    Description TEXT,
    Status VARCHAR(20), 
    VictimID INT,
    SuspectID INT,
    FOREIGN KEY (VictimID) REFERENCES Victims(VictimID),
    FOREIGN KEY (SuspectID) REFERENCES Suspects(SuspectID)
);
CREATE TABLE Victims (
    VictimID INT PRIMARY KEY,
    FirstName VARCHAR(50), 
    LastName VARCHAR(50), 
    DateOfBirth DATE,
    Gender VARCHAR(10), 
    Address TEXT, 
    PhoneNumber VARCHAR(20) 
);
CREATE TABLE Suspects (
    SuspectID INT PRIMARY KEY,
    FirstName VARCHAR(50), 
    LastName VARCHAR(50), 
    DateOfBirth DATE,
    Gender VARCHAR(10), 
    ContactInformation TEXT 
);
CREATE TABLE LawEnforcementAgencies (
    AgencyID INT PRIMARY KEY,
    AgencyName VARCHAR(100),
    Jurisdiction VARCHAR(100),
    ContactInformation TEXT
);

CREATE TABLE Officers (
    OfficerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BadgeNumber VARCHAR(20),
    Rank VARCHAR(50),
    ContactInformation TEXT,
    AgencyID INT,
    FOREIGN KEY (AgencyID) REFERENCES LawEnforcementAgencies(AgencyID)
);

CREATE TABLE Evidence (
    EvidenceID INT PRIMARY KEY,
    Description TEXT,
    LocationFound VARCHAR(255),
    IncidentID INT,
    FOREIGN KEY (IncidentID) REFERENCES Incidents(IncidentID)
);

CREATE TABLE Reports (
    ReportID INT PRIMARY KEY,
    IncidentID INT,
    ReportingOfficer INT,
    ReportDate DATE,
    ReportDetails TEXT,
    Status VARCHAR(20),
    FOREIGN KEY (IncidentID) REFERENCES Incidents(IncidentID),
    FOREIGN KEY (ReportingOfficer) REFERENCES Officers(OfficerID)
);

