CREATE TABLE students (
  std_id int AUTO_INCREMENT PRIMARY KEY,
  name varchar(255),
  tell int,
  address text,
  dob date
);
CREATE TABLE student_info (
    id int AUTO_INCREMENT PRIMARY KEY,
    std_id int,
    class_name varchar(22),
    class_fee decimal(10,2),
    shift varchar(222),
    sem varchar(22) DEFAULT 'sem 7'
);
 #Queried time : 9:25:8
INSERT INTO `students` (`std_id`, `name`, `tell`, `address`, `dob`) VALUES ('1001', 'Jaamac Kadiye', '125678', 'Hodan', '1994-12-14'), ('1002', 'Ali Kadiye', '25678', 'Waberi', '1996-12-14'), 
('1003', 'Amina Osman', '456789', 'Hodan', '2000-12-14'), ('1004', 'Asma Hassan', '234', 'Howlwadaag', '2002-12-14');
 #Queried time : 9:26:33
INSERT INTO `students` (`name`, `tell`, `address`, `dob`) VALUES ( 'Aisha', '123456', 'Karan', '1998-12-14');
 #Queried time : 9:28:42
INSERT INTO `student_info` (`id`, `std_id`, `class_name`, `class_fee`, `shift`, `sem`) VALUES (NULL, '1003', 'CS17A', '40', 'FullTime', 'sem 7'), (NULL, '1004', 'CS18F', '35', 'PartTime', 'sem 5'), (NULL, '1005', 'CS18F', '35', 'PartTime', 'sem 5');

SELECT * FROM students INNER JOIN student_info ON students.std_id = student_info.std_id;

SELECT students.std_id, students.name, student_info.class_name, student_info.sem, student_info.shift, student_info.class_fee
FROM students INNER JOIN student_info ON students.std_id = student_info.std_id;

SELECT students.std_id, students.name, student_info.class_name, student_info.sem, student_info.shift, student_info.class_fee
FROM students INNER JOIN student_info ON students.std_id = student_info.std_id 
WHERE student_info.sem = 'sem 7';

SELECT students.std_id, students.name, student_info.class_name, student_info.sem, student_info.shift, student_info.class_fee
FROM students INNER JOIN student_info ON students.std_id = student_info.std_id 
WHERE student_info.sem = 'sem 5';
 #Queried time : 9:40:21
SELECT students.std_id, students.name, student_info.class_name, student_info.sem, student_info.shift, student_info.class_fee
FROM students INNER JOIN student_info ON students.std_id = student_info.std_id 
# WHERE student_info.sem = 'sem 5';
 #Queried time : 9:44:16
#SELECT students.std_id, students.name, student_info.class_name, student_info.sem, student_info.shift, student_info.class_fee FROM students INNER JOIN student_info ON students.std_id = student_info.std_id 
# WHERE student_info.sem = 'sem 5'

SELECT s.std_id, s.name, i.class_name, i.sem, i.shift, i.class_fee FROM students s INNER JOIN student_info i ON s.std_id = i.std_id;
 #Queried time : 9:45:59
#SELECT students.std_id, students.name, student_info.class_name, student_info.sem, student_info.shift, student_info.class_fee FROM students INNER JOIN student_info ON students.std_id = student_info.std_id 
# WHERE student_info.sem = 'sem 5'

#SELECT s.std_id, s.name, i.class_name, i.sem, i.shift, i.class_fee FROM students s INNER JOIN student_info i ON s.std_id = i.std_id 

SELECT s.std_id, s.name, i.class_name, i.sem, i.shift, i.class_fee FROM students s LEFT JOIN student_info i ON s.std_id = i.std_id;
SELECT s.std_id, s.name, i.class_name, i.sem, i.shift, i.class_fee FROM students s RIGHT JOIN student_info i ON s.std_id = i.std_id;
 #Queried time : 9:52:57
#SELECT students.std_id, students.name, student_info.class_name, student_info.sem, student_info.shift, student_info.class_fee FROM students INNER JOIN student_info ON students.std_id = student_info.std_id 
# WHERE student_info.sem = 'sem 5'

#SELECT s.std_id, s.name, i.class_name, i.sem, i.shift, i.class_fee FROM students s INNER JOIN student_info i ON s.std_id = i.std_id 

SELECT s.std_id, s.name, i.class_name, i.sem, i.shift, i.class_fee FROM students s LEFT JOIN student_info i ON s.std_id = i.std_id WHERE i.sem = 'sem 5' ORDER BY i.class_fee;
 #Queried time : 9:53:25
#SELECT students.std_id, students.name, student_info.class_name, student_info.sem, student_info.shift, student_info.class_fee FROM students INNER JOIN student_info ON students.std_id = student_info.std_id 
# WHERE student_info.sem = 'sem 5'

#SELECT s.std_id, s.name, i.class_name, i.sem, i.shift, i.class_fee FROM students s INNER JOIN student_info i ON s.std_id = i.std_id 

SELECT s.std_id, s.name, i.class_name, i.sem, i.shift, i.class_fee FROM students s LEFT JOIN student_info i ON s.std_id = i.std_id WHERE i.sem = 'sem 5' ORDER BY i.class_fee;
 #Queried time : 9:53:48
#SELECT students.std_id, students.name, student_info.class_name, student_info.sem, student_info.shift, student_info.class_fee FROM students INNER JOIN student_info ON students.std_id = student_info.std_id 
# WHERE student_info.sem = 'sem 5'

#SELECT s.std_id, s.name, i.class_name, i.sem, i.shift, i.class_fee FROM students s INNER JOIN student_info i ON s.std_id = i.std_id 

SELECT s.std_id, s.name, i.class_name, i.sem, i.shift, i.class_fee FROM students s LEFT JOIN student_info i ON s.std_id = i.std_id WHERE i.sem = 'sem 5' ORDER BY i.class_fee DESC;
 #Queried time : 9:59:32
#SELECT students.std_id, students.name, student_info.class_name, student_info.sem, student_info.shift, student_info.class_fee FROM students INNER JOIN student_info ON students.std_id = student_info.std_id 
# WHERE student_info.sem = 'sem 5'

#SELECT s.std_id, s.name, i.class_name, i.sem, i.shift, i.class_fee FROM students s INNER JOIN student_info i ON s.std_id = i.std_id 

SELECT s.std_id, s.name, i.class_name, i.sem, i.shift, i.class_fee FROM students s LEFT JOIN student_info i ON s.std_id = i.std_id WHERE i.sem = 'sem 5' ORDER BY i.class_fee DESC LIMIT 1;
 #Queried time : 9:59:48
#SELECT students.std_id, students.name, student_info.class_name, student_info.sem, student_info.shift, student_info.class_fee FROM students INNER JOIN student_info ON students.std_id = student_info.std_id 
# WHERE student_info.sem = 'sem 5'

#SELECT s.std_id, s.name, i.class_name, i.sem, i.shift, i.class_fee FROM students s INNER JOIN student_info i ON s.std_id = i.std_id 

SELECT s.std_id, s.name, i.class_name, i.sem, i.shift, i.class_fee FROM students s LEFT JOIN student_info i ON s.std_id = i.std_id WHERE i.sem = 'sem 7' ORDER BY i.class_fee DESC LIMIT 1;
 #Queried time : 10:0:50
#SELECT students.std_id, students.name, student_info.class_name, student_info.sem, student_info.shift, student_info.class_fee FROM students INNER JOIN student_info ON students.std_id = student_info.std_id 
# WHERE student_info.sem = 'sem 5'

#SELECT s.std_id, s.name, i.class_name, i.sem, i.shift, i.class_fee FROM students s INNER JOIN student_info i ON s.std_id = i.std_id 

SELECT s.std_id, s.name, i.class_name, i.sem, i.shift, i.class_fee FROM students s LEFT JOIN student_info i ON s.std_id = i.std_id WHERE i.sem = 'sem 5' ORDER BY i.class_fee DESC;
 #Queried time : 10:2:31
#SELECT students.std_id, students.name, student_info.class_name, student_info.sem, student_info.shift, student_info.class_fee FROM students INNER JOIN student_info ON students.std_id = student_info.std_id 
# WHERE student_info.sem = 'sem 5'

#SELECT s.std_id, s.name, i.class_name, i.sem, i.shift, i.class_fee FROM students s INNER JOIN student_info i ON s.std_id = i.std_id 

SELECT s.std_id, s.name, i.class_name, i.sem, i.shift, i.class_fee FROM students s LEFT JOIN student_info i ON s.std_id = i.std_id WHERE i.sem = 'sem 5' ORDER BY i.class_fee ASC;
