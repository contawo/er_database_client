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
    FirstName VARCHAR(255),
  	LastName VARCHAR(255)
);

CREATE TABLE BscMajor (
    MajorCode VARCHAR(255) PRIMARY KEY,
  	Name VARCHAR(255),
    Email VARCHAR(255),
    Office VARCHAR(255)
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