CREATE DATABASE OurExerciseDb ON PRIMARY
(NAME='OurExercise_Db',FILENAME='D:\Mphasis\Phase-2\Day-1\OurExercise_Db.mdf',
SIZE =16MB ,MAXSIZE=24MB,FILEGROWTH=8MB)
LOG ON 
(NAME ='OurExercise_log',FILENAME ='D:\Mphasis\Phase-2\Day-1\OurExercise_log.ldf')

COLLATE SQL_Latin1_General_CP1_CI_AS

use OurExerciseDb
create table StudentRegistrations
(StudentId int not null,
CourseCode nvarchar(50) not null,
RegistrationDate Date not null,
constraint pk_StudentRegistrations primary key (StudentId,CourseCode))

insert into StudentRegistrations values(1,'JAVA','03/03/2023')
insert into StudentRegistrations values(1,'SQL','03/03/2023')
insert into StudentRegistrations values(2,'JAVA','03/03/2023')
insert into StudentRegistrations values(3,'C++','03/03/2023')
insert into StudentRegistrations values(4,'DotNet','03/03/2023')

select * from StudentRegistrations