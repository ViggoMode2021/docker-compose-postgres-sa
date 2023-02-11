  -- Creation of schools table
CREATE TABLE IF NOT EXISTS schools (
  school_id SERIAL NOT NULL,
  school_city VARCHAR NOT NULL,
  school_name varchar(50) NOT NULL,
  school_address VARCHAR(120),
  school_phone VARCHAR(20),
  PRIMARY KEY (school_id)
);

INSERT INTO schools (school_city, school_name, school_address)
VALUES ('Bronx', 'Bronx 1 Middle School', '339 Morris Ave, FL 2, Bronx, NY 10451, United States'),
       ('Bronx', 'Bronx 1', '339 Morris Ave, FL 2, Bronx, NY 10451, United States'),
       ('Bronx', 'Bronx 2 Middle School', '270 East 167 Street, Floor 2, Bronx, NY 10456'),
       ('Bronx', 'Bronx 2', '450 St. Pauls Place, Floor 5, Bronx, NY 10456, United States'),
       ('Bronx', 'Bronx 3', '1000 Teller Ave, FL 4, Bronx, NY 10456, United States'),
       ('Bronx', 'Bronx 4', '1000 Teller Ave, FL 4, Bronx, NY 10456, United States'),
       ('Brooklyn', 'Bed-Stuy 1', '211 Throop Avenue, Floor 3, Brooklyn, NY 11206'),
       ('Manhattan', 'Hamilton Heights Middle School', '461 West 131st Street New York, NY 10027'),
       ('Queens', 'Far Rockaway', '10-45 Nameoke St, Floor 3, Queens, NY 11691');
       
-- Creation of teachers table
CREATE TABLE IF NOT EXISTS teachers (
  teacher_id SERIAL NOT NULL,
  teacher_name varchar(450) NOT NULL,
  PRIMARY KEY (teacher_id)
  CONSTRAINT fk_school
      FOREIGN KEY(school_id) 
	  REFERENCES schools(school_id)
);
