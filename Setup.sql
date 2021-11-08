--- Setup File for the University Accomodation Office DB

CREATE TABLE Program (
   program_number NUMBER(3),
   title VARCHAR(25),
   CONSTRAINT program_program_number_pk PRIMARY KEY (program_number)
);

CREATE TABLE Staff (
   staff_number NUMBER(10),
   name VARCHAR(50),
   address VARCHAR(100),
   phone_number NUMBER(10),
   date_of_birth DATE,
   sex VARCHAR(1),
   location VARCHAR(25),
   type VARCHAR(10),
   department VARCHAR(10),
   CONSTRAINT staff_staff_number_pk PRIMARY KEY (staff_number),
   CONSTRAINT staff_sex_cc CHECK (sex = 'M' OR sex = 'F'),
   CONSTRAINT staff_type_cc CHECK (type = 'Advisor' OR type = 'Manager' 
      OR type = 'Inspector' OR type = 'Assistant' OR type = 'Cleaner')
);

CREATE TABLE Student (
   matriculation NUMBER(10),
   name VARCHAR(50),
   address VARCHAR(100),
   date_of_birth DATE,
   category VARCHAR(10),
   smoker VARCHAR(3),
   sex VARCHAR(1),
   nationality VARCHAR(25),
   special_needs VARCHAR(500),
   comments VARCHAR(500),
   program_number NUMBER(3),
   advisor_number NUMBER(10),
   CONSTRAINT student_matriculation_pk PRIMARY KEY (matriculation),
   CONSTRAINT student_program_number_fk FOREIGN KEY (program_number) REFERENCES Program (program_number),
   CONSTRAINT student_advisor_number_fk FOREIGN KEY (advisor_number) REFERENCES Staff (staff_number),
   CONSTRAINT student_category_cc CHECK (category = '1UG' OR category = '2UG' OR category = '3UG' OR category = '4UG' OR category = 'PG' OR category = 'PHD'),
   CONSTRAINT student_smoker_cc CHECK (smoker = 'YES' OR smoker = 'NO'),
   CONSTRAINT student_sex_cc CHECK (sex = 'M' OR sex = 'F')
);

CREATE TABLE Property (
   property_number NUMBER(10),
   address VARCHAR(100),
   type VARCHAR(4),
   name Varchar(50),
   phone_number NUMBER(10),
   manager_number NUMBER(10),
   CONSTRAINT property_property_number_pk PRIMARY KEY (property_number),
   CONSTRAINT property_manager_number FOREIGN KEY (manager_number) REFERENCES Staff (staff_number),
   CONSTRAINT property_type_cc CHECK (type = 'Hall' OR type = 'Flat')
);

CREATE TABLE Room (
   place_number NUMBER(5),
   property_number NUMBER(10),
   room_number NUMBER(5),
   monthly_rent NUMBER(5,2),
   CONSTRAINT room_place_number_pk PRIMARY KEY (place_number),
   CONSTRAINT room_property_number_fk FOREIGN KEY (property_number) REFERENCES Property (property_number) 
);

CREATE TABLE Kin (
   name VARCHAR(50), 
   matriculation NUMBER(10),
   address VARCHAR(100),
   phone_number NUMBER(10),
   relationship VARCHAR(25),
   CONSTRAINT kin_name_matriculation_pk PRIMARY KEY (name, matriculation),
   CONSTRAINT kin_matriculation FOREIGN KEY (matriculation) REFERENCES Student (matriculation)
);

CREATE TABLE Lease (
   lease_number NUMBER(5),
   matriculation NUMBER(10),
   property_number NUMBER(10),
   place_number NUMBER(5),
   start_date DATE,
   end_date DATE,
   semester VARCHAR(10),
   CONSTRAINT lease_lease_number_pk PRIMARY KEY (lease_number),
   CONSTRAINT lease_matriculation_fk FOREIGN KEY (matriculation) REFERENCES Student (matriculation),
   CONSTRAINT lease_property_number_fk FOREIGN KEY (property_number) REFERENCES Property (property_number),
   CONSTRAINT lease_place_number_fk FOREIGN KEY (place_number) REFERENCES Room (place_number)
);

CREATE TABLE Waitlist(
   property_number NUMBER(10),
   matriculation NUMBER(10),
   date_waitlisted DATE,
   CONSTRAINT waitlist_property_number_pk PRIMARY KEY (property_number),
   CONSTRAINT waitlist_matriculation_fk FOREIGN KEY (matriculation) REFERENCES Student (matriculation),
   CONSTRAINT waitlist_property_number_fk FOREIGN KEY (property_number) REFERENCES Property (property_number)
);

CREATE TABLE Inspection (
   inspection_number NUMBER(10),
   inspection_date DATE,
   property_number NUMBER(10),
   place_number NUMBER(5),
   staff_number NUMBER(10),
   is_satisfactory VARCHAR(3),
   comments VARCHAR(500),
   CONSTRAINT inspection_inspection_no_pk PRIMARY KEY (inspection_number),
   CONSTRAINT inspection_property_number_fk FOREIGN KEY (property_number) REFERENCES Property (property_number),
   CONSTRAINT inspection_place_number_fk FOREIGN KEY (place_number) REFERENCES Room (place_number),
   CONSTRAINT inspection_staff_number_fk FOREIGN KEY (staff_number) REFERENCES Staff (staff_number),
   CONSTRAINT inspection_is_satisfactory_cc CHECK (is_satisfactory = 'Yes' OR is_satisfactory = 'No')
);
