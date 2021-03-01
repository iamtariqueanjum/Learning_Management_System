CREATE TABLE signup (
FIRSTNAME  VARCHAR(30),
LASTNAME VARCHAR(30),
PHONE VARCHAR(10),
EMAIL VARCHAR(50),
PASSWORD VARCHAR(30)
);

CREATE TABLE course (
COURSEID VARCHAR(10),
COURSENAME VARCHAR(50),
YR NUMBER,
SEM NUMBER
);

CREATE TABLE test (
TESTID NUMBER,
COURSEID VARCHAR(10),
MARKS NUMBER(4,2),
WEIGHTAGE NUMBER(3,2)
);


CREATE TABLE faculty (
FACID NUMBER,
FACNAME VARCHAR(75),
FACPHONE VARCHAR(10),
FACEMAIL VARCHAR(50),
FACPASSWORD VARCHAR(30)
);

CREATE TABLE book (
BOOKID NUMBER,
BOOKNAME VARCHAR(75),
AUTHOR VARCHAR(50),
COURSE VARCHAR(50)
);

CREATE TABLE StuloginData (
email varchar(30),
LoginTime TimeStamp,
);

CREATE TABLE StulogoutData (
email varchar(30),
LogoutTime TimeStamp
);

CREATE TABLE FacloginData (
facemail varchar(30),
LoginTime TimeStamp,
);

CREATE TABLE FaclogoutData (
facemail varchar(30),
LogoutTime TimeStamp
);

CREATE TABLE ADMINCRED(
adminusr varchar(30),
adminpass varchar(30)
);

INSERT INTO ADMINCRED values ('admin','admin@1234');
