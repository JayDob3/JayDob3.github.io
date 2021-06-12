/* Janera Dobson
* Southern New Hampshire University
* Milestone Four: Enhancement Three: Databases
* CS-499-T5477
*/

DROP DATABASE IF EXISTS 'messaging';
CREATE DATABASE 'messaging'; 
USE 'messaging';

# Create Users
CREATE USER eko
IDENTIFIED BY 'vibcasub86y90';

CREATE USER jaydob
IDENTIFIED BY 'bbcjan75647bkjgk';

# View Users
SELECT * FROM messaging.user;

# Reset password
SET PASSWORD FOR jaydob = 'gubjk6r679jd'

# Grant read and write priveleges to jaydob
GRANT SELECT, INSERT, UPDATE, DELETE, EXECUTE
ON messaging.*
TO jaydob

# Grant eko view priveleges
GRANT CREATE VIEW
ON *.*
TO eko;

# Revoke eko's priveleges because she shouldn't be able to see entire database
REVOKE CREATE VIEW
ON *.*
FROM eko;


/*Reconstructed Messaging Database from DAD220 Codio Assignment */
CREATE TABLE person(
	person_id INT(8) UNSIGNED NOT NULL auto_increment,
    first_name VARCHAR(25) NOT NULL,
	last_name VARCHAR(25) NOT NULL,
    PRIMARY KEY (person_id)
) AUTO_INCREMENT=1;

CREATE TABLE contact_list ( 
    connection_id INT(8) UNSIGNED NOT NULL auto_increment,
    person_id INT(8) NOT NULL,
	contact_id INT(8) NOT NULL,
    PRIMARY KEY (connection_id)
) AUTO_INCREMENT=1;

CREATE TABLE message ( 
    message_id INT(8) UNSIGNED NOT NULL auto_increment,
    sender_id INT(8) NOT NULL,
	receiver_id INT(8) NOT NULL,
	message VARCHAR(255) NOT NULL,
	send_datetime datetime,
    PRIMARY KEY (message_id)
) AUTO_INCREMENT=1;


# Select database
USE messaging;

# Display tabless and columns
SHOW TABLE FROM messaging;
SHOW COLUMNS FROM person;
SHOW COLUMNS FROM contact_list;
SHOW COLUMNS FROM message;

# Task 1: Insert Record to the Person Table 

/* Construct the SQL statement to add yourself to the Person 
table. Note: You are required to add yourself as a new record 
n the “person” table. Use your first name and last name for one
f the new records that you are inserting. 

Update: include new value called age and add additional persons

*/

SELECT * FROM person;

INSERT INTO messaging.person (first_name, last_name, age)
VALUES
	("Michael", "Phelps", "36"),
	("Katie", "Ledecky", "30"),
	("Usain", "Bolt", "33"),
	("Allyson", "Feliix", "31"),
	("Kevin", "Durant", "32"),
	("Diana", "Turasi", "28"),
	("Janera", "Dobson", "34"),
	("Ashley", "Dobson", "29"),
	("Diandre", "Figueroa", "12")
;

# Task 2: Alter the Person Table

/* Construct the SQL statement to alter the table named
 “person”. The columns, column data types, and column notes 
 are provided in the previous section. You need to alter the 
 table to include an additional column of your choice. This column 
 should represent some property of a person. You can choose the data 
 type for the column and any constraints on the column. 

 Update: Show all columns now "age" has been added
 */

 SELECT * FROM

ALTER TABLE messaging.person 
ADD age VARCHAR(3) NOT NULL;

SHOW COLUMNS FROM messaging.person;

# Task 3: Update Records in Person Table

/* Construct the SQL statement to update the existing record in 
the “person” table to use the new column that you created. Update 
your record (the record with your first and last name) in the Person 
table by setting some value to your new property. 

Update: Show person table to verify Michael Phelps been updated
*/

SELECT * FROM messaging.person;   

UPDATE messaging.person 
SET age = '38' 
WHERE 
	person.first_name = "Michael"
AND 
	person.last_name = "Phelps";

SHOW TABLE FROM meassaging.person;

# Task 4: Delete Records from Person Table

/* Construct the SQL statement to delete the record(s) from 
the “person” table where the first name is “Diana” and the 
last name is “Taurasi.” 

Update: Show person table to verify Diana Taurasi has been deleted
*/

DELETE FROM messaging.person

WHERE person_id = 6;

SHOW TABLE FROM meassaging.person;

# Task 5: Alter the Contact List Table 

/* Construct the SQL statement to alter the table named “contact_list”. 
The columns, column data types, and column notes are provided in the previous 
section. You need to alter the table to include an additional column named 
“favorite” with a data type of “varchar(10)”. This column is not required.
*/

SHOW COLUMNS FROM messaging.contact_list;

ALTER TABLE messaging.contact_list 

ADD favorite VARCHAR(10) DEFAULT NULL
;

# Task 6: Update Records in the Contact List Table 

/* Construct the SQL statement to update the existing records in the 
“contact_list” table to use the new column that you created. Update 
the record(s) in the table by setting Michael Phelps as everyone's 
favorite contact (contact_id = 1). The value for the “favorite” column 
should be set to “y” for these records.
*/

SELECT * FROM messaging.contact_list;

UPDATE messaging.contact_list
SET favorite = "y"
WHERE contact_list.contact_id = 1
;

# Task 7: Update Records in the Contact List Table 

/* Construct the SQL statement to update the existing records in the 
“contact_list” table to use the new column that you created. Update 
the remaining record(s) in the table by setting every contact who is 
NOT Michael Phelps (contact_id <> 1) to not be a favorite. The value 
for the “favorite” column should be set to “n” for these records. 
*/

SELECT * FROM messaging.contact_list;

UPDATE messaging.contact_list
SET favorite = "n"
WHERE contact_list.contact_id <> 1
;

SELECT * FROM messaging.contact_list; # To verify newly updated contact_list 

# Task 8: Insert Records to Contact List Table 

/* Construct the SQL statement to insert at least 3 new records in the “contact_list” 
table. Make sure that you use the new column that you created in the previous step. 
Note: You are required to add at least 3 new records with yourself as a new contact 
in the “contact_list” table. Make sure that you provide a value (y or n) for the new 
“favorite” column. 

Update: Use advance query to createa csv file containing data 
*/

# Retrieve Janera Dobson from person_id
SELECT * FROM messaging.person; 

INSERT INTO	messaging.contact_list (connection_id, person_id, contact_id, favorite)
VALUES
	("15", "7", "7", "y"),
	("16", "8", "8", "y"),
	("17", "9", "9", "y")
;

# To verify my work
SELECT * FROM messaging.contact_list;

# Create csv file
LOAD DATA LOCAL INFILE 'C:\ProgramData\MySQL\MySQL Server 8.0\Uploads\contact_list.csv'

.headers on
.mode csv
.output data.csv
SELECT connection_id,
		person_id,
		contact_id,
		favorite
FROM messaging.contact_list;
.quit

# Task 9: Create the Image Table 

/* Construct the SQL statement to create a table named “image”. 
The columns, column data types, and column notes are provided here. 
Create the “image” table according to these specifications. 
*/

SHOW TABLES;

CREATE TABLE 
	image ( 
    image_id INT(8) NOT NULL auto_increment,
    image_name VARCHAR(50) NOT NULL,
	image_location VARCHAR(250) NOT NULL,
    PRIMARY KEY (image_id)
) AUTO_INCREMENT=1
;

#Display Tables in messaging
SHOW TABLES;

# Task 10: Create the Message-Image Intersection Table 

/* Construct the SQL statement to create an intersection table named
 “message_image”. The columns, column data types, and column notes are 
 provided here. Create the “message_image” table according to these 
 specifications. 
*/

SHOW TABLES;

CREATE TABLE 
	message_image ( 
    message_id INT(8) NOT NULL,
    image_id INT(8) NOT NULL,
PRIMARY KEY (message_id, image_id),
FOREIGN KEY (image_id) REFERENCES image(image_id)	
);

# Display columns from image table
SHOW COLUMNS FROM messaging.message_image;

# Task 11: Insert Records to Image Table 

/* Construct the SQL statement to insert 5 new records in the “image” table. */

SELECT * FROM messaging.image;

INSERT INTO
	messaging.image (image_name, image_location)
VALUES
	("cat", "window"),
	("dog", "bed"),
	("balloon", "store"),
	("car", "“garage”"),
	("computer", "library")
;

# To verify image table
SELECT * FROM messaging.image; 

# Task 12: Insert Records to Message-Image Table 

/* Construct the SQL statement to insert 5 new records in the “message_image”
intersection table. Note: You are required to add at least one record where at
least one of Michael Phelp's messages includes at least one image. Also, you 
are required to add at least one message that has multiple images.
*/

SELECT * FROM messaging.message_image;

INSERT INTO
	messaging.message_image (message_id, image_id)
VALUES
	("1", "1"),
	("3", "5"),
	("5", "3"),
	("2", "2"),
	("4", "4,5")
;

#Verified my insert
SELECT * FROM messaging.message_image;

# Task 13: Find All of the Messages that Michael Phelps Sent

/* Construct the SQL statement to find all of the messages that Michael Phelps sent. 
Note: You must use the WHERE clause to set the conditions for this query. 
Display the following columns: 
- Sender's first name
- Sender's last name
- Receiver's first name - Receiver's last name - Message ID
- Message
- Message Timestamp 
*/

SELECT 
	pSender.first_name AS "Sender First Name",
	pSender.last_name AS "Sender Last Name", 
	pReceiver.first_name AS "Receiver First Name", 
	pReceiver.last_name AS "Receiver Last Name", 
	meassaging.message_id AS "Message ID", 
	meassaging.message AS "Message",
	meassaging.send_datetime AS "Message Timestamp"
FROM 
	messaging.message
JOIN 
	pSender.person_id  = meassaging.sender_id
AND 
	pReceiver.person_id = meassaging.receiver_id
WHERE
	sender_id = 1; 

# Task 14: Find the Number of Messages Sent for Every Person

/*Construct the SQL statement to find the number of messages sent for every person. 
Note: You must use the WHERE clause to set the conditions for this query. 
Display the following columns: 
- Count of messages - Person ID
- First Name
- Last Name 
*/

SELECT 
	COUNT(*) AS "Count of Messages",
	person.person_id AS "Person ID",
	person.first_name AS "Sender First Name",
	person.last_name AS "Sender Last Name"
FROM 
	messaging.message
JOIN
	messaging.person
WHERE 
	messaging.message_id = person.person_id
GROUP BY 
	person.person_id, person.first_name, person.last_name;

# Task 15: Find All of the Messages that Have At Least One Image Attached Using INNER JOINs 

/*Construct the SQL statement to find all of the messages that have at least one image attached 
using INNER JOINs. Note: For messages with multiple images, display only the first image for the 
message. Display the following columns: 
- Message ID
- Message
- Message Timestamp - First Image Name
- First Image Location 
*/


SELECT
	messaging.message_id AS "Message ID", 
	messaging.message AS "Message",
	messaging.send_datetime AS "Message Timestamp",
	messaging.image_name AS "Image Name",
	messaging.image_location AS "Image Location"
FROM
	messaging.message
INNER JOIN 
	messaging.message_image
ON
	messaging.message_id = messaging.image_id 
INNER JOIN
	messaging.image
ON
	messaging.image_id = messaging.image_id
GROUP BY 
	messaging.message_id;


