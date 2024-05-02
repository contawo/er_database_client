CREATE TABLE Student (
    StudentNo varchar(255) PRIMARY KEY,
    Faculty VARCHAR(255),
    PsNo INT,
    Course VARCHAR(255)
);

CREATE TABLE AcademicRecord (
    StudentNo varchar(255),
    CourseName VARCHAR(255),
    YearOfStudy INT,
    CourseCode VARCHAR(255),
    Results VARCHAR(255),
    FOREIGN KEY (StudentNo) REFERENCES Student(StudentNo)
);

CREATE TABLE Personal (
    StudentNo INT PRIMARY KEY,
    DOB DATE,
    CellNo VARCHAR(20),
    Address VARCHAR(255),
    Name VARCHAR(255)
);

CREATE TABLE BscMajor (
    MajorCode VARCHAR(255) PRIMARY KEY,
    Email VARCHAR(255),
    Office VARCHAR(255),
    Name VARCHAR(255)
);

CREATE TABLE Courses (
    CourseCode VARCHAR(255) PRIMARY KEY,
    YearOfStudy INT,
    NQFCredit INT,
    NQFLevel INT,
    Prerequisite VARCHAR(255),
    Optional BOOLEAN,
    Convener VARCHAR(255),
    CourseName VARCHAR(255)
);

CREATE TABLE LecturePeriod (
    Day VARCHAR(10),
    StartTime TIME,
    EndTime TIME,
    Venue  VARCHAR(255) PRIMARY KEY);

INSERT INTO Student (StudentNo, Email, PsNo, Faculty, Course)
VALUES
    ('MLGATH007', 'mlgath002@myuct.ac.za', 'PS001', 'Science', 'Computer Science'),
    ('NFMZAN005', 'nfmzan005@myct.ac.za', 'PS002', 'Engineering', 'Electrical Engineering'),
    ('MLRSON003', 'mlrson@myuct.ac.za', 'PS003', 'Arts', 'English Literature');
INSERT INTO Personal (Name, DOB, CellNum, Age, Address, FirstName, LastName)
VALUES
    ('Athule Malgas', '1998-05-15', '1234567890', 23, '123 Main St, City', 'Athule', 'Malgas'),
    ('Zandile Nofemela', '1997-10-20', '0987654321', 24, '456 Elm St, Town', 'Zandile' ,'Nofemela'),
    ('Mulara Sone', '1999-03-10', '9876543210', 22, '789 Oak St, Village', 'Sone', 'Mulara')

INSERT INTO AcademicRecord (CourseName, CourseCode, Results, GPA, YearOfStudy)
VALUES
    ('Computer Science', 'CSC2001F', 'Pass', 3.5, 2),
    ('Electrical Engineering', 'EEE2041F', 'Pass', 3.2, 3),
    ('English Literature', 'LLS1010F', 'Pass', 3.8, 1);

INSERT INTO BscMajor (MajorCode, Name, Email, Office)
VALUES
    ('MSC001', 'Computer Science', 'csadvisor@cs.uct.ac.za', 'Science Building, Room 101'),
    ('MEE002', 'Electrical Engineering', 'eeadvisor@eee.uct.ac,za', 'Engineering Building, Room 201'),
    ('MEL003', 'English Literature', 'eladvisor@art.uct.ac.za', 'Arts Building, Room 301');

INSERT INTO Courses (CourseCode, Name, Convener, Optional, YearOfStudy, NQFCredit, NQFLevel, Prereq)
VALUES
    ('CSC2001F', 'Computer Science Databases and Data Structures', 'Dr. Smith', 0, 1, 12, 5, CSC1016F),
    ('EEE2041F', 'Introduction to electrical circuits', 'Prof. Johnson', 0, 2, 15, 6, 'MAM1000W'),
    ('LL1010F', 'Introduction to English Literature', 'Dr. Adams', 0, 1, 10, 4, NULL);

INSERT INTO LecturePeriod (Venue, Day, StartTime, EndTime)
VALUES
    ('Science Building, Room 101', 'Monday', '09:00:00', '11:00:00'),
    ('Engineering Building, Room 201', 'Wednesday', '13:00:00', '15:00:00'),
    ('Arts Building, Room 301', 'Friday', '10:00:00', '12:00:00');