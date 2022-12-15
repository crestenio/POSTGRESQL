CREATE TABLE teachers(teacher_id SERIAL PRIMARY KEY, first_name VARCHAR(50) NOT NULL, last_name VARCHAR(50) NOT NULL, class_subject VARCHAR(50),phone TEXT NOT NULL, email VARCHAR(50) NOT NULL);

INSERT INTO teachers(first_name, last_name, class_subject, phone, email)
VALUES ('Pedro', 'Penduko','Web Development', 09011122233, 'penduko@gmail.com');
INSERT INTO teachers(first_name, last_name, class_subject, phone, email)
VALUES ('Juan', 'Luna','Web Development', 09011122234, 'juan@gmail.com');
INSERT INTO teachers(first_name, last_name, class_subject, phone, email)
VALUES ('John', 'Peno','Web Development', 09011122236, 'jn@gmail.com');

SELECT * FROM teachers;

CREATE TABLE students(student_id SERIAL PRIMARY KEY,first_name VARCHAR(50) NOT NULL,last_name VARCHAR(50) NOT NULL, subject TEXT NOT NULL, age INTEGER NOT NULL, phone TEXT NOT NULL, email VARCHAR(50) NOT NULL);

INSERT INTO students(first_name, last_name, subject, age, phone, email)
VALUES ('Maria', 'Ganda', 'Web Development', 16, 09204567890, 'mg@yahoo.com');

INSERT INTO students(first_name, last_name, subject, age, phone, email)
VALUES ('Peter', 'Gwapo', 'Web Development', 17, 09204567890, 'pt@yahoo.com');

SELECT * FROM students;

CREATE TABLE classroom(classroom_id SERIAL PRIMARY KEY, class_subject VARCHAR(50)NOT NULL, department VARCHAR(30) NOT NULL, teacher_id INT REFERENCES teachers(teacher_id));

INSERT INTO classroom(class_subject, department, teacher_id) VALUES ('Biology', 'Education Department', 1);
INSERT INTO classroom(class_subject, department, teacher_id) VALUES ('Biology', 'Education Department', 2);

SELECT * FROM classroom;

CREATE TABLE classSched(classroom_id int REFERENCES classroom(classroom_id),student_id int REFERENCES students(student_id));

INSERT INTO classSched(classroom_id, student_id) VALUES(1, 2);

SELECT * FROM classSched;