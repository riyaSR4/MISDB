Create database MISDB; 

use MISDB;

CREATE TABLE Hired_Candidates (
  Id int NOT NULL PRIMARY KEY,
  First_Name varchar(100) NOT NULL,
  Middle_Name varchar(100) DEFAULT NULL,
  Last_Name varchar(100) NOT NULL,
  Email varchar(50) NOT NULL,
  Mobile_Num bigint NOT NULL,
  Hired_City varchar(50) NOT NULL,
  Hired_Date datetime NOT NULL,
  Degree varchar(100) NOT NULL,
  Aggregate_Per float DEFAULT NULL,
  Current_Pincode int DEFAULT NULL,
  Permanent_Pincode int DEFAULT NULL,
  Hired_Lab varchar(20) DEFAULT NULL,
  Attitude_Remark varchar(15) DEFAULT NULL,
  Communication_Remark varchar(15) DEFAULT NULL,
  Knowledge_Remark varchar(15) DEFAULT NULL,
  Status varchar(20) NOT NULL,
  Creator_Stamp datetime DEFAULT NULL,
  Creator_User int DEFAULT NULL,
);

Insert into Hired_Candidates values(1, 'Deepak', 'Kiran', 'Patil', 'deepak.63584@gmail.com ', 
8956748596, 'Pune','2019-12-13','B.E', 75.25,5245,5478,'Mumbai', 'Good', 'Good', 
'Good', 'Hired', null, 1);

Select * from Hired_Candidates;

CREATE TABLE Fellowship_Candidates (
  Id int NOT NULL,
  First_Name varchar(100) NOT NULL,
  Middle_Name varchar(100) DEFAULT NULL,
  Last_Name varchar(100) NOT NULL,
  Email varchar(50) NOT NULL,
  Mobile_Num bigint NOT NULL,
  Hired_City varchar(50) NOT NULL,
  Hired_Date datetime NOT NULL,
  Degree varchar(50) NOT NULL,
  Aggregate_Per float DEFAULT NULL,
  Current_Pincode int DEFAULT NULL,
  Permanent_Pincode int DEFAULT NULL,
  Hired_Lab varchar(20) DEFAULT NULL,
  Attitude_Remark varchar(15) DEFAULT NULL,
  Communication_Remark varchar(15) DEFAULT NULL,
  Knowledge_Remark varchar(15) DEFAULT NULL,
  Birth_Date date NOT NULL,
  Is_Birth_Date_Verified int DEFAULT 0,
  Parent_Name varchar(50) DEFAULT NULL,
  Parent_Occupation varchar(100) NOT NULL,
  Parent_Mobile_Num bigint NOT NULL,
  Parent_Annual_Sal float DEFAULT NULL,
  Local_Addr varchar(255) NOT NULL,
  Permanent_Addr varchar(150) DEFAULT NULL,
  Photo_Path varchar(500) DEFAULT NULL,
  Joining_Date date DEFAULT NULL,
  Candidate_Status varchar(20) NOT NULL,
  Personal_Info_Filled int DEFAULT 0,
  Bank_Info_Filled int DEFAULT 0,
  Educational_Info_Filled int DEFAULT 0,
  Doc_Status varchar(20) DEFAULT NULL,
  remark varchar(150) DEFAULT NULL,
  Creator_Stamp datetime DEFAULT NULL,
  Creator_User int DEFAULT NULL,
  PRIMARY KEY (id)
);

Insert into Fellowship_Candidates values(1, 'Deepak', 'Kiran', 'Patil', 'deepak.63584@gmail.com ', 
8956748596, 'Pune','2019-12-13','B.E', 75.25,5245,5478,'Mumbai', 'Good', 'Good', 
'Good', '1999-12-13', 1, 'Kiran', 'Farmer', 7584962547, 300000, 'Pune', 'Pune', 
'photo_path', '2019-12-13', 'Good', 1, 1, 1, 'Correct', 'Good', null, 1);

Select * from Fellowship_Candidates;

CREATE TABLE Candidates_Personal_Det_Check (
  Id int NOT NULL,
  Candidate_Id  int NOT NULL,
  Field_Name int NOT NULL,
  Is_Verified int DEFAULT NULL,
  Lastupd_Stamp datetime DEFAULT NULL,
  Lastupd_User int DEFAULT NULL,
  Creator_Stamp datetime DEFAULT NULL,
  Creator_User int DEFAULT NULL
);

Insert into Candidates_Personal_Det_Check values (1, 100, 2, 1, null, 10, '2020-09-08', 11);

Select * from Candidates_Personal_Det_Check;

CREATE TABLE Candidate_Bank_Det(
  Id int NOT NULL PRIMARY KEY,
  Candidate_Id int NOT NULL 
  CONSTRAINT FK_Candidate_Bank_Det_Candidate_Id FOREIGN KEY (Candidate_Id) 
  REFERENCES Fellowship_Candidates(Id),
  Name varchar(100) NOT NULL,
  Account_Num int NOT NULL,
  Is_Account_Num_Verified int DEFAULT 0,
  Ifsc_Code varchar(20) NOT NULL,
  Is_Ifsc_Code_Verified int DEFAULT 0,
  Pan_Number varchar(10) DEFAULT NULL,
  Is_Pan_Number_Verified int DEFAULT 0,
  Addhaar_Num int NOT NULL,
  Is_Addhaar_Num_Verified int DEFAULT 0,
  Creator_Stamp datetime DEFAULT NULL,
  Creator_User int DEFAULT NULL,
);

Insert into Candidate_Bank_Det values(1, 1, 'Riya', 1223344, 1, 'RSR444', 1, 'ABC1110000', 1, 12345678, 
1,'2022-04-02 12:00:00', 111);

Select * from Candidate_Bank_Det;

CREATE TABLE Candidates_Bank_Det_Check (
  Id int NOT NULL,
  Candidate_Id  int NOT NULL,
  Field_Name int NOT NULL,
  Is_Verified int DEFAULT NULL,
  Lastupd_Stamp datetime DEFAULT NULL,
  Lastupd_User int DEFAULT NULL,
  Creator_Stamp datetime DEFAULT NULL,
  Creator_User int DEFAULT NULL
);

Insert into Candidates_Bank_Det_Check values (1, 100, 2, 1, '2020-09-08', 10, '2020-09-08', 11);

Select * from Candidates_Bank_Det_Check;

CREATE TABLE Candidate_Qualification(
  Id int NOT NULL PRIMARY KEY,
  Candidate_Id int NOT NULL
  CONSTRAINT FK_Candidate_Qual_Candidate_Id FOREIGN KEY (Candidate_Id)
  REFERENCES Fellowship_Candidates(Id),
  Diploma int DEFAULT 0,
  Degree_Name varchar(10) NOT NULL,
  Is_Degree_Name_Verified int DEFAULT 0,
  Employee_Discipline varchar(100) NOT NULL,
  Is_Employee_Discipline_Verified int DEFAULT 0,
  Passing_Year int NOT NULL,
  Is_Passing_Year_Verified int DEFAULT 0,
  Aggregate_Per float DEFAULT NULL,
  Final_Year_Per float DEFAULT NULL,
  Is_Final_Year_Per_Verified int DEFAULT 0,
  Training_Institute varchar(20) NOT NULL,
  Is_Training_Institute_Verified int DEFAULT 0,
  Training_Duration_Month int DEFAULT NULL,
  Is_Training_Duration_Month_Verified int DEFAULT 0,
  Other_Training varchar(255) DEFAULT NULL,
  Is_Other_Training_Verified int DEFAULT 0,
  Creator_Stamp datetime DEFAULT NULL,
  Creator_User int DEFAULT NULL
);

Insert into Candidate_Qualification values(1, 1, 0, 'B.E', 1, 'IT', 1, 2018, 1, 7.5, 6.7, 1, 
'IIT', 1, 6, 1, 'NO', 1, '2020-09-01', 1);

Select * from Candidate_Qualification;

CREATE TABLE Candidates_Education_Det_Check (
  Id int NOT NULL,
  Candidate_Id  int NOT NULL,
  Field_Name int NOT NULL,
  Is_Verified int DEFAULT NULL,
  Lastupd_Stamp datetime DEFAULT NULL,
  Lastupd_User int DEFAULT NULL,
  Creator_Stamp datetime DEFAULT NULL,
  Creator_User int DEFAULT NULL
);

Insert into Candidates_Education_Det_Check values (1, 100, 2, 1, '2020-09-08', 10, '2020-09-08', 11);

Select * from Candidates_Education_Det_Check;

CREATE TABLE User_Details (
  Id int NOT NULL PRIMARY KEY,
  Email varchar(50) NOT NULL,
  First_Name varchar(100) NOT NULL,
  Last_Name varchar(100) NOT NULL,
  Password varchar(15) NOT NULL,
  Contact_Number bigint NOT NULL,
  Verified bit DEFAULT NULL,
  CONSTRAINT AK_TransactionID UNIQUE(Email)
  );

Insert into User_Details values(1, 'abc@gmail.com', 'abc', 'xyz', 'abc@xyz', 9908765432, 1); 

Select * from User_Details;

CREATE TABLE User_Roles (
  User_Id int NOT NULL ,
  Role_Name varchar(100)
  );

Insert into User_Roles values(1, 'Engineer');

Select * from User_Roles;

CREATE TABLE Company(
Id int NOT NULL PRIMARY KEY,
Name varchar(50) NOT NULL,
Address varchar(150) DEFAULT NULL,
Location varchar(50) DEFAULT NULL,
Status int DEFAULT 1,
Creator_Stamp datetime DEFAULT NULL,
Creator_User int DEFAULT NULL
);

Insert into Company values(1, 'TVS NEXT','Guindy', 'Chennai', 1, null, 1);

Select * from Company;

CREATE TABLE Tech_Type(
Id int NOT NULL PRIMARY KEY,
Type_Name varchar(50) NOT NULL,
Cur_Status char(1) DEFAULT NULL,
Creator_Stamp datetime DEFAULT NULL,
Creator_User int DEFAULT NULL
);

Insert into Tech_Type values(1, 'IT', 'Y', null, 1);

Select * from Tech_Type;

CREATE TABLE Tech_Stack(
Id int NOT NULL PRIMARY KEY,
Tech_Name varchar(50) NOT NULL,
Image_Path varchar(500) DEFAULT NULL,
Framework text DEFAULT NULL,
Cur_Status char(1) DEFAULT NULL,
Creator_Stamp datetime DEFAULT NULL,
Creator_User int DEFAULT NULL
);

Insert into Tech_Stack values(1, 'Development', 'abc.xyz', '.net', 'Y', null, 1);

Select * from Tech_Stack;

CREATE TABLE Maker_Program(
Id int NOT NULL PRIMARY KEY,
Program_Name varchar(10) NOT NULL,
Program_Type varchar(10) DEFAULT NULL,
Program_Link text DEFAULT NULL,
Tech_Stack_Id int DEFAULT NULL
CONSTRAINT FK_Maker_Program_Tech_Stack_Id FOREIGN KEY(Tech_Stack_Id)
REFERENCES Tech_Stack(Id),
Tech_Type_Id int NOT NULL
CONSTRAINT FK_Maker_Program_Tech_Type_Id FOREIGN KEY(Tech_Type_Id)
REFERENCES Tech_Type(Id),
Is_Program_Approved int,
Description varchar(500) DEFAULT NULL,
Status int DEFAULT 1,
Creator_Stamp datetime DEFAULT NULL,
Creator_User int DEFAULT NULL, 
); 

Insert into Maker_Program values(1, 'BridgeLabz', null, null, 1, 1, 1, null, 1, null, 1);

Select * from Maker_Program;

CREATE TABLE Lab(
Id int NOT NULL PRIMARY KEY,
Name varchar(50) DEFAULT NULL,
Location varchar(50) DEFAULT NULL,
Address varchar(255) DEFAULT NULL,
Status int DEFAULT 1,
Creator_Stamp datetime DEFAULT NULL,
Creator_User int DEFAULT NULL
);

Insert into Lab values(1, 'MedLab', 'Chennai', 'Ekkatuthangal', 1, null, 1);

Select * from Lab;

CREATE TABLE App_Parameters(
Id int NOT NULL,
Key_Type varchar(20) NOT NULL,
Key_Value varchar(20) NOT NULL,
Key_Text varchar(80) DEFAULT NULL,
Cur_Status char(1) DEFAULT NULL,
Lastupd_User int DEFAULT NULL,
Lastupd_Stamp datetime DEFAULT NULL,
Creator_Stamp datetime DEFAULT NULL,
Creator_User int DEFAULT NULL,
Seq_Num int DEFAULT NULL
);

Insert into App_Parameters values(1, 'Key', 12345, null, 'Y', 10, null, null, 1, 123);

Select * from App_Parameters;

CREATE TABLE Mentor(
Id int NOT NULL PRIMARY KEY,
Name varchar(50) DEFAULT NULL,
Mentor_Type varchar(20) DEFAULT NULL,
Lab_Id int NOT NULL
CONSTRAINT FK_Mentor_Lab_Id FOREIGN KEY(Lab_Id)
REFERENCES Lab(Id),
Status int DEFAULT 1,
Creator_Stamp datetime DEFAULT NULL,
Creator_User int DEFAULT NULL
);

Insert into Mentor values(1, 'Manish', null, 1, 1, null, 2);

Select * from Mentor;

CREATE TABLE Mentor_Ideation_Map(
Id int NOT NULL PRIMARY KEY,
Mentor_Id int NOT NULL
CONSTRAINT FK_Mentor_Ideation_Map_Mentor_Id FOREIGN KEY (Mentor_Id)
REFERENCES Mentor(Id),
Status int DEFAULT 1,
Creator_Stamp datetime DEFAULT NULL,
Creator_User int DEFAULT NULL
);

Insert into Mentor_Ideation_Map values(1, 1, 1, null, 1);

Select * from Mentor_Ideation_Map;

CREATE TABLE Mentor_Techstack(
Id int NOT NULL PRIMARY KEY,
Mentor_Id int NOT NULL
CONSTRAINT FK_Mentor_Mentor_Id FOREIGN KEY(Mentor_Id)
REFERENCES Mentor(Id),
Tech_Stack_Id int NOT NULL
CONSTRAINT FK_Mentor_Tech_Stack_Id FOREIGN KEY(Tech_Stack_Id)
REFERENCES Tech_Stack(Id),
Status int DEFAULT 1,
Creator_Stamp datetime DEFAULT NULL,
Creator_User int DEFAULT NULL
);

Insert into  Mentor_Techstack values(1, 1, 1, 1, null, 2);

Select * from Mentor_Techstack;

SELECT Candidate_Bank_Det.Id, Candidate_Qualification.Candidate_Id, Candidates_Bank_Det_Check.Field_Name, Candidates_Education_Det_Check.Is_Verified, Candidates_Personal_Det_Check.Creator_User
FROM Candidate_Bank_Det INNER JOIN Candidate_Qualification ON Candidate_Bank_Det.Id = Candidate_Qualification.Id INNER JOIN
Candidates_Bank_Det_Check ON Candidate_Bank_Det.Id = Candidates_Bank_Det_Check.Id INNER JOIN
Candidates_Education_Det_Check ON Candidate_Bank_Det.Id = Candidates_Education_Det_Check.Id INNER JOIN
Candidates_Personal_Det_Check ON Candidate_Bank_Det.Id = Candidates_Personal_Det_Check.Id;

SELECT Company.Id, Fellowship_Candidates.First_Name, Hired_Candidates.First_Name AS Expr1, Maker_Program.Program_Name
FROM Company INNER JOIN
Fellowship_Candidates ON Company.Id = Fellowship_Candidates.Id INNER JOIN
Hired_Candidates ON Company.Id = Hired_Candidates.Id INNER JOIN
Maker_Program ON Company.Id = Maker_Program.Id;

CREATE TABLE Lab_Threshold(
Id int NOT NULL PRIMARY KEY,
);

