CREATE TABLE TEST (
TESTID NUMBER,
TESTNAME VARCHAR(50),
MARKS NUMBER(4,2)
);
DROP TABLE TEST;

CREATE TABLE BOOK (
BOOKID NUMBER,
BOOKNAME VARCHAR(50),
AUTHOR VARCHAR(50)
);
DROP TABLE BOOK;

CREATE TABLE COURSE (
COURSEID VARCHAR(10),
COURSENAME VARCHAR(50),
YR NUMBER,
SEM NUMBER
);

CREATE TABLE COURSEBOOKS (
COURSEID VARCHAR(10),
BOOKID NUMBER
);
DROP TABLE COURSEBOOKS;

CREATE TABLE COURSETESTS (
COURSEID VARCHAR(10),
TESTID NUMBER
);
DROP TABLE COURSETESTS;

CREATE TABLE COURSEMATERIALS (
COURSEID VARCHAR(10),
FILE_TITLE VARCHAR(75),
CONTENTFILE BLOB
);

CREATE TABLE COURSEASSIGNMENTS (
COURSEID VARCHAR(10),
ASSIGN_TITLE VARCHAR(75),
ASSIGN_FILE BLOB
);

CREATE TABLE COURSETESTS (
COURSEID VARCHAR(10),
TEST_TITLE VARCHAR(75),
TEST_FILE BLOB
);

CREATE TABLE STUDENT (
REGID NUMBER,
FULLNAME VARCHAR(75),
PHONE VARCHAR(10),
EMAIL VARCHAR(50),
PASSWORD VARCHAR(50)
);

CREATE TABLE STUDENTCOURSES (
REGID NUMBER,
COURSEID VARCHAR(10)
);

CREATE TABLE FACULTY (
FACULTYID NUMBER,
FULLNAME VARCHAR(75),
PHONE VARCHAR(10),
EMAIL VARCHAR(50),
PASSWORD VARCHAR(50)
);

CREATE TABLE FACULTYCOURSES (
FACULTYID NUMBER,
COURSEID VARCHAR(10)
);

CREATE TABLE STULOGINDATA (
STUEMAIL VARCHAR(50),
STULOGINTIME TIMESTAMP
);

CREATE TABLE STULOGOUTDATA (
STUEMAIL VARCHAR(50),
STULOGOUTTIME TIMESTAMP
);

CREATE TABLE FACLOGINDATA (
FACEMAIL VARCHAR(50),
FACLOGINTIME TIMESTAMP
);

CREATE TABLE FACLOGOUTDATA (
FACEMAIL VARCHAR(50),
FACLOGOUTTIME TIMESTAMP
);

CREATE TABLE ADMINCRED (
ADMINUSERNAME varchar(50),
ADMINPASSWORD varchar(50)
);

INSERT INTO ADMINCRED VALUES ('admin','admin@1234');
