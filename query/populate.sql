INSERT INTO Student (StudentNo, PsNo, Faculty, Course)
VALUES
    ('MLGATH007', 1, 'Science', 'Computer Science'),
    ('NFMZAN005', 2, 'Engineering', 'Electrical Engineering'),
    ('MLRSON003', 3, 'Arts', 'English Literature');
INSERT INTO Personal (DOB, CellNo, Address, FirstName, LastName)
VALUES
    ('1998-05-15', '1234567890', '123 Main St, City', 'Athule', 'Malgas'),
    ('1997-10-20', '0987654321', '456 Elm St, Town', 'Zandile' ,'Nofemela'),
    ('1999-03-10', '9876543210', '789 Oak St, Village', 'Sone', 'Mulara');

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

INSERT INTO Courses (CourseCode, CourseName, Convener, Optional, YearOfStudy, NQFCredit, NQFLevel, Prereq)
VALUES
    ('CSC2001F', 'Computer Science Databases and Data Structures', 'Dr. Smith', 0, 1, 12, 5, CSC1016F),
    ('EEE2041F', 'Introduction to electrical circuits', 'Prof. Johnson', 0, 2, 15, 6, 'MAM1000W'),
    ('LL1010F', 'Introduction to English Literature', 'Dr. Adams', 0, 1, 10, 4, NULL);

INSERT INTO LecturePeriod (Venue, Day, StartTime, EndTime)
VALUES
    ('Science Building, Room 101', 'Monday', '09:00:00', '11:00:00'),
    ('Engineering Building, Room 201', 'Wednesday', '13:00:00', '15:00:00'),
    ('Arts Building, Room 301', 'Friday', '10:00:00', '12:00:00');