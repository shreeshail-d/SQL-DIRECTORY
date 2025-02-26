USE	 test_sys;

DELETE FROM student WHERE id IN (1, 2);
DELETE FROM course WHERE id IN (1, 2);

DELETE FROM subjects WHERE id IN (1, 2);

INSERT INTO student (name, age, email) VALUES
('Lee', 10, 'g@example.com'),
('Adams', 28, 'hen@example.com');
INSERT INTO course (course_name, duration) VALUES
('Ell Engineering', 48),
('Cingineering', 48);

INSERT INTO subjects (subject_name, course_id) VALUES
('Algorms', 1),
('Fluid', 2);

INSERT INTO teachers (faculty_name,experience) VALUES
('miss neha', 1000),
('amish sir', 2000);
