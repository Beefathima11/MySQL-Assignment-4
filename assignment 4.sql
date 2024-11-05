Create database Country;
Use country;
CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(50),
    Population INT,
    Area INT
);

CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Population INT,
    Rating DECIMAL(3, 1),
    Country_Id INT,
    Country_name VARCHAR(50),
    FOREIGN KEY (Country_Id) REFERENCES Country(Id)
);
INSERT INTO Country (Id, Country_name, Population, Area) VALUES
(1, 'USA', 331000000, 9833520),
(2, 'India', 1380000000, 3287263),
(3, 'Canada', 37700000, 9984670),
(4, 'Australia', 25600000, 7692024),
(5, 'UK', 67800000, 243610),
(6, 'Germany', 83000000, 357022),
(7, 'France', 67000000, 551695),
(8, 'Italy', 60300000, 301340),
(9, 'Japan', 126000000, 377975),
(10, 'South Korea', 51200000, 100210);

select * from country;

INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'John', 'Doe', 331000000, 4.5, 1, 'USA'),
(2, 'Jane', 'Smith', 1380000000, 3.8, 2, 'India'),
(3, 'Alex', 'Johnson', 37700000, 4.7, 3, 'Canada'),
(4, 'Emily', 'Davis', 25600000, 4.0, 4, 'Australia'),
(5, 'Michael', 'Brown', 67800000, 5.0, 5, 'UK'),
(6, 'Sarah', 'Taylor', 83000000, 3.6, 6, 'Germany'),
(7, 'David', 'Wilson', 67000000, 4.2, 7, 'France'),
(8, 'Laura', 'Anderson', 60300000, 4.6, 8, 'Italy'),
(9, 'Daniel', 'Thomas', 126000000, 3.9, 9, 'Japan'),
(10, 'Sophie', 'Martinez', 51200000, 4.3, 10, 'South Korea');
select * from persons;

SELECT DISTINCT Country_name FROM Persons;

SELECT Fname AS First_Name, Lname AS Last_Name FROM Persons;

SELECT * FROM Persons WHERE Rating > 4.0;

SELECT * FROM Country WHERE Population > 1000000;

SELECT * FROM Persons WHERE Country_name = 'USA' OR Rating > 4.5;

SELECT * FROM Persons WHERE Country_name IS NULL;

SELECT * FROM Persons WHERE Country_name IN ('USA', 'Canada', 'UK');

SELECT * FROM Persons WHERE Country_name not IN ('india', 'Australia');

SELECT * FROM Country WHERE Population BETWEEN 50000 AND 200000000; 

SELECT * FROM Country WHERE Country_name NOT LIKE 'C%';