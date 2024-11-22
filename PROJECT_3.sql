CREATE DATABASE SchoolDB;
USE SchoolDB;
SELECT DATABASE();

-- CREATE Students Table and insert random generated data - 20 records
CREATE TABLE Students(
student_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(100) NOT NULL,
last_name VARCHAR(100) NOT NULL,
date_of_birth DATE NOT NULL,
email VARCHAR(100) CHECK(email LIKE '%@%') NOT NULL UNIQUE 
);
DESC Students;
 
insert into Students (first_name, last_name, date_of_birth, email) values ('Susann', 'McRae', '2008-10-05', 'smcrae0@meetup.com');
insert into Students (first_name, last_name, date_of_birth, email) values ('Paola', 'Wainer', '2012-02-14', 'pwainer1@cbsnews.com');
insert into Students (first_name, last_name, date_of_birth, email) values ('Merill', 'Jory', '2011-01-11', 'mjory2@theguardian.com');
insert into Students (first_name, last_name, date_of_birth, email) values ('Irvine', 'Fosserd', '2010-01-23', 'ifosserd3@businessinsider.com');
insert into Students (first_name, last_name, date_of_birth, email) values ('Sabine', 'Codrington', '2014-11-01', 'scodrington4@phoca.cz');
insert into Students (first_name, last_name, date_of_birth, email) values ('Margaux', 'Giraudeau', '2013-07-14', 'mgiraudeau5@latimes.com');
insert into Students (first_name, last_name, date_of_birth, email) values ('Arvie', 'Ambresin', '2003-12-07', 'aambresin6@shutterfly.com');
insert into Students (first_name, last_name, date_of_birth, email) values ('Denis', 'Baxster', '2006-08-06', 'dbaxster7@lycos.com');
insert into Students (first_name, last_name, date_of_birth, email) values ('Hinze', 'Corgenvin', '2004-03-10', 'hcorgenvin8@csmonitor.com');
insert into Students (first_name, last_name, date_of_birth, email) values ('Ketty', 'Vickors', '2006-01-18', 'kvickors9@sciencedaily.com');
insert into Students (first_name, last_name, date_of_birth, email) values ('Durand', 'MacNeice', '2007-07-06', 'dmacneicea@gov.uk');
insert into Students (first_name, last_name, date_of_birth, email) values ('Lemuel', 'de Banke', '2003-01-02', 'ldebankeb@chron.com');
insert into Students (first_name, last_name, date_of_birth, email) values ('Phylis', 'Oganian', '2010-04-01', 'poganianc@gnu.org');
insert into Students (first_name, last_name, date_of_birth, email) values ('Gauthier', 'Flaunier', '2007-04-30', 'gflaunierd@yale.edu');
insert into Students (first_name, last_name, date_of_birth, email) values ('Egor', 'Richford', '2010-11-11', 'erichforde@diigo.com');
insert into Students (first_name, last_name, date_of_birth, email) values ('Clay', 'Cahey', '2010-10-25', 'ccaheyf@about.me');
insert into Students (first_name, last_name, date_of_birth, email) values ('Zelma', 'Gounard', '2009-10-26', 'zgounardg@mysql.com');
insert into Students (first_name, last_name, date_of_birth, email) values ('Prentice', 'Plues', '2000-07-17', 'ppluesh@addtoany.com');
insert into Students (first_name, last_name, date_of_birth, email) values ('Silva', 'Tallent', '2012-11-16', 'stallenti@columbia.edu');
insert into Students (first_name, last_name, date_of_birth, email) values ('Mahmoud', 'MacTavish', '2014-10-25', 'mmactavishj@newyorker.com');

SELECT * FROM Students;

-- CREATE Courses Table and insert random generated data - 8 records
CREATE TABLE Courses(
course_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
course_name VARCHAR(100) NOT NULL UNIQUE,
description VARCHAR(100) NOT NULL UNIQUE,
credits INT CHECK(credits BETWEEN 10 AND 60) NOT NULL
);
DESC Courses;
INSERT INTO Courses (course_name, description, credits) values ('TEST','TEST','100');

insert into Courses (course_name, description, credits) values ('Computer Programming 101', 'Photography Basics', 50);
insert into Courses (course_name, description, credits) values ('History of Art', 'Introduction to Data Science', 30);
insert into Courses (course_name, description, credits) values ('Music Theory', 'Digital Marketing Fundamentals', 50);
insert into Courses (course_name, description, credits) values ('Nutrition and Wellness', 'Nutrition Basics', 50);
insert into Courses (course_name, description, credits) values ('Introduction to Psychology', 'Art History Overview', 50);
insert into Courses (course_name, description, credits) values ('Physics 101', 'Creative Writing Workshop', 40);
insert into Courses (course_name, description, credits) values ('Advanced Calculus', 'Introduction to Psychology', 30);
insert into Courses (course_name, description, credits) values ('Geography 101', 'Fudementals of Photography', 30);

SELECT * FROM Courses;

-- -- CREATE Enrolments Table, using foriegn key constraints and insert random generated data - 40 records
CREATE TABLE Enrolments(
enrolment_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
student_id INT,
course_id INT,
enrolment_date DATE NOT NULL,
grade VARCHAR(1) CHECK(grade BETWEEN 'A' AND 'F') NOT NULL,

CONSTRAINT student_id
FOREIGN KEY (student_id)
REFERENCES Students(student_id)
ON DELETE CASCADE
ON UPDATE CASCADE,

CONSTRAINT course_id
FOREIGN KEY (course_id)
REFERENCES Courses(course_id)
ON DELETE CASCADE
ON UPDATE CASCADE
);
DESC Enrolments;

insert into Enrolments (student_id, course_id, enrolment_date, grade) values (4, 8, '2021-02-06', 'B');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (8, 2, '2023-12-30', 'F');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (11, 5, '2021-12-19', 'A');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (4, 2, '2020-10-27', 'B');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (7, 2, '2023-03-01', 'A');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (12, 4, '2022-09-17', 'B');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (12, 4, '2022-12-21', 'A');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (1, 3, '2021-02-15', 'D');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (12, 2, '2022-06-03', 'B');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (13, 6, '2023-04-08', 'B');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (10, 4, '2024-08-06', 'E');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (13, 1, '2024-11-11', 'E');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (20, 8, '2021-08-23', 'F');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (7, 5, '2023-03-05', 'D');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (18, 2, '2023-11-14', 'F');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (4, 6, '2023-04-06', 'C');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (19, 7, '2022-10-17', 'D');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (2, 2, '2021-02-18', 'F');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (13, 1, '2021-02-21', 'C');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (20, 8, '2022-11-02', 'B');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (20, 3, '2020-12-31', 'D');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (4, 6, '2020-07-08', 'B');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (2, 6, '2021-01-15', 'D');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (3, 4, '2023-06-19', 'A');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (7, 4, '2022-04-30', 'C');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (11, 3, '2023-02-28', 'C');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (18, 6, '2021-05-01', 'B');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (11, 2, '2020-06-08', 'C');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (19, 2, '2023-02-07', 'F');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (18, 8, '2021-03-10', 'A');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (1, 6, '2022-02-28', 'B');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (12, 5, '2020-03-15', 'E');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (11, 3, '2023-12-10', 'C');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (4, 5, '2023-06-08', 'F');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (14, 8, '2023-05-14', 'F');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (16, 2, '2020-02-28', 'D');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (15, 5, '2024-06-17', 'E');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (18, 1, '2021-12-06', 'B');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (14, 7, '2020-04-28', 'D');
insert into Enrolments (student_id, course_id, enrolment_date, grade) values (18, 5, '2022-04-18', 'E');
SELECT * FROM Enrolments;

-- SHOW LIST OF ALL STUDENTS (enrolled)
SELECT Students.student_id, CONCAT(Students.first_name, ' ', Students.last_name)
AS 'student_name', COUNT(*) AS 'no_course_enrolments'
FROM Enrolments
INNER JOIN Students ON Enrolments.student_id = Students.student_id
GROUP BY Students.student_id;
-- SHOW ALL STUDENTS (including those yet to enroll)
SELECT student_id, 
CONCAT(first_name, ' ', last_name) AS 'student_name',
CONCAT(email, ', ', date_of_birth) AS 'additional_details'
FROM students; 

-- SHOW LIST OF ALL COURSES OFFERED, and amount of students enrolled on each
SELECT Courses.course_id, Courses.course_name, COUNT(*) AS 'no_enrolled'
FROM Enrolments
INNER JOIN Courses ON Courses.course_id = Enrolments.course_id
GROUP BY Enrolments.course_id
ORDER BY Courses.course_id ASC;

-- SHOW ALL ENROLLMENTS, with respective student and course
SELECT Enrolments.enrolment_id,
CONCAT(Students.first_name, ' ', Students.last_name) AS 'student_name',  
course_name
FROM Enrolments
INNER JOIN Students ON Enrolments.student_id = Students.student_id
INNER JOIN Courses ON Enrolments.course_id = Courses.course_id
ORDER BY enrolment_id ASC;

-- total enrolments, total students enrolled, total courses
SELECT COUNT(*) AS 'total_enrolments', COUNT(DISTINCT student_id) AS 'total_students_enrolled', COUNT(DISTINCT course_id) AS 'total_courses'
FROM Enrolments;

-- UPDATE A STUDENT GRADE FOR A COURSE
UPDATE Enrolments SET grade = 'D'
WHERE course_id = 8
AND student_id = 4; 

SELECT * FROM Enrolments
WHERE course_id = 8;

-- Another way to do update by creating procedure and using  grade, student_id and course_id as parameters
DELIMITER $$
CREATE PROCEDURE `update_grade for student_id, course_id`(IN p_grade VARCHAR(1), p_student_id INT, p_course_id INT)
BEGIN
UPDATE Enrolments SET grade = p_grade
WHERE student_id = p_student_id
AND course_id = p_course_id;
END$$
DELIMITER $$
CALL `update_grade for student_id, course_id`('A', 1, 6);
SELECT * FROM Enrolments;

-- CREATE VIEWS TO SHOW STUDENTS' COURSES AND THEIR GRADES
CREATE VIEW all_student_courses_grades AS
SELECT Enrolments.student_id, CONCAT(Students.first_name, ' ', Students.last_name) AS 'student_name', Courses.course_name, Enrolments.grade
FROM Enrolments
INNER JOIN Courses on Enrolments.course_id = Courses.course_id
INNER JOIN Students on Enrolments.student_id = Students.student_id
ORDER BY student_id ASC;
SELECT * FROM all_student_courses_grades;

-- USE STORED PROCEDURES TO ENROL A STUDENT IN A COURSE AND HANDLE ALL RELATED UPDATES
-- Pre-exsisting student waiting to be enrolled 
DELIMITER $$
CREATE PROCEDURE EnrolStudent(IN p_student_id INT, p_course_id INT, p_enrol_date DATE)
BEGIN
INSERT INTO Enrolments (student_id, course_id, enrolment_date, grade)
VALUES (p_student_id, p_course_id, p_enrol_date, '-');
END$$
DELIMITER $$
-- CALL PROCCEDURE with student_id, course_id, enrolment_date 
CALL EnrolStudent(6, 7, '2022-11-15');

-- CASE STATEMENT TO CATERGORISE STUDENTS BY GRADES
ALTER TABLE Enrolments
ADD COLUMN pass_fail VARCHAR(100);
SELECT * FROM Enrolments;

UPDATE Enrolments SET pass_fail =
(CASE
WHEN grade BETWEEN 'A' AND 'D' THEN 'Pass'
WHEN grade BETWEEN 'E' AND 'F' THEN 'Fail'
ELSE 'N/A'
END)
WHERE enrolment_id >= 1;

SELECT * FROM Enrolments;

--  SHOW PASS/FAIL RATE Amoungst students
SELECT COUNT( DISTINCT student_id) AS 'pass_fail_rate', pass_fail
FROM Enrolments
GROUP BY pass_fail;

-- ! PROBLEMS !

-- ! Constriant Enrolment table doesn't allow for '-' charcter, which was needed after entering a new field !
-- Displaying checks
SELECT * 
FROM information_schema.table_constraints 
WHERE table_schema = schema() 
AND table_name = 'Enrolments';

-- drop check
alter table Enrolments drop check enrolments_chk_1;

-- -- Adding new check on my grade so it can be between a - f or '-'
alter table Enrolments
ADD CONSTRAINT CHK_Grade CHECK (grade BETWEEN 'A' AND  'F'
OR grade = '-');



-- ! Duplicate students for a given course !
-- Input course_id into procedure to find any repeated students for specified course
DELIMITER $$
CREATE PROCEDURE find_repeated_students(p_course_id INT)
BEGIN
SELECT Enrolments.student_id, COUNT(*) AS 'no. of enrolments per student'
FROM Enrolments
INNER JOIN Courses ON Courses.course_id = Enrolments.course_id
WHERE Enrolments.course_id = p_course_id
GROUP BY Enrolments.student_id;
END$$
DELIMITER $$
CALL find_repeated_students(1);

-- Updating course_id's for duplicate students, setting based on unique enrolment_id 
UPDATE Enrolments SET course_id =
(CASE enrolment_id
WHEN 8 THEN '3'
WHEN 1 THEN '3'
WHEN 5 THEN '2'
WHEN 2 THEN '8'
END)
WHERE enrolment_id IN(8,1,5,2);

-- SYNTAX
-- CONCAT(field_name1, ' ', field_name2) AS 'new_field_name
-- INNER JOIN primary_table ON secondary_table.foreign_key = primary_table.primary_key
-- ORDER BY field_name ASC/DESC
-- INSERT INTO table_name (field_name1, field_name2..)
-- VALUES (value_corresponding_to_field_name1, value_corresponding_to_field_name1..);
-- CREATE PROCEDURE procedure_name(parameter_1 parameter_1_datatype, parameter_2 parameter_2_datatye....)
-- BEGIN
-- / Code to be execued, using parameters as substitue for value to be entered when the stored procedure is called /
-- END
-- CALL procedure_name