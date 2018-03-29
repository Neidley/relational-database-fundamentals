CREATE TABLE students (
  id integer,
  name text,
  subject_id integer
);

CREATE TABLE teachers (
  id integer,
  name text,
  subject_id integer
);

CREATE TABLE subjects (
  id integer,
  name text,
  teacher_id integer,
  student_id integer,
  grade varchar(1)
);

INSERT INTO students (id, name, subject_id)
VALUES
(001, 'Ferris Bueller', NULL),
(002, 'Cameron Frye', NULL),
(003, 'Sloane Peterson', NULL),
(004, 'Jeanie Bueller', NULL);

INSERT INTO teachers (id, name, subject_id)
VALUES
(1201, 'Grace', NULL),
(1202, 'Ed Rooney', NULL),
(1203, 'Ben Stein', NULL);

INSERT INTO subjects (id, name, teacher_id, student_id, grade)
VALUES
(101, 'Economics', 1203, 001, 'C'),
(101, 'Economics', 1203, 004, 'A'),
(101, 'Economics', 1203, 002, 'B'),
(102, 'Gym', 1202, 002, 'F'),
(103, 'Counseling', 1201, 002, 'D');
