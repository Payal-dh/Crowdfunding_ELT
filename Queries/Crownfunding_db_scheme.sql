--Drop tables if they already exist
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS contacts;


--Create all the tables
CREATE TABLE category(
	category_id VARCHAR(10) PRIMARY KEY NOT NULL,
	category VARCHAR(50) NOT NULL
);

CREATE TABLE subcategory(
	subcategory_id VARCHAR(10) PRIMARY KEY NOT NULL,
	subcategory VARCHAR(50) NOT NULL
);

CREATE TABLE contacts(
	contact_id INTEGER PRIMARY KEY,
	first_name VARCHAR (20) NOT NULL,
	last_name VARCHAR (20) NOT NULL,
	email VARCHAR (60) NOT NULL
);

CREATE TABLE campaign(
	cf_id INTEGER PRIMARY KEY NOT NULL,
	contact_id INTEGER,
	company_name VARCHAR(50),
	description VARCHAR NOT NULL,
	goal FLOAT,
	pledged FLOAT,
	outcome VARCHAR (15) NOT NULL,
	backers_count INTEGER,
	country VARCHAR (10) NOT NULL,
	currency VARCHAR (10) NOT NULL,
	launched_date DATE,
	end_date DATE,
	category_id VARCHAR (10) NOT NULL,
	subcategory_id VARCHAR (10) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

--Check created tables and After importing the data, show the tables
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;
SELECT * FROM campaign;
