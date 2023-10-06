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
  Id int NOT NULL PRIMARY KEY,
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
);

Explain
Insert into Fellowship_Candidates values(1, 'Deepak', 'Kiran', 'Patil', 'deepak.63584@gmail.com ', 
8956748596, 'Pune','2019-12-13','B.E', 75.25,5245,5478,'Mumbai', 'Good', 'Good', 
'Good', '1999-12-13', 1, 'Kiran', 'Farmer', 7584962547, 300000, 'Pune', 'Pune', 
'photo_path', '2019-12-13', 'Good', 1, 1, 1, 'Correct', 'Good', null, 1);
Go

Drop table Fellowship_Candidates;

Insert into Fellowship_Candidates values(5, 'Deepak', 'Kiran', 'Patil', 'deepak.63584@gmail.com ', 
8956748596, 'Pune','2019-12-13','B.E', 75.25,5245,5478,'Mumbai', 'Good', 'Good', 
'Good', '1999-12-13', 1, 'Kiran', 'Farmer', 7584962547, 300000, 'Pune', 'Pune', 
'photo_path', '2019-12-13', 'Good', 1, 1, 1, 'Correct', 'Good', null, 1),
(6, 'Riya', 'Susan', 'Reji', 'riya.4@gmail.com ', 
8956748596, 'Pune','2019-12-13','B.E', 75.25,5245,5478,'Kerala', 'Good', 'Good', 
'Good', '1999-12-13', 1, 'Reji', 'Farmer', 7584962547, 300000, 'Pune', 'Pune', 
'photo_path', '2019-12-13', 'Good', 1, 1, 1, 'Correct', 'Good', null, 1),
(7, 'Rija', 'Sara', 'Reji', 'rija.9@gmail.com ', 
8956748596, 'Kerala','2019-12-13','CA', 75.25,5245,5478,'Kerala', 'Good', 'Good', 
'Good', '1999-12-13', 1, 'Reji', 'Farmer', 7584962547, 300000, 'Pune', 'Pune', 
'photo_path', '2019-12-13', 'Good', 1, 1, 1, 'Correct', 'Good', null, 1),
(8, 'Riya', 'Susan', 'Reji', 'riya.4@gmail.com ', 
8956748596, 'Pune','2019-12-13','B.E', 75.25,5245,5478,'Kerala', 'Good', 'Good', 
'Good', '1999-12-13', 1, 'Reji', 'Farmer', 7584962547, 300000, 'Pune', 'Kerala', 
'photo_path', '2019-12-13', 'Good', 1, 1, 1, 'Correct', 'Good', null, 1),
(9, 'Jessy', null, 'Reji', 'jessy.30@gmail.com ', 
8956748596, 'Pune','2019-12-13','B.E', 75.25,5245,5478,'Kerala', 'Good', 'Good', 
'Good', '1999-12-13', 1, 'Samuel', 'Farmer', 7584962547, 300000, 'Pune', 'Pune', 
'photo_path', '2019-12-13', 'Good', 1, 1, 1, 'Correct', 'Good', null, 1),
(10, 'Reji', null , 'Skaria', 'reji.5@gmail.com ', 
8956748596, 'Kerala','2019-12-13','B.E', 75.25,5245,5478,'Kerala', 'Good', 'Good', 
'Good', '1999-12-13', 1, 'Skaria', 'Farmer', 7584962547, 300000, 'Kerala', 'Pune', 
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

------------------------------------------------------------------------------------------------------------------------

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

------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Lab_Threshold(
Id int NOT NULL PRIMARY KEY,
Lab_Id int NOT NULL
CONSTRAINT FK_Lab_Lab_Id FOREIGN KEY (Lab_Id)
REFERENCES Lab(Id),
Lab_Capacity varchar(50) DEFAULT NULL,
Lead_Threshold int DEFAULT NULL,
Ideation_Engg_Threshold int DEFAULT NULL,
Buddy_Engg_Threshold int DEFAULT NULL,
Status int DEFAULT 1,
Creator_Stamp datetime DEFAULT NULL,
Creator_User int DEFAULT NULL
);

Insert into Lab_Threshold values(1, 1, 1000, 50, 100, null, 1, null, 1);

Select * from Lab_Threshold;

CREATE TABLE Company_Requirement(
Id int NOT NULL PRIMARY KEY,
Company_Id int NOT NULL,
Candidate_Id int NOT NULL
CONSTRAINT FK_Candidate_Candidate_Id FOREIGN KEY(Candidate_Id)
REFERENCES Fellowship_Candidates(Id),
Requested_Month varchar(20) NOT NULL,
City varchar(20) DEFAULT NULL,
Is_Doc_Verification int DEFAULT 1,
Requirement_Doc_Path varchar(500) DEFAULT NULL,
No_Of_Engg int NOT NULL,
Tech_Stack_Id int NOT NULL,
Tech_Type_Id int NOT NULL,
Maker_Programs_Id int NOT NULL,
Lead_Id int NOT NULL,
Ideation_Engg_Id int DEFAULT NULL,
Buddy_Engg_Id int DEFAULT NULL,
Special_Remark text DEFAULT NULL,
Status int DEFAULT 1,
Creator_Stamp datetime DEFAULT NULL,
Creator_User int DEFAULT NULL
);

Insert into Company_Requirement values(1, 1, 1, 'September', 'Chennai', 1, null, 10, 1, 1, 1, 1, 1, null, 'good', 1, null, 1);

Select * from Company_Requirement;

CREATE TABLE Candidate_Techstack_Assignment(
Id int NOT NULL PRIMARY KEY,
Requirement_Id int NOT NULL
CONSTRAINT FK_Candidate_Techstack_Assignment_Requirement_Id FOREIGN KEY(Requirement_Id)
REFERENCES Company_Requirement(Id),
Candidate_Id int NOT NULL
CONSTRAINT FK_Candidate_Techstack_Id FOREIGN KEY(Candidate_Id)
REFERENCES Fellowship_Candidates(Id),
Assign_Date datetime DEFAULT NULL,
Status varchar(20) DEFAULT NULL,
Creator_Stamp datetime DEFAULT NULL,
Creator_User int DEFAULT NULL
);

Insert into Candidate_Techstack_Assignment values(1, 1, 1, '2023-09-20', 'Good', null, 1);

Select * from Candidate_Techstack_Assignment;

CREATE TABLE User_Engagement_MIS(
Id int NOT NULL PRIMARY KEY,
Candidate_Id int NOT NULL
CONSTRAINT FK_User_Engagement_MIS_Candidate_Id FOREIGN KEY(Candidate_Id)
REFERENCES Fellowship_Candidates(Id),
Date_Time datetime2(7) NOT NULL,
Cpu_Count int NOT NULL,
Cpu_Working_Time float NOT NULL,
Cpu_Idle_Time float NOT NULL,
Cpu_Percent float NOT NULL,
Usage_Cpu_Count int NOT NULL,
Number_Of_Software_Interrupts_Since_Boot float NOT NULL,
Number_Of_System_Calls_Since_Boot int NOT NULL,
Number_Of_Interrupts_Since_Boot int NOT NULL,
Cpu_Avg_Load_Over_1_Min float NOT NULL,
Cpu_Avg_Load_Over_5_Min float NOT NULL,
Cpu_Avg_Load_Over_15_Min float NOT NULL,
System_Total_Memory BIGINT NOT NULL,
System_Used_Memory float NOT NULL,
System_Free_Memory float NOT NULL,
System_Active_Memory float NOT NULL,
System_Inactive_Memory float NOT NULL,
System_Buffers_Memory int NOT NULL,
System_Cached_Memory float NOT NULL,
System_Shared_Memory int NOT NULL,
System_Available_Memory float NOT NULL,
Disk_Total_Memory BIGINT NOT NULL,
Disk_Used_Memory BIGINT NOT NULL,
Disk_Free_Memory BIGINT NOT NULL,
Disk_Read_Count BIGINT NOT NULL,
Disk_Write_Count BIGINT NOT NULL,
Disk_Read_Bytes BIGINT NOT NULL,
Disk_Write_Bytes BIGINT NOT NULL,
Time_Spent_Reading_From_Disk BIGINT NOT NULL,
Time_Spent_Writing_To_Disk BIGINT NOT NULL,
Time_Spent_Doing_Actual_Input_Output BIGINT NOT NULL,
Number_Of_Bytes_Sent BIGINT NOT NULL,
Number_Of_Bytes_Received BIGINT NOT NULL,
Number_Of_Packets_Sent BIGINT NOT NULL,
Number_Of_Packets_Received BIGINT NOT NULL,
Total_Number_Of_Errors_While_Receiving BIGINT NOT NULL,
Total_Number_Of_Errors_While_Sending BIGINT NOT NULL,
Total_Number_Of_Incoming_Packets_Which_Were_Dropped BIGINT NOT NULL,
Total_Number_Of_Outgoing_Packets_Which_Were_Dropped BIGINT NOT NULL,
Boot_Time nvarchar(50) NOT NULL,
Keyboard float NOT NULL,
Mouse int NOT NULL,
Technology nvarchar(50) NOT NULL,
Files_Changed int NOT NULL
);

Drop table User_Engagement_MIS;

INSERT INTO User_Engagement_MIS VALUES (1, 1, '2023-09-25 12:12:12', 100, 8.0, 1.0, 100, 10, 10, 10, 10, 20, 40, 60, 
500, 250.0, 250.0, 400.0, 100.0, 100, 100.0, 200, 500, 300.0, 200.0, 100, 50, 50, 250, 250, 2, 2, 4, 250, 250, 50, 50, 
10, 10, 10, 10, 100, 50, 50, '.net', 50),
(2, 2, '2023-10-03 09:15:00', 2, 67.89, 34.56, 78.34, 1, 345.6, 123, 234, 0.5, 0.7, 1.0, 8192, 2048, 
6144, 4096, 4096, 512, 2048, 1024, 3072, 524288, 262144, 262144, 500000, 1000000, 2048, 4096, 2048, 4096, 2048, 4096, 2048, 4096, 512, 
1024, 128, 512, 4096, 100, 0.8, 2, 'Technology B', 3),
(3, 3, '2023-10-03 09:30:00', 1, 45.67, 23.45, 89.12, 1, 234.5, 67, 123, 0.6, 0.8, 1.1, 4096, 1024, 3072, 2048, 2048, 
256, 1024, 512, 1536, 262144, 131072, 131072, 250000, 500000, 1024, 2048, 1024, 2048, 1024, 2048, 1024, 2048, 256, 
512, 64, 256, 2048, 100, 0.6, 1, 'Technology A', 2),
(4, 4, '2023-10-03 10:00:00', 4, 123.45, 67.89, 56.78, 2, 789.5, 234, 456, 0.7, 0.9, 1.2, 16384, 4096, 12288, 8192, 
8192, 1024, 4096, 2048, 6144, 1048576, 524288, 524288, 1000000, 2000000, 4096, 8192, 8192, 16384, 4096, 8192, 4096, 
8192, 1024, 2048, 256, 1024, 8192, 100, 1.2, 3, 'Technology B', 6),
(5, 5, '2023-10-03 10:15:00', 2, 67.89, 34.56, 78.34, 1, 345.6, 123, 234, 0.5, 0.7, 1.0, 8192, 2048, 6144, 4096, 4096, 
512, 2048, 1024, 3072, 524288, 262144, 262144, 500000, 1000000, 2048, 4096, 2048, 8192, 2048, 4096, 2048, 4096, 512, 
1024, 128, 512, 4096, 100, 0.8, 2, 'Technology A', 4),
(6, 6, '2023-10-03 10:30:00', 1, 45.67, 23.45, 89.12, 1, 234.5, 67, 123, 0.6, 0.8, 1.1, 4096, 1024, 3072, 2048, 2048, 256, 
1024, 512, 1536, 262144, 131072, 131072, 250000, 500000, 1024, 2048, 1024, 2048, 1024, 2048, 1024, 2048, 256, 512, 64, 
256, 2048, 100, 0.6, 1, 'Technology C', 3),
(7, 7, '2023-10-03 11:00:00', 4, 123.45, 67.89, 56.78, 2, 789.5, 234, 456, 0.7, 0.9, 1.2, 16384, 4096, 12288, 8192, 8192, 
1024, 4096, 2048, 6144, 1048576, 524288, 524288, 1000000, 2000000, 4096, 8192, 8192, 16384, 4096, 8192, 4096, 8192, 
1024, 2048, 256, 1024, 8192, 100, 1.2, 3, 'Technology B', 5),
(8, 8, '2023-10-03 11:15:00', 2, 67.89, 34.56, 78.34, 1, 345.6, 123, 234, 0.5, 0.7, 1.0, 8192, 2048, 6144, 4096, 4096, 
512, 2048, 1024, 3072, 524288, 262144, 262144, 500000, 1000000, 2048, 4096, 2048, 8192, 2048, 4096, 2048, 4096, 512, 
1024, 128, 512, 4096, 100, 0.8, 2, 'Technology A', 4),
(9, 9, '2023-10-03 11:30:00', 1, 45.67, 23.45, 89.12, 1, 234.5, 67, 123, 0.6, 0.8, 1.1, 4096, 1024, 3072, 2048, 2048, 256, 
1024, 512, 1536, 262144, 131072, 131072, 250000, 500000, 1024, 2048, 1024, 2048, 1024, 2048, 1024, 2048, 256, 512, 64, 
256, 2048, 100, 0.6, 1, 'Technology B', 3),
(10, 10, '2023-10-03 12:00:00', 4, 123.45, 67.89, 56.78, 2, 789.5, 234, 456, 0.7, 0.9, 1.2, 16384, 4096, 12288, 8192, 8192, 
1024, 4096, 2048, 6144, 1048576, 524288, 524288, 1000000, 2000000, 4096, 8192, 8192, 16384, 4096, 8192, 4096, 8192, 1024, 
2048, 256, 1024, 8192, 100, 1.2, 3, 'Technology C', 5);

Select * from User_Engagement_MIS;

CREATE TABLE Temporary_MIS(
Date_Time  DATE NOT NULL,
Cpu_Count INT NOT NULL,
Cpu_Working_Time FLOAT NOT NULL,
Cpu_Idle_Time FLOAT NOT NULL,
Cpu_Percent FLOAT NOT NULL,
Usage_Cpu_Count INT NOT NULL, 
Number_Of_Software_Interrupts_Since_Boot FLOAT NOT NULL,
Number_Of_System_Calls_Since_boot INT NOT NULL,
Number_Of_Interrupts_Since_Boot INT NOT NULL,
Cpu_Avg_Load_Over_1_Min FLOAT NOT NULL,
Cpu_Avg_Load_Over_5_Min   FLOAT NOT NULL,
Cpu_Avg_Load_Over_15_Min FLOAT NOT NULL,
System_Total_Memory BIGINT NOT NULL,
System_Used_Memory BIGINT NOT NULL,
System_Free_Memory BIGINT NOT NULL,
System_Active_Memory BIGINT NOT NULL,
System_Inactive_Memory BIGINT NOT NULL,
System_Buffers_Memory BIGINT NOT NULL,
System_Cached_Memory BIGINT NOT NULL,
System_Shared_Memory BIGINT NOT NULL,
system_Available_Memory BIGINT NOT NULL,
Disk_Total_Memory BIGINT NOT NULL,
Disk_Used_Memory BIGINT NOT NULL,
Disk_Free_Memory BIGINT NOT NULL,
Disk_Read_Count BIGINT NOT NULL,
Disk_Write_Count BIGINT NOT NULL,
Disk_Read_Bytes BIGINT NOT NULL,
Disk_Write_Bytes BIGINT NOT NULL,
Time_Spent_Reading_From_Disk BIGINT NOT NULL,
Time_Spent_Writing_To_Disk BIGINT NOT NULL,
Time_Spent_Doing_Actual_Input_Output BIGINT NOT NULL,
Number_Of_Bytes_Sent BIGINT NOT NULL,
Number_Of_Bytes_Received BIGINT NOT NULL,
Number_Of_Packets_Sent BIGINT NOT NULL,
Number_Of_Packets_Received BIGINT NOT NULL,
Total_Number_Of_Errors_While_Receiving BIGINT NOT NULL,
Total_Number_Of_Errors_While_Sending BIGINT NOT NULL,
Total_Number_Of_Incoming_Packets_Which_Were_Dropped BIGINT NOT NULL,
Total_Number_Of_Outgoing_Packets_Which_Were_Dropped BIGINT NOT NULL,
Boot_Time VARCHAR NOT NULL,
User_Name VARCHAR(50) NOT NULL PRIMARY KEY,
Keyboard INT NOT NULL,
Mouse INT NOT NULL,
Technology VARCHAR NOT NULL,
Files_Changed INT NOT NULL
);

ALTER TABLE Temporary_MIS
ALTER COLUMN Technology VARCHAR(50) NOT NULL;

BULK INSERT dbo.Temporary_MIS
FROM 'C:\Users\RiyaSusanReji\Desktop\CpuLogData2019-11-17-new.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
)
GO

Insert into Temporary_MIS 
values('2023-09-29', 100, 100, 100, 50, 50, 10, 10, 10, 20, 40, 60, 500, 250, 250, 100, 200, 200, 200, 100, 500, 
500, 250, 250, 100, 100, 100, 100, 10, 10, 10, 250, 250, 50, 50, 20, 20, 20, 20, 5, 'deepak.63584@gmail.com', 20, 20, '.net', 10);

Select * from Temporary_MIS;

LOAD DATA LOCAL INFILE '~/Desktop/CpuLogData2019-11-17-new.csv' INTO TABLE Temporary_MIS FIELDS TERMINATED 
BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (
Date_Time ,
Cpu_Count ,
Cpu_Working_Time ,
Cpu_idle_Time ,
Cpu_Percent ,
Usage_Cpu_Count , 
Number_Of_Software_Interrupts_Since_Boot ,
Number_Of_System_Calls_Since_Boot ,
Number_Of_Interrupts_Since_Boot ,
Cpu_Avg_Load_Over_1_Min,
Cpu_Avg_Load_Over_5_Min  ,
Cpu_Avg_Load_Over_15_Min ,
System_Total_Memory  ,
System_Used_Memory ,
System_Free_Memory ,
System_Active_Memory ,
System_Inactive_Memory ,
System_Buffers_Memory,
System_Cached_Memory ,
System_Shared_Memory ,
System_Available_Memory ,
Disk_Total_Memory ,
Disk_Used_Memory ,
Disk_Free_Memory ,
Disk_Read_Count ,
Disk_Write_Count ,
Disk_Read_Bytes ,
Disk_Write_Bytes ,
Time_Spent_Reading_From_Disk ,
Time_Spent_Writing_To_Disk ,
Time_Spent_Doing_Actual_Input_Output ,
Number_Of_Bytes_Sent ,
Number_Of_Bytes_Received ,
Number_Of_Packets_Sent ,
Number_Of_Packets_Received ,
Total_Number_Of_Errors_While_Receiving ,
Total_Number_Of_Errors_While_Sending ,
Total_Number_Of_Incoming_Packets_Which_Were_Dropped ,
Total_Number_Of_Outgoing_Packets_Which_Were_Dropped ,
Boot_Time,
User_Name ,
Keyboard ,
Mouse ,
Technology ,
Files_Changed 
);

Select Date_Time, Cpu_Count, Cpu_Working_Time, Cpu_idle_Time, Cpu_Percent,
Usage_Cpu_Count, Number_Of_Software_Interrupts_Since_Boot , Number_Of_System_Calls_Since_Boot, Number_Of_Interrupts_Since_Boot,
Cpu_Avg_Load_Over_1_Min, Cpu_Avg_Load_Over_5_Min, Cpu_Avg_Load_Over_15_Min,
System_Total_Memory , System_Used_Memory, System_Free_Memory, System_Active_Memory, System_Inactive_Memory,  System_Buffers_Memory,
System_Cached_Memory, System_Shared_Memory, System_Available_Memory, Disk_Total_Memory, Disk_Used_Memory, Disk_Free_Memory , Disk_Read_Count,
Disk_Write_Count, Disk_Read_Bytes , Disk_Write_Bytes, Time_Spent_Reading_From_Disk,
Time_Spent_Writing_To_Disk, Time_Spent_Doing_Actual_Input_Output, Number_Of_Bytes_Sent ,
Number_Of_Bytes_Received, Number_Of_Packets_Sent, Number_Of_Packets_Received,
Total_Number_Of_Errors_While_Receiving, Total_Number_Of_Errors_While_Sending,
Total_Number_Of_Incoming_Packets_Which_Were_Dropped, Total_Number_Of_Outgoing_Packets_Which_Were_Dropped, Boot_Time, Keyboard, Mouse,
Technology, Files_changed
from   Fellowship_Candidates RIGHT JOIN Temporary_MIS ON Fellowship_Candidates.email=Temporary_MIS.user_name;

INSERT INTO User_Engagement_MIS
SELECT * FROM Fellowship_Candidates
LEFT JOIN Temporary_MIS ON Fellowship_Candidates.email = Temporary_MIS.user_name
UNION
SELECT * FROM Fellowship_Candidates
RIGHT JOIN Temporary_MIS ON Fellowship_Candidates.email = Temporary_MIS.user_name;

Insert into User_Engagement_MIS
select id,first_name, middle_name , last_name, mobile_num,   hired_city,
hired_date, degree, Aggregate_Per,  current_pincode, permanent_pincode, hired_lab,
attitude_remark, communication_remark,  knowledge_remark,   birth_date ,
is_birth_date_verified,  parent_name,  parent_occupation,   parent_mobile_num ,
parent_annual_sal,  local_addr,  permanent_addr,   photo_path ,  joining_date,  
candidate_status,  personal_info_filled,   bank_info_filled,  educational_info_filled,
doc_status,  remark ,  creator_stamp, creator_user
from Fellowship_Candidates LEFT  JOIN Temporary_MIS  ON Fellowship_Candidates.email=Temporary_MIS.user_name
UNION
select id,first_name, middle_name , last_name, mobile_num,   hired_city,
hired_date, degree, Aggregate_Per,  current_pincode, permanent_pincode, hired_lab,
attitude_remark, communication_remark,  knowledge_remark,   birth_date ,
is_birth_date_verified,  parent_name,  parent_occupation,   parent_mobile_num ,
parent_annual_sal,  local_addr,  permanent_addr,   photo_path ,  joining_date,  
candidate_status,  personal_info_filled,   bank_info_filled,  educational_info_filled,
doc_status,  remark ,  creator_stamp, creator_user
from Fellowship_Candidates RIGHT  JOIN Temporary_MIS  ON Fellowship_Candidates.email=Temporary_MIS.user_name;


Select Date_Time, Cpu_Count, Cpu_Working_Time, Cpu_idle_Time, Cpu_Percent,
Usage_Cpu_Count, Number_Of_Software_Interrupts_Since_Boot , Number_Of_System_Calls_Since_Boot, Number_Of_Interrupts_Since_Boot,
Cpu_Avg_Load_Over_1_Min, Cpu_Avg_Load_Over_5_Min, Cpu_Avg_Load_Over_15_Min,
System_Total_Memory , System_Used_Memory, System_Free_Memory, System_Active_Memory, System_Inactive_Memory,  System_Buffers_Memory,
System_Cached_Memory, System_Shared_Memory, System_Available_Memory, Disk_Total_Memory, Disk_Used_Memory, Disk_Free_Memory , Disk_Read_Count,
Disk_Write_Count, Disk_Read_Bytes , Disk_Write_Bytes, Time_Spent_Reading_From_Disk,
Time_Spent_Writing_To_Disk, Time_Spent_Doing_Actual_Input_Output, Number_Of_Bytes_Sent ,
Number_Of_Bytes_Received, Number_Of_Packets_Sent, Number_Of_Packets_Received,
Total_Number_Of_Errors_While_Receiving, Total_Number_Of_Errors_While_Sending,
Total_Number_Of_Incoming_Packets_Which_Were_Dropped, Total_Number_Of_Outgoing_Packets_Which_Were_Dropped, Boot_Time, Keyboard, Mouse,
Technology, Files_changed
from   Fellowship_Candidates  RIGHT  JOIN Temporary_MIS ON Fellowship_Candidates.email=Temporary_MIS.user_name ;

----------------------------------------------------------------------------------------------------------------------------------------------
Alter database MISDB
Add FileGroup Date1
Go

Alter database MISDB
Add FileGroup Date2
Go

Alter database MISDB
Add FileGroup Date3
Go

Alter database MISDB
Add FileGroup Date4
Go

Alter database MISDB
Add FileGroup Date5
Go

Alter database MISDB
Add FileGroup Date6
Go

Alter database MISDB
Add FileGroup Date7
Go

Alter database MISDB
Add FileGroup Date8
Go

Alter database MISDB
Add FileGroup Date9
Go

Alter database MISDB
Add FileGroup Date10
Go

Alter database MISDB
Add FileGroup Date11
Go

Alter database MISDB
Add FileGroup Date12
Go

Alter database MISDB
Add FileGroup Date13
Go

Alter database MISDB
Add FileGroup Date14
Go

Alter database MISDB
Add FileGroup Date15
Go

Alter database MISDB
Add FileGroup Date16
Go

Alter database MISDB
Add FileGroup Date17
Go

Alter database MISDB
Add FileGroup Date18
Go

Alter database MISDB
Add FileGroup Date19
Go

Alter database MISDB
Add FileGroup Date20
Go

Alter database MISDB
Add FileGroup Date21
Go

Alter database MISDB
Add FileGroup Date22
Go

Alter database MISDB
Add FileGroup Date23
Go

Alter database MISDB
Add FileGroup Date24
Go

Alter database MISDB
Add FileGroup Date25
Go

Alter database MISDB
Add FileGroup Date26
Go

Alter database MISDB
Add FileGroup Date27
Go

Alter database MISDB
Add FileGroup Date28
Go

Alter database MISDB
Add FileGroup Date29
Go

Alter database MISDB
Add FileGroup Date30
Go

Alter database MISDB
add FileGroup Date31
Go


CREATE PARTITION FUNCTION Pt_DatePartition_fun (DATETIME)
AS RANGE RIGHT FOR VALUES
(
  '2019-11-01', '2019-11-02', '2019-11-03', '2019-11-04', '2019-11-05',
  '2019-11-06', '2019-11-07', '2019-11-08', '2019-11-09', '2019-11-10',
  '2019-11-11', '2019-11-12', '2019-11-13', '2019-11-14', '2019-11-15',
  '2019-11-16', '2019-11-17', '2019-11-18', '2019-11-19', '2019-11-20',
  '2019-11-21', '2019-11-22', '2019-11-23', '2019-11-24', '2019-11-25',
  '2019-11-26', '2019-11-27', '2019-11-28', '2019-11-29', '2019-11-30', 
  '2019-12-01' 
);

-- Create Partition Scheme
CREATE PARTITION SCHEME Pt_DatewisePartition_Scheme
AS PARTITION Pt_DatePartition_fun
TO
(
  Date1, Date2, Date3, Date4, Date5, Date6, Date7, Date8, Date9, Date10,
  Date11, Date12, Date13, Date14, Date15, Date16, Date17, Date18, Date19, Date20,
  Date21, Date22, Date23, Date24, Date25, Date26, Date27, Date28, Date29, Date30,
  Date31
);

DROP PARTITION FUNCTION Pt_DatePartition_fun;
DROP PARTITION SCHEME Pt_DatewisePartition_Scheme;

select * from sys.filegroups;

CREATE TABLE DatewisePartitionUser_engagement_MIS(
id int NOT NULL,
candidate_id int NOT NULL,
Date_Time  DATETIME NOT NULL,
Cpu_Count int NOT NULL,
Cpu_Working_Time Decimal(11,3) NOT NULL,
Cpu_idle_Time Decimal(11,3) NOT NULL,
cpu_percent Decimal(11,3) NOT NULL,
Usage_cpu_count int NOT NULL,
number_of_software_interrupts_since_boot Decimal(11,3) NOT NULL,
number_of_system_calls_since_boot int NOT NULL,
number_of_interrupts_since_boot int NOT NULL,
cpu_avg_load_over_1_min Decimal(11,3) NOT NULL,
cpu_avg_load_over_5_min   Decimal(11,3) NOT NULL,
cpu_avg_load_over_15_min Decimal(11,3) NOT NULL,
system_total_memory BIGINT NOT NULL,
system_used_memory BIGINT NOT NULL,
system_free_memory BIGINT NOT NULL,
system_active_memory BIGINT NOT NULL,
system_inactive_memory BIGINT NOT NULL,
system_buffers_memory BIGINT NOT NULL,
system_cached_memory BIGINT NOT NULL,
system_shared_memory BIGINT NOT NULL,
system_avalible_memory BIGINT NOT NULL,
disk_total_memory BIGINT NOT NULL,
disk_used_memory BIGINT NOT NULL,
disk_free_memory BIGINT NOT NULL,
disk_read_count BIGINT NOT NULL,
disk_write_count BIGINT NOT NULL,
disk_read_bytes BIGINT NOT NULL,
disk_write_bytes BIGINT NOT NULL,
time_spent_reading_from_disk BIGINT NOT NULL,
time_spent_writing_to_disk BIGINT NOT NULL,
time_spent_doing_actual_Input_Output BIGINT NOT NULL,
number_of_bytes_sent BIGINT NOT NULL,
number_of_bytes_received BIGINT NOT NULL,
number_of_packets_sent BIGINT NOT NULL,
number_of_packets_recived BIGINT NOT NULL,
total_number_of_errors_while_receiving BIGINT NOT NULL,
total_number_of_errors_while_sending BIGINT NOT NULL,
total_number_of_incoming_packets_which_were_dropped BIGINT NOT NULL,
total_number_of_outgoing_packets_which_were_dropped BIGINT NOT NULL,
boot_time varchar(100) NOT NULL,
keyboard int NOT NULL,
mouse int NOT NULL,
technology varchar(100) NOT NULL,
files_changed int NOT NULL,
CONSTRAINT FK_user_engagemnt_mis_candidates_id FOREIGN KEY (candidate_id) REFERENCES fellowship_candidates (id),
)On Pt_DatewisePartition_Scheme(Date_Time);

drop table DatewisePartitionUser_engagement_MIS;

Insert into DatewisePartitionUser_engagement_MIS(id,candidate_id,Date_Time,Cpu_Count,Cpu_Working_Time,Cpu_idle_Time,cpu_percent
,Usage_cpu_count,number_of_software_interrupts_since_boot,number_of_system_calls_since_boot,number_of_interrupts_since_boot,
cpu_avg_load_over_1_min,cpu_avg_load_over_5_min,cpu_avg_load_over_15_min,system_total_memory,system_used_memory,
system_free_memory,system_active_memory,system_inactive_memory,system_buffers_memory,system_cached_memory,system_shared_memory,
system_avalible_memory,disk_total_memory,disk_used_memory,disk_free_memory,disk_read_count,disk_write_count,disk_read_bytes,disk_write_bytes,
time_spent_reading_from_disk,time_spent_writing_to_disk,time_spent_doing_actual_Input_Output,number_of_bytes_sent,number_of_bytes_received,
number_of_packets_sent,number_of_packets_recived,total_number_of_errors_while_sending,total_number_of_errors_while_receiving,total_number_of_incoming_packets_which_were_dropped
,total_number_of_outgoing_packets_which_were_dropped,boot_time,keyboard,mouse,technology,files_changed)
(select * from User_Engagement_MIS);

select $Partition.Pt_DatePartition_fun(Date_Time) as PartitionNumber ,*
from DatewisePartitionUser_engagement_MIS;

select * from DatewisePartitionUser_engagement_MIS;

select * from user_engagement_MIS;

SELECT part.partition_number AS [Partition Number],
                fle.name AS [Partition Name],
                part.rows AS [Number of Rows]
FROM sys.partitions AS part
JOIN SYS.destination_data_spaces AS dest ON
part.partition_number = dest.destination_id
JOIN sys.filegroups AS fle ON
dest.data_space_id = fle.data_space_id
WHERE OBJECT_NAME(OBJECT_ID) = 'DatewisePartitionUser_engagement_MIS';

select * from sys.filegroups;

select * from sys.partitions;

select * from  SYS.destination_data_spaces;

----------------------------------------------------------------------------------------------------------------------------------------------

Create Trigger [tr_Candidates_Personal_Det_Check]
on [Candidates_Personal_Det_Check]
for
insert,update,delete 
as
print 'you can not insert,update and delete this table'
rollback;

Create procedure Sp_UserEngagementCursor
as
Begin
Declare Csr_GetFirstUser Cursor Scroll for select * from User_Engagement_MIS
Open Csr_GetFirstUser
Fetch First From Csr_GetFirstUser
Fetch Last From Csr_GetFirstUser
Fetch Prior From Csr_GetFirstUser
Fetch Absolute 7 From Csr_GetFirstUser
Fetch Relative-2 From Csr_GetFirstUser
Fetch Next From Csr_GetFirstUser
Close Csr_GetFirstUser
Deallocate Csr_GetFirstUser
End


