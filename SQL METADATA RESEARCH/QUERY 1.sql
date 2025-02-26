USE test_sys;

-- Create Student Table
CREATE TABLE student (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    email VARCHAR(100)
);

-- Insert Dummy Data into Student Table
INSERT INTO student (name, age, email) VALUES
('Alice Johnson', 20, 'alice@example.com'),
('Bob Smith', 22, 'bob@example.com'),
('Charlie Brown', 21, 'charlie@example.com'),
('David White', 23, 'david@example.com'),
('Emma Wilson', 19, 'emma@example.com');

-- Create Course Table
CREATE TABLE course (
    id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100),
    duration INT COMMENT 'Duration in months'
);

-- Insert Dummy Data into Course Table
INSERT INTO course (course_name, duration) VALUES
('Computer Science', 48),
('Mechanical Engineering', 48),
('Business Administration', 36),
('Psychology', 36),
('Data Science', 24);

-- Create Subject Table
CREATE TABLE subjects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    subject_name VARCHAR(100),
    course_id INT
);

-- Insert Dummy Data into Subject Table
INSERT INTO subjects (subject_name, course_id) VALUES
('Data Structures', 1),
('Thermodynamics', 2),
('Marketing Management', 3),
('Cognitive Psychology', 4),
('Machine Learning', 5);

CREATE TABLE teachers (
    university_id INT AUTO_INCREMENT PRIMARY KEY,
    faculty_name VARCHAR(100),
    experience INT COMMENT 'Duration in months'
);
