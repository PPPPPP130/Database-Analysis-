CREATE DATABASE school;

USE school;

CREATE TABLE student(
student_id BIGINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100),
date_of_birth DATE,
address VARCHAR(100) NOT NULL,
class_id VARCHAR (10));

ALTER TABLE student
MODIFY COLUMN class_id INT UNSIGNED NOT NULL;

ALTER TABLE student 
ADD CONSTRAINT fk_class  
FOREIGN KEY (class_id)
REFERENCES classes (class_id);

ALTER TABLE student
AUTO_INCREMENT = 5003231001;

CREATE TABLE teachers(
teacher_id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
name VARCHAR (100),
subject_id VARCHAR (10),
contact INT UNSIGNED NOT NULL);

ALTER TABLE teachers 
MODIFY COLUMN subject_id INT UNSIGNED NOT NULL;

ALTER TABLE teachers 
MODIFY COLUMN contact BIGINT UNSIGNED NOT NULL;

ALTER TABLE teachers 
ADD CONSTRAINT fk_subject 
FOREIGN KEY (subject_id)
REFERENCES subjects (subject_id);

ALTER TABLE teachers 
AUTO_INCREMENT = 1920012001;

CREATE TABLE subjects (
subject_id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
subject_name VARCHAR (100),
subject_code VARCHAR (10));

ALTER TABLE subjects 
AUTO_INCREMENT = 001905230001; 

CREATE TABLE classes(
class_id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
class_name VARCHAR (100),
teacher_id INT UNSIGNED NOT NULL,
FOREIGN KEY (teacher_id) REFERENCES teachers (teacher_id));  

ALTER TABLE classes
AUTO_INCREMENT = 52042001;

 CREATE TABLE grades (
 grade_id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
 student_id BIGINT UNSIGNED NOT NULL,
 subject_id INT UNSIGNED NOT NULL,
 grade CHAR (2),
 semester INT UNSIGNED NOT NULL,
 FOREIGN KEY (student_id) REFERENCES student (student_id),
 FOREIGN KEY (subject_id) REFERENCES subjects (subject_id));
 
 CREATE TABLE schedules (
 schedule_id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
 class_id INT UNSIGNED NOT NULL,
 subject_id INT UNSIGNED NOT NULL,
 teacher_id INT UNSIGNED NOT NULL,
 day_of_week INT,
 start_time TIME,
 end_time TIME,
 FOREIGN KEY (class_id) REFERENCES classes (class_id),
 FOREIGN KEY (subject_id) REFERENCES subjects (subject_id),
 FOREIGN KEY (teacher_id) REFERENCES teachers (teacher_id));
 
 -- Insert into 
 
 INSERT INTO subjects (subject_name, subject_code) 
VALUES 
('Mathematics', 'MATH101'),
('Science', 'SCI101'),
('English', 'ENG101'),
('History', 'HIS101'),
('Geography', 'GEO101'),
('Physics', 'PHY101'),
('Chemistry', 'CHE101'),
('Biology', 'BIO101'),
('Art', 'ART101'),
('Music', 'MUS101'),
('Physical Education', 'PE101'),
('Computer Science', 'CS101'),
('Economics', 'ECO101'),
('Literature', 'LIT101'),
('Sociology', 'SOC101'),
('Psychology', 'PSY101'),
('Philosophy', 'PHI101'),
('Business Studies', 'BUS101'),
('Foreign Language', 'FL101'),
('Religious Studies', 'REL101');

SELECT * FROM subjects;

INSERT INTO teachers (name, subject_id, contact) 
VALUES 
('Mr. Anderson', 1905230001, 1234567890),
('Ms. Baker', 1905230002, 2345678901),
('Mr. Carter', 1905230003, 3456789012),
('Ms. Davis', 1905230004, 456789012),
('Mr. Evans', 1905230005, 5678901234),
('Ms. Foster', 1905230006, 6789012345),
('Mr. Green', 1905230007, 7890123456),
('Ms. Harris', 1905230008, 890123456),
('Mr. Jackson', 1905230009, 9012345678),
('Ms. King', 1905230010, 1234509876),
('Mr. Lee', 1905230011, 2345610987),
('Ms. Martinez', 1905230012, 345672109),
('Mr. Nelson', 1905230013, 456783210),
('Ms. Owens', 1905230014, 5678943210),
('Mr. Perez', 1905230015, 6789054321),
('Ms. Quinn', 1905230016, 789016543),
('Mr. Rivera', 1905230017, 890127654),
('Ms. Scott', 1905230018, 901238765),
('Mr. Taylor', 1905230019, 1234598765),
('Ms. Underwood', 1905230020, 234560987);

SELECT * FROM teachers;

INSERT INTO classes (class_name, teacher_id) 
VALUES 
('Class 10A', 1920012001),  
('Class 10B', 1920012002),  
('Class 10C', 1920012003),  
('Class 10D', 1920012004),  
('Class 10E', 1920012005),  
('Class 11A', 1920012006),     
('Class 11B', 1920012007),      
('Class 11C', 1920012008),     
('Class 11D', 1920012009),           
('Class 11E', 1920012010),   
('Class 12A', 1920012011),        
('Class 12B', 1920012012),
('Class 12C', 1920012013),
('Class 12D', 1920012014),
('Class 12E', 1920012015),
('Class 10F', 1920012016),
('Class 11F', 1920012017),
('Class 12F', 1920012018),
('Class 12G', 1920012019),
('Class 11F', 1920012020);   

SELECT * FROM classes;

UPDATE classes 
SET class_name = 'Class 11G'
WHERE class_id = 5242020;

INSERT INTO student (name, date_of_birth, address, class_id) 
VALUES 
('John Doe', '2005-03-15', '123 Main St, Cityville', 52042001),  
('Jane Smith', '2006-07-22', '456 Elm St, Townsville', 52042001),  
('Alice Johnson', '2005-05-10', '789 Oak St, Villagetown', 52042001),  
('Bob Brown', '2006-02-14', '321 Pine St, Hamletville', 52042002),  
('Charlie Davis', '2005-11-30', '654 Maple St, Countryside', 52042002),  
('Diana Evans', '2006-09-05', '987 Birch St, Suburbia', 52042002),  
('Ethan Green', '2005-08-20', '135 Cedar St, Ruraltown', 52042003),  
('Fiona Harris', '2006-04-18', '246 Walnut St, Uptown', 52042003),  
('George Clark', '2005-12-25', '369 Spruce St, Downtown', 52042003),  
('Hannah Lewis', '2006-01-01', '482 Fir St, Midtown', 52042004),  
('Ian Walker', '2005-06-12', '591 Ash St, Eastside', 52042004),  
('Jessica Hall', '2006-03-07', '624 Poplar St, Westside', 52042004),  
('Kevin Young', '2005-10-11', '753 Willow St, Northside', 52042005),  
('Laura King', '2006-08-09', '867 Elm St, Southside', 52042005),  
('Michael Wright', '2005-07-04', '978 Oak St, Central', 52042005),  
('Nina Scott', '2006-05-19', '102 Pine St, Outskirts', 52042006),  
('Oscar Adams', '2005-09-23', '213 Maple St, Countryside', 52042006),  
('Paula Baker', '2006-12-31', '324 Birch St, Suburbia', 52042006),  
('Quincy Carter', '2005-02-28', '435 Cedar St, Ruraltown', 52042007),  
('Rachel Evans', '2006-06-15', '546 Walnut St, Uptown', 52042007),  
('Samuel Ford', '2005-04-12', '657 Oak St, Downtown', 52042007),  
('Tina Garcia', '2006-03-25', '768 Pine St, Suburbia', 52042008),  
('Umar Hussein', '2005-11-18', '879 Maple St, Countryside', 52042008),  
('Victoria Ingram', '2006-09-30', '980 Birch St, Ruraltown', 52042008),  
('Walter Johnson', '2005-01-05', '101 Elm St, Cityville', 52042009),  
('Xena King', '2006-07-14', '112 Fir St, Townsville', 52042009),  
('Yara Lopez', '2005-12-22', '123 Ash St, Villagetown', 52042009),  
('Zack Miller', '2006-05-10', '234 Cedar St, Hamletville', 52042010),  
('Amy Nelson', '2005-08-19', '345 Walnut St, Uptown', 52042010),  
('Brian Owens', '2006-02-28', '456 Spruce St, Downtown', 52042010),  
('Cathy Perez', '2005-06-15', '567 Oak St, Central', 52042011),  
('David Quinn', '2006-04-20', '678 Pine St, Outskirts', 52042011),  
('Eva Rivera', '2005-10-25', '789 Maple St, Countryside', 52042011),  
('Frank Scott', '2006-01-30', '890 Birch St, Suburbia', 52042012),  
('Grace Taylor', '2005-09-05', '901 Cedar St, Ruraltown', 52042012),  
('Henry Underwood', '2006-07-10', '102 Elm St, Cityville', 52042012),  
('Ivy Vance', '2005-03-15', '113 Fir St, Townsville', 52042013),  
('Jack White', '2006-11-20', '124 Ash St, Villagetown', 52042013),  
('Karen Young', '2005-05-25', '135 Walnut St, Uptown', 52042013),  
('Liam Adams', '2006-08-30', '246 Spruce St, Downtown', 52042014),  
('Mia Brown', '2005-12-05', '357 Oak St, Central', 52042014),  
('Noah Clark', '2006-02-10', '468 Pine St, Outskirts', 52042014),  
('Olivia Davis', '2005-04-15', '579 Maple St, Countryside', 52042015),  
('Peter Evans', '2006-10-20', '680 Birch St, Suburbia', 52042015),  
('Quinn Foster', '2005-06-25', '791 Cedar St, Ruraltown', 52042015),  
('Rachel Green', '2006-03-30', '802 Elm St, Cityville', 52042016),  
('Samuel Harris', '2005-09-05', '913 Fir St, Townsville', 52042016),  
('Taylor Ingram', '2006-07-10', '1024 Ash St, Villagetown', 52042016),  
('Uma Johnson', '2005-01-15', '1135 Walnut St, Uptown', 52042017),  
('Victor King', '2006-05-20', '1246 Spruce St, Downtown', 52042017),  
('Wendy Lopez', '2005-11-25', '1357 Oak St, Central', 52042017),  
('Xander Miller', '2006-08-30', '1468 Pine St, Outskirts', 52042018),  
('Yara Nelson', '2005-02-05', '1579 Maple St, Countryside', 52042018),  
('Zane Owens', '2006-04-10', '1690 Birch St, Suburbia', 52042018),  
('Ava Perez', '2005-10-15', '1801 Cedar St, Ruraltown', 52042019),  
('Benjamin Quinn', '2006-06-20', '1912 Elm St, Cityville', 52042019),  
('Chloe Rivera', '2005-12-25', '2023 Fir St, Townsville', 52042019),  
('Daniel Scott', '2006-03-30', '2134 Ash St, Villagetown', 52042020),  
('Emily Taylor', '2005-07-05', '2245 Walnut St, Uptown', 52042020),  
('Finn Underwood', '2006-09-10', '2356 Spruce St, Downtown', 52042020);

SELECT*FROM student;

INSERT INTO grades (student_id, subject_id, grade, semester)
VALUES 
(5003231001, 1905230001, 'AB', 3),
(5003231001, 1905230012, 'B', 3),
(5003231001, 1905230006, 'A', 3),
(5003231002, 1905230008, 'AB', 3),
(5003231002, 1905230012, 'A', 3),
(5003231002, 1905230007, 'AB', 3),
(5003231003, 1905230002, 'B', 3),
(5003231003, 1905230006, 'AB', 3),
(5003231003, 1905230012, 'AB', 3),
(5003231004, 1905230012, 'A', 3),
(5003231004, 1905230006, 'AB', 3),
(5003231004, 1905230004, 'AB', 3);

SELECT * FROM grades;

INSERT INTO schedules (class_id, subject_id, teacher_id, day_of_week, start_time, end_time) 
VALUES 
(52042001, 1905230001, 1920012001, 1, '08:00:00', '11:00:00'),
(52042001, 1905230002, 1920012002, 1, '13:00:00', '15:00:00'),
(52042001, 1905230003, 1920012003, 1, '16:00:00', '17:30:00'),
(52042002, 1905230005, 1920012005, 2, '08:00:00', '09:00:00'),
(52042002, 1905230004, 1920012004, 2, '09:00:00', '10:00:00'),
(52042002, 1905230007, 1920012007, 2, '13:00:00', '15:00:00'),
(52042003, 1905230006, 1920012006, 3, '07:30:00', '10:00:00'),
(52042003, 1905230008, 1920012008, 3, '10:30:00', '13:00:00');

SELECT * FROM schedules;