
--2014510056 ZEYNEP KÖSE
--create database
CREATE DATABASE db_University_Preference;
--create tables
CREATE TABLE University (
	u_id INTEGER PRIMARY KEY NOT NULL,
	u_name TEXT NOT NULL ,
	u_email TEXT NOT NULL ,
	u_city TEXT NOT NULL ,
	u_year_of_foundation INTEGER NOT NULL,
	u_address TEXT NOT NULL ,
	u_type TEXT NOT NULL
);

CREATE TABLE Faculty (
	f_id INTEGER PRIMARY KEY NOT NULL,
	f_name TEXT NOT NULL ,
	f_email TEXT NOT NULL ,
	u_id INTEGER NOT NULL ,
	CONSTRAINT fk_University_Id FOREIGN KEY(u_id)
	REFERENCES University(u_id)
);

CREATE TABLE Department (
	d_id INTEGER PRIMARY KEY NOT NULL,
	d_name TEXT NOT NULL ,
	d_email TEXT NOT NULL ,
	d_quota INTEGER NOT NULL ,
	d_ranked_quota INTEGER NOT NULL ,
	d_min_score REAL NOT NULL ,
	d_min_order  REAL NOT NULL ,
	d_education_type TEXT NOT NULL ,
	d_education_period INTEGER NOT NULL ,
	d_language TEXT NOT NULL ,	
	f_id INTEGER NOT NULL ,
	CONSTRAINT fk_Faculty_Id FOREIGN KEY(f_id)
	REFERENCES Faculty(f_id)
);


CREATE TABLE Student (
	s_id INTEGER PRIMARY KEY NOT NULL,
	s_name TEXT NOT NULL ,
	s_surname TEXT NOT NULL ,
	s_examination_score REAL NOT NULL ,
	ranking_of_student REAL NOT NULL ,
	s_position BOOLEAN DEFAULT FALSE,
	s_pref INTEGER[3] NOT NULL 	
);

CREATE TABLE Student_pref_Departments (	
	s_id INTEGER NOT NULL ,
	CONSTRAINT fk_Student_Id FOREIGN KEY(s_id)
	REFERENCES Student(s_id),
	d_id INTEGER NOT NULL ,
	CONSTRAINT fk_pref FOREIGN KEY(d_id)
	REFERENCES Department(d_id),
	PRIMARY KEY (s_id, d_id)
);

INSERT INTO University(u_id,u_name,u_email ,u_city ,u_year_of_foundation,u_address ,u_type )
VALUES(1,'Dokuz Eylül University', 'dokuz.eylül@edu.tr','Izmir',1982,'İzmir','state');
INSERT INTO University(u_id,u_name,u_email ,u_city ,u_year_of_foundation,u_address ,u_type )
VALUES(2,'Izmir Technical University', 'izmir.technical@edu.tr','Izmir',1992,'İzmir','state');
INSERT INTO University(u_id,u_name,u_email ,u_city ,u_year_of_foundation,u_address ,u_type )
VALUES(3,'Ankara University', 'ankara@edu.tr','Ankara',1946,'Ankara','state');
INSERT INTO University(u_id,u_name,u_email ,u_city ,u_year_of_foundation,u_address ,u_type )
VALUES(4,'Bilkent University', 'bilkent@edu.tr','Ankara',1984,'Ankara','private');
INSERT INTO University(u_id,u_name,u_email ,u_city ,u_year_of_foundation,u_address ,u_type )
VALUES(5,'Koc University', 'koc@edu.tr','Ankara',1993,'Ankara','private');
INSERT INTO University(u_id,u_name,u_email ,u_city ,u_year_of_foundation,u_address ,u_type )
VALUES(6,'Izmir University', 'izmir@edu.tr','Izmir',1993,'Izmir','private');

INSERT INTO Faculty(f_id,f_name,f_email ,u_id )
VALUES(1,'Engineering', 'engineering@edu.tr',1);
INSERT INTO Faculty(f_id,f_name,f_email ,u_id )
VALUES(2,'Engineering', 'engineering@edu.tr',2);
INSERT INTO Faculty(f_id,f_name,f_email ,u_id )
VALUES(3,'Engineering', 'engineering@edu.tr',5);
INSERT INTO Faculty(f_id,f_name,f_email ,u_id )
VALUES(4,'Engineering', 'engineering@edu.tr',4);
INSERT INTO Faculty(f_id,f_name,f_email ,u_id )
VALUES(5,'Medicine', 'engineering@edu.tr',1);
INSERT INTO Faculty(f_id,f_name,f_email ,u_id )
VALUES(6,'Medicine', 'engineering@edu.tr',3);
INSERT INTO Faculty(f_id,f_name,f_email ,u_id )
VALUES(7,'Engineering', 'engineering@edu.tr',3);
INSERT INTO Faculty(f_id,f_name,f_email ,u_id )
VALUES(8,'Science and Literature', 'biology@edu.tr',1);
INSERT INTO Faculty(f_id,f_name,f_email ,u_id )
VALUES(9,'Law', 'law@edu.tr',1);
INSERT INTO Faculty(f_id,f_name,f_email ,u_id )
VALUES(10,'Law', 'law@edu.tr',3);
INSERT INTO Faculty(f_id,f_name,f_email ,u_id )
VALUES(11,'Engineering', 'engineering@edu.tr',6);



INSERT INTO Department(d_id, d_name, d_email, d_quota, d_ranked_quota, d_min_score, d_min_order, d_education_type, d_education_period, d_language, f_id)
VALUES(1,'Computer Engineering','computer@edu.tr',90,3,425.124,37.000,'öö',4,'English',1);
INSERT INTO Department(d_id, d_name, d_email, d_quota, d_ranked_quota, d_min_score, d_min_order, d_education_type, d_education_period, d_language, f_id)
VALUES(2,'Computer Engineering','computer.dep@edu.tr',90,3,425.124,37.000,'öö',4,'Turkish',2);
INSERT INTO Department(d_id, d_name, d_email, d_quota, d_ranked_quota, d_min_score, d_min_order, d_education_type, d_education_period, d_language, f_id)
VALUES(3,'Computer Engineering','computer.dep@edu.tr',90,3,430.124,35.000,'öö',4,'Turkish',3);
INSERT INTO Department(d_id, d_name, d_email, d_quota, d_ranked_quota, d_min_score, d_min_order, d_education_type, d_education_period, d_language, f_id)
VALUES(4,'Computer Engineering','computer.dep@edu.tr',90,3,420.124,39.000,'öö',4,'Turkish',4);
INSERT INTO Department(d_id, d_name, d_email, d_quota, d_ranked_quota, d_min_score, d_min_order, d_education_type, d_education_period, d_language, f_id)
VALUES(5,'Computer Engineering','computer.dep@edu.tr',90,3,433.124,34.000,'öö',4,'Turkish',7);
INSERT INTO Department(d_id, d_name, d_email, d_quota, d_ranked_quota, d_min_score, d_min_order, d_education_type, d_education_period, d_language, f_id)
VALUES(6,'Medicine','medicine.dep@edu.tr',250,10,507.124,4.900,'öö',7,'English',5);
INSERT INTO Department(d_id, d_name, d_email, d_quota, d_ranked_quota, d_min_score, d_min_order, d_education_type, d_education_period, d_language, f_id)
VALUES(7,'Medicine','medicine.dep@edu.tr',260,3,510.124,4.000,'öö',7,'Turkish',6);
INSERT INTO Department(d_id, d_name, d_email, d_quota, d_ranked_quota, d_min_score, d_min_order, d_education_type, d_education_period, d_language, f_id)
VALUES(8,'Elektrical Engineering','elektrical.dep@edu.tr',100,5,450.124,25.000,'öö',4,'English',1);
INSERT INTO Department(d_id, d_name, d_email, d_quota, d_ranked_quota, d_min_score, d_min_order, d_education_type, d_education_period, d_language, f_id)
VALUES(9,'Biology','biology.dep@edu.tr',150,15,350.124,65.000,'öö',4,'Turkish',8);
INSERT INTO Department(d_id, d_name, d_email, d_quota, d_ranked_quota, d_min_score, d_min_order, d_education_type, d_education_period, d_language, f_id)
VALUES(10,'Computer Engineering','computer.dep@edu.tr',90,3,400.124,46.400,'iö',4,'Turkish',3);
INSERT INTO Department(d_id, d_name, d_email, d_quota, d_ranked_quota, d_min_score, d_min_order, d_education_type, d_education_period, d_language, f_id)
VALUES(11,'Computer Engineering','computer.dep@edu.tr',90,3,410.124,40.400,'iö',4,'Turkish',4);
INSERT INTO Department(d_id, d_name, d_email, d_quota, d_ranked_quota, d_min_score, d_min_order, d_education_type, d_education_period, d_language, f_id)
VALUES(12,'Elektrical Engineering','elektrical.dep@edu.tr',100,5,415.124,44.200,'iö',4,'English',1);
INSERT INTO Department(d_id, d_name, d_email, d_quota, d_ranked_quota, d_min_score, d_min_order, d_education_type, d_education_period, d_language, f_id)
VALUES(13,'Law Department','law.dep@edu.tr',460,12,415.124,12.200,'öö',4,'Turkish',9);
INSERT INTO Department(d_id, d_name, d_email, d_quota, d_ranked_quota, d_min_score, d_min_order, d_education_type, d_education_period, d_language, f_id)
VALUES(14,'Civil Engineering','civil.dep@edu.tr',300,5,400.124,52.200,'öö',4,'Turkish',11);
INSERT INTO Department(d_id, d_name, d_email, d_quota, d_ranked_quota, d_min_score, d_min_order, d_education_type, d_education_period, d_language, f_id)
VALUES(15,'Computer Engineering','computer.dep@edu.tr',90,3,410.124,40.400,'iö',4,'Turkish',11);
INSERT INTO Department(d_id, d_name, d_email, d_quota, d_ranked_quota, d_min_score, d_min_order, d_education_type, d_education_period, d_language, f_id)
VALUES(16,'Elektrical Engineering','elektrical.dep@edu.tr',100,5,415.124,44.200,'iö',4,'English',11);

INSERT INTO Student(s_id, s_name, s_surname, s_examination_score, ranking_of_student, s_position, s_pref)
VALUES(1,'Mia','Wallace',460.124,15.679, true, '{1,2,3}');
INSERT INTO Student(s_id, s_name, s_surname, s_examination_score, ranking_of_student, s_position, s_pref)
VALUES(2,'Eddie','Vedder',470.124,17.679, false, '{2,3,4}');
INSERT INTO Student(s_id, s_name, s_surname, s_examination_score, ranking_of_student, s_position, s_pref)
VALUES(3,'Layne','Staley',460.124,15.679, true, '{1,2,3}');
INSERT INTO Student(s_id, s_name, s_surname, s_examination_score, ranking_of_student, s_position, s_pref)
VALUES(4,'Chris','Cornell',470.124,10.679, false, '{1,2,7}');
INSERT INTO Student(s_id, s_name, s_surname, s_examination_score, ranking_of_student, s_position, s_pref)
VALUES(5,'White','Buffalo',510.124,3.679, true, '{5,7,8}');
INSERT INTO Student(s_id, s_name, s_surname, s_examination_score, ranking_of_student, s_position, s_pref)
VALUES(6,'Axl','Rose',440.124,35.679, true, '{4,8,3}');
INSERT INTO Student(s_id, s_name, s_surname, s_examination_score, ranking_of_student, s_position, s_pref)
VALUES(7,'James','Hetfield',450.124,25.679, false, '{6,4,7}');
INSERT INTO Student(s_id, s_name, s_surname, s_examination_score, ranking_of_student, s_position, s_pref)
VALUES(8,'Marco','Hietela',410.124,45.679, true, '{6,2,5}');
INSERT INTO Student(s_id, s_name, s_surname, s_examination_score, ranking_of_student, s_position, s_pref)
VALUES(9,'Brandon','Lee',450.124,15.679, true, '{9,10,12}');
INSERT INTO Student(s_id, s_name, s_surname, s_examination_score, ranking_of_student, s_position, s_pref)
VALUES(10,'Chuck','Berry',470.124,2.679, true, '{12,13,14}');
INSERT INTO Student(s_id, s_name, s_surname, s_examination_score, ranking_of_student, s_position, s_pref)
VALUES(11,'John','Lennon',460.124,17.679, true, '{9,10,11}');

INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(1,1);
INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(1,2);
INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(1,3);
INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(2,2);
INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(2,3);
INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(2,4);
INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(3,1);
INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(3,2);
INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(3,3);
INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(4,1);
INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(4,2);
INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(4,7);
INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(5,5);
INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(5,7);
INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(5,8);
INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(6,4);
INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(6,8);
INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(6,3);
INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(7,6);
INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(7,4);
INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(7,7);
INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(8,6);
INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(8,2);
INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(8,5);
INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(9,9);
INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(9,10);
INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(9,12);
INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(10,12);
INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(10,13);
INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(10,14);
INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(11,9);
INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(11,10);
INSERT INTO Student_pref_Departments(s_id, d_id)
VALUES(11,11);


--question #1
SELECT u.u_name
FROM University u
WHERE lower(substr(u.u_name,1,1)) in ('i') AND u.u_year_of_foundation > 1990;

--question #2
SELECT DISTINCT u.*
FROM University u INNER JOIN Faculty f ON u.u_id = f.u_id
WHERE f.f_name='Engineering' OR f.f_name='Medicine';

--question #3
SELECT u.u_type, COUNT(*) AS count_of_faculties
FROM University u INNER JOIN Faculty f ON u.u_id = f.u_id
GROUP BY u.u_type;

--question #4
SELECT d.*
FROM Faculty f INNER JOIN Department d ON f.f_id = d.f_id
WHERE d.d_education_type='iö' AND f.f_name='Engineering';

--question #5
SELECT  *
FROM Department d
ORDER BY  d.d_education_period DESC, d.d_min_score DESC
LIMIT 5;

--question #6
SELECT d ,count(*) AS most_preferred
FROM Student s INNER JOIN Department d ON s.s_pref[1] = d.d_id OR s.s_pref[2] = d.d_id OR s.s_pref[3] = d.d_id
WHERE d.d_education_period=4
GROUP  BY d
ORDER  BY count(*) DESC;	

--question #7
SELECT s ,d.d_name AS department_name,s.s_examination_score AS score
FROM Student s INNER JOIN Department d ON s.s_pref[1] = d.d_id
WHERE d.d_name='Computer Engineering'
GROUP  BY s,d.d_name,s.s_examination_score
ORDER  BY s.s_examination_score DESC;

--question #8
UPDATE Faculty as h
SET u_id=(SELECT i.u_id FROM University i  WHERE i.u_name='Izmir Technical University')	
WHERE h.f_id=( SELECT h.f_id FROM Faculty h INNER JOIN University u ON h.u_id = u.u_id
				WHERE h.f_name='Engineering' AND u.u_name='Dokuz Eylül University'
			  )
RETURNING *;

--question #9

UPDATE Department as d
SET d_education_period=d.d_education_period+1
WHERE d.d_id=(SELECT d.d_id
	    	   FROM Department d INNER JOIN Faculty f ON d.f_id=f.f_id
			   WHERE f.f_name='Law'
			   LIMIT 1)		   
RETURNING *;

--question #10
DELETE FROM  Department d
WHERE d.f_id =(SELECT f.f_id
			   FROM Faculty f INNER JOIN University u ON f.u_id=u.u_id
			   WHERE u.u_name='Izmir University')
RETURNING *;

DELETE FROM Faculty f
WHERE f.f_id =(SELECT f.f_id
				FROM Faculty f INNER JOIN University u ON f.u_id=u.u_id
				WHERE u.u_name='Izmir University')
RETURNING *;














