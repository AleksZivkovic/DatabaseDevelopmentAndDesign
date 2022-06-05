CREATE DATABASE SEDCACADEMYDB;

CREATE TABLE Students (
Id int NOT NULL,
FirstName nvarchar (100) NOT NULL,
LastName nvarchar (100) NOT NULL,
DateOfBirth date NULL,
EnroledDate date NULL,
Gender char (1) NOT NULL,
NationalIdNumber nvarchar (20) NOT NULL,
StudentCardNumber nvarchar (10) NOT NULL,
);


--INSERT INTO Students (Id, FirstName, LastName, DateOfBirth, EnroledDate, Gender, NationalIdNumber, StudentCardNumber)
--VALUES (1, 'Jovana', 'Trajanovska', '1993.01.13', '2022.05.25', 'F', '1301993455888', '1111')

--SELECT * FROM Students

--DROP TABLE Students

CREATE TABLE Teachers (
Id int NOT NULL,
FirstName nvarchar (100) NOT NULL,
LastName nvarchar (100) NOT NULL,
DateOfBirth date NULL,
AcademicRank nvarchar (20) NOT NULL,
HireDate date NOT NULL,
);

CREATE TABLE Grades (
Id int NOT NULL,
StudentId int NOT NULL,
CourseId int NOT NULL,
Teacher int NOT NULL,
Grade nvarchar (5) NULL,
Comment nvarchar (100) NULL,
CreateDate date NOT NULL,
);

CREATE TABLE Courses (
Id int NOT NULL,
[Name] nvarchar (50) NOT NULL,
Credit int NOT NULL,
AcademicYear nvarchar (50) NOT NULL,
Semester int NOT NULL,
);

CREATE TABLE AchievmentTypes (
Id int NOT NULL,
[Name] nvarchar (50) NOT NULL,
[Description] nvarchar (50) NOT NULL,
ParticipationRate nvarchar (50) NOT NULL,
);

CREATE TABLE GradeDetails(
Id int NOT NULL,
GradeId int NOT NULL,
AchievmentTypeId int NOT NULL,
AchievmentPoints decimal (18, 2) NOT NULL,
AchievmentMaxPoint decimal (18, 2) NOT NULL,
AchievmentDate date NOT NULL,
);