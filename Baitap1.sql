CREATE DATABASE if not EXISTS  Testing_System_Assigment;
USE Testing_System_Assigment; 


CREATE TABLE `Department`(
DepartmentID	 int PRIMARY KEY AUTO_INCREMENT,
Department_Name	 VARCHAR(50) Not Null
);

CREATE TABLE `Position`(
     PositionID		 int PRIMARY KEY AUTO_INCREMENT,
     Position_Name	 VARCHAR(50) Not Null
     );

CREATE TABLE `Account`(
     AccountID 			int PRIMARY Key AUTO_INCREMENT,
     Email 				VARCHAR(50) Not Null,
     UseName 			VARCHAR(50) Not Null,
     FullName 			VARCHAR(50) Not Null,
     DepartmentID	 	int ,
     PositionID 		int,
     CreateDate			DATE
);

CREATE TABLE `Group`(
     GroupID 	int PRIMARY KEY AUTO_INCREMENT,
     GroupName 	VARCHAR(50) NOT NULL,
     CreatorID 	int ,
     CreateDate DATE
);

CREATE TABLE `GroupAccount`(
     GroupID 	int,
     AccountID 	int,
     JoinDate 	Date
     );

CREATE TABLE `Type Question`(
	TypeID		int PRIMARY Key AUTO_INCREMENT,
    TypeName	varchar(50) NOT NULL 
);

CREATE TABLE `CategoryQuestion`(
	CategoryID		int PRIMARY KEY AUTO_INCREMENT,
    CategoryName	varchar(50) NOT NULL
);

CREATE TABLE `Question`(
	QuestionID	int PRIMARY KEY AUTO_INCREMENT,
    Content		VARCHAR(50) NOT NULL,
    CategoryID	VARCHAR(50) NOT NULL,
    TypeID 		VARCHAR(50) NOT NULL,
    CreatorID	Int,
    CreateDate	Int
);

CREATE TABLE `Answer`(
	AnswerID	int PRIMARY KEY AUTO_INCREMENT,
    Content		VARCHAR(50) NOT NULL,
    QuestionID	VARCHAR(50) NOT NULL,
    isCorrect	BOOLEAN
);

CREATE TABLE `Exam`(
	ExamID		int PRIMARY KEY AUTO_INCREMENT,
    `Code`  	VARCHAR(50) NOT NULL,
    Title		VARCHAR(50) NOT NULL,
    CategoryID	int ,
    Duration	int,
    CreatorID	int,
    CreateDate 	int
);

CREATE TABLE `ExamQuestion`(
	ExamID		int,
    QuestionID	int
);










