--Insertion File for the University Accomodation Office DB

--PROGRAM

INSERT INTO Program(program_number,title) values (181,'Computer Science');
INSERT INTO Program(program_number,title) values (180,'Arts');
INSERT INTO Program(program_number,title) values (170,'Accounting');
INSERT INTO Program(program_number,title) values (160,'Software Engeneering');

--STAFF

INSERT INTO Staff(staff_number,name,address,phone_number,date_of_birth,sex,location,type,department)
values(64578567,'Cyrus Lin','48 89th Ave, Vancouver, BC',7786913579,TO_DATE('1984/05/09','YYYY/MM/DD'),'M','B236','Advisor','Office');

INSERT INTO Staff(staff_number,name,address,phone_number,date_of_birth,sex,location,type,department)
values(64578588,'Felipe Costa','855 Main St, Vancouver, BC',7786936579,TO_DATE('1988/05/09','YYYY/MM/DD'),'M','A236','Advisor','Account');

INSERT INTO Staff(staff_number,name,address,phone_number,date_of_birth,sex,location,type,department)
values(64578552,'Joseph Moon','485 Commercial Broadway, Vancouver, BC',NULL,TO_DATE('1981/09/09','YYYY/MM/DD'),'M','C236','Manager','Marketing');

INSERT INTO Staff(staff_number,name,address,phone_number,date_of_birth,sex,location,type,department)
values(64578555,'Arthur Muzel','48 89th Ave, Vancouver, BC',NULL,TO_DATE('1964/08/09','YYYY/MM/DD'),'M','A136','Manager','Management');

INSERT INTO Staff(staff_number,name,address,phone_number,date_of_birth,sex,location,type,department)
values(64578548,'Rio Morimoto','895 17th Ave, Vancouver, BC',NULL,TO_DATE('1978/05/09','YYYY/MM/DD'),'M','C36','Inspector','Office');

--STUDENT

INSERT INTO Student(matriculation, name, address, date_of_birth, category,smoker,sex,nationality,special_needs,comments,program_number,advisor_number)
values (102368895,'Vitor Silva Lima','66752 Oak St, Vancouver, BC',TO_DATE('1994/05/09','YYYY/MM/DD'),'PHD','NO','M','Brazilian','He needs a confortable bed','He wants to have a roomate with the same age',181,64578567);

INSERT INTO Student(matriculation, name, address, date_of_birth, category,smoker,sex,nationality,special_needs,comments,program_number,advisor_number)
values (102368896,'Joshua Leung','667 49th Ave, Vancouver, BC',TO_DATE('1994/08/22','YYYY/MM/DD'),'PHD','YES','M','Korean','A desk','He is new at the school',180,64578588);

INSERT INTO Student(matriculation, name, address, date_of_birth, category,smoker,sex,nationality,special_needs,comments,program_number,advisor_number)
values (102368894,'Gabriel Herderson','678 Granville St, Vancouver, BC',TO_DATE('1993/02/09','YYYY/MM/DD'),'1UG','YES','M','Canadian','He may need a desk a small place for books',NULL,180,64578588);

INSERT INTO Student(matriculation, name, address, date_of_birth, category,smoker,sex,nationality,special_needs,comments,program_number,advisor_number)
values (102368891,'Caroline Rodrigues','485 41st Ave, Vancouver, BC',TO_DATE('1989/02/12','YYYY/MM/DD'),'PG','YES','F','Brazilian',NULL,'She wants to have a female roomate',160,64578567);

INSERT INTO Student(matriculation, name, address, date_of_birth, category,smoker,sex,nationality,special_needs,comments,program_number,advisor_number)
values (102368892,'Rosa Maria Araujo','48 51st Ave, Vancouver, BC',TO_DATE('1956/05/09','YYYY/MM/DD'),'PHD','YES','F','Portuguese','King size bed',NULL,160,64578567);


--PROPERTY

INSERT INTO Property(property_number,address,type,name,phone_number,manager_number)
values(1001,'51st Ave, Vancouver, BC','Hall','The Hall', 7786913579,64578552);
INSERT INTO Property(property_number,address,type,name,phone_number,manager_number)
values(1002,'41st Ave, Vancouver, BC','Hall','The Hall', 7786323579,64578552);
INSERT INTO Property(property_number,address,type,name,phone_number,manager_number)
values(2001,'31st Ave, Vancouver, BC','Flat',NULL, 7785413579,64578555);
INSERT INTO Property(property_number,address,type,name,phone_number,manager_number)
values(1004,'98th Ave, Vancouver, BC','Flat',NULL, 7786913479,64578552);
INSERT INTO Property(property_number,address,type,name,phone_number,manager_number)
values(3000,'54th Ave, Vancouver, BC','Hall','Great Hall', 7786543579,64578555);

--ROOM

INSERT INTO Room VALUES (1, 1001, 3, 400.00);
INSERT INTO Room VALUES (2, 1001, 5, 400.00);
INSERT INTO Room VALUES (3, 1002, 4, 550.00);
INSERT INTO Room VALUES (4, 2001, 1, 450.00);
INSERT INTO Room VALUES (5, 1004, 3, 400.00);

--KIN

INSERT INTO Kin VALUES ('Sheldon Cooper', 102368895, '1238, 8 Ave, Vancouver, BC, CA, V8N 6T2', 7788291382, 'Father');
INSERT INTO Kin VALUES ('Jesse Cyrus', 102368896, '3252, 41 St, Vancouver, BC, CA, N4H 8I2', 7782346382, 'Mother');
INSERT INTO Kin VALUES ('Thomas M. Eudy', 102368894, '1264, 53 St, Vancouver, BC, CA, N3D 2F8', 7788247434, 'Brother');
INSERT INTO Kin VALUES ('Jacob Median', 102368891, '1062, 12 Ave, Vancouver, BC, CA, L2D 7A3', 7788378251, 'Father');
INSERT INTO Kin VALUES ('Isabella Chamber', 102368892, '2314, 23 Ave, Vancouver, BC, CA, L3A 2F8', 7786339351, 'Sister');

--LEASE

INSERT INTO Lease VALUES (23182, 102368892, 1001, 1, TO_DATE('2011/03/14', 'YYYY/MM/DD'), TO_DATE('2012/03/14', 'YYYY/MM/DD'), 'Spring');
INSERT INTO Lease VALUES (23422, 102368891, 1002, 2, TO_DATE('2011/04/14', 'YYYY/MM/DD'), TO_DATE('2012/04/14', 'YYYY/MM/DD'), 'Spring');
INSERT INTO Lease VALUES (23522, 102368894, 1002, 3, TO_DATE('2012/04/14', 'YYYY/MM/DD'), TO_DATE('2013/04/14', 'YYYY/MM/DD'), 'Spring');
INSERT INTO Lease VALUES (24522, 102368896, 2001, 5, TO_DATE('2012/09/14', 'YYYY/MM/DD'), TO_DATE('2013/09/14', 'YYYY/MM/DD'), 'Fall');
INSERT INTO Lease VALUES (25522, 102368895, 1004, 4, TO_DATE('2012/10/14', 'YYYY/MM/DD'), TO_DATE('2013/10/14', 'YYYY/MM/DD'), 'Fall');

--WAITLIST

INSERT INTO Waitlist VALUES ( 1001, 102368894, TO_DATE('2012/4/14', 'YYYY/MM/DD'));
INSERT INTO Waitlist VALUES ( 1002, 102368895, TO_DATE('2010/10/14', 'YYYY/MM/DD'));
INSERT INTO Waitlist VALUES ( 2001, 102368891, TO_DATE('2011/10/14', 'YYYY/MM/DD'));
INSERT INTO Waitlist VALUES ( 1004, 102368896, TO_DATE('2011/10/14', 'YYYY/MM/DD'));
INSERT INTO Waitlist VALUES ( 3000, 102368895, TO_DATE('2012/10/14', 'YYYY/MM/DD'));

--INSPECTION

INSERT INTO Inspection VALUES ( 1, TO_DATE('2012/10/14', 'YYYY/MM/DD'), 1001, 1, 64578567, 'Yes', 'N/A');
INSERT INTO Inspection VALUES ( 2, TO_DATE('2012/12/14', 'YYYY/MM/DD'), 1002, 2, 64578548, 'Yes', 'N/A');
INSERT INTO Inspection VALUES ( 3, TO_DATE('2012/11/23', 'YYYY/MM/DD'), 1002, 1, 64578567, 'No', 'Very Dirty');
INSERT INTO Inspection VALUES ( 4, TO_DATE('2012/10/14', 'YYYY/MM/DD'), 2001, 3, 64578555, 'Yes', 'N/A');
INSERT INTO Inspection VALUES ( 5, TO_DATE('2012/10/14', 'YYYY/MM/DD'), 1004, 4, 64578548, 'Yes', 'Very Clean');
