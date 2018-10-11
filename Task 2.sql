--to create a database
CREATE DATABASE Dufuna_fem;

--this will create the first table 'tribe' in dufuna_fem
USE DATABASE Dufuna_fem
CREATE TABLE tribes (
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
hero_occupation VARCHAR(100) NOT NULL,
PRIMARY KEY (id),
);

--this will create the second table 'scholars' in dufuna_fem
CREATE TABLE scholars (
id INT NOT NULL AUTO_INCREMENT,
firstname VARCHAR(100) NOT NULL,
lastname VARCHAR(100) NOT NULL,
gender VARCHAR(40) NOT NULL,
tribe_id INT NOT NULL,
email_address VARCHAR(100) NOT NULL,
created_at TIMESTAMP,
PRIMARY KEY (id),
FOREIGN KEY (tribe_id) REFERENCES tribes (id)
);

--this will create the third table 'mentors' in dufuna_fem
CREATE TABLE mentors (
id INT NOT NULL AUTO_INCREMENT,
firstname VARCHAR(100) NOT NULL,
lastname VARCHAR(100) NOT NULL,s
gender VARCHAR(40) NOT NULL,
created_at TIMESTAMP,
tribe_id INT NOT NULL,
scholar_id INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (tribe_id) REFERENCES tribes (id)
);

--the next line of commands is to insert records into each tables
INSERT INTO tribes (id, name, hero_occupation)
VALUES ('', 'queen idia', 'Web developer');

INSERT INTO scholars (id, firstname, lastname, gender, tribe_id, email_address, created_at)
VALUES ('', 'Temitope', 'Kazeem' , 'F', '1', 'oluwatosintemitope@gmail.com', '');

INSERT INTO mentors (id, firstname, lastname, gender, created_at, tribe_id, scholar_id)
VALUES ('', 'Olawale', 'Lawal', 'M', '', '1', '1');

--this coomand selects record from the scholars table
SELECT firstname FROM scholars;

--this command update the record in the scholars table
UPDATE scholars SET email_address = temitope.oluwatosin@ymail.com
WHERE email_address = oluwatosintemitope@gmail.com;


--this command deletes record from the scholars tabless
DELETE FROM scholars WHERE lastname = Kazeem;

