-- Create Database
CREATE DATABASE fitness_center_db;

-- Create Tables for fitness center database
USE fitness_center_db;

CREATE TABLE Members (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

CREATE TABLE WorkoutSessions (
    session_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

-- Task #1
-- Adding new customer entries to Members table
INSERT INTO Members (name, age)

VALUES ('John Doe', '34'),
		('Jane Doe', '30'),
        ('Bob Doe', '45'),
        ('Dorthy White', '67'),
        ('Tiffany Smith', '25');

-- Adding workout entries to WorkoutSessions table
INSERT INTO WorkoutSessions (member_id, session_date, session_time, activity)

VALUES (1, '2024-04-23', '1:00pm', 'Basketball'),
		(2, '2024-12-23', '1:00pm', 'Swimming'),
        (3, '2024-12-23', '1:00pm', 'Swimming'),
        (4, '2024-12-14', '8:00am', 'Racquetball'),
        (5, '2024-12-16', '3:30pm', 'Aerobics');

-- Task #2
-- Updating session time for Jane Doe
UPDATE WorkoutSessions
SET session_time = '3:00pm'
WHERE member_id = 2;

-- Task #3
-- Remove data of a member who has canceled their gym membership
DELETE FROM WorkoutSessions
WHERE member_id = 1;

DELETE FROM Members
WHERE id = 1;

SELECT * FROM Members;

SELECT * FROM WorkoutSessions;