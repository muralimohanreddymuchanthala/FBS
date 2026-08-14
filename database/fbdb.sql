-- ==========================================
-- Student Feedback System Database Script
-- ==========================================

DROP DATABASE IF EXISTS fbdb;

CREATE DATABASE fbdb;

USE fbdb;

-- ==========================================
-- Create Feedback Table
-- ==========================================

CREATE TABLE fb (

    htno VARCHAR(20) PRIMARY KEY,

    name VARCHAR(100) NOT NULL,

    year VARCHAR(20) NOT NULL,

    branch VARCHAR(50) NOT NULL,

    semester VARCHAR(30) NOT NULL,

    comment TEXT NOT NULL,

    submitted_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

-- ==========================================
-- Sample Records
-- ==========================================

INSERT INTO fb
(htno,name,year,branch,semester,comment)
VALUES
('24N01A0501',
'Rahul',
'III Year',
'CSE',
'II Semester',
'Excellent Faculty');

INSERT INTO fb
(htno,name,year,branch,semester,comment)
VALUES
('24N01A0502',
'Priya',
'II Year',
'CSE-AIML',
'I Semester',
'Very Good Infrastructure');

INSERT INTO fb
(htno,name,year,branch,semester,comment)
VALUES
('24N01A0503',
'Kiran',
'IV Year',
'ECE',
'II Semester',
'Need More Lab Sessions');

INSERT INTO fb
(htno,name,year,branch,semester,comment)
VALUES
('24N01A0504',
'Sneha',
'I Year',
'EEE',
'I Semester',
'Library is Excellent');

INSERT INTO fb
(htno,name,year,branch,semester,comment)
VALUES
('24N01A0505',
'Mahesh',
'III Year',
'MECH',
'II Semester',
'Good Teaching Methods');

-- ==========================================
-- Verify Data
-- ==========================================

SELECT * FROM fb;
