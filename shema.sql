CREATE TABLE actors (
	id SERIAL PRIMARY KEY,
	actor VARCHAR(255) NOT NULL 
);

CREATE TABLE countries (
	id SERIAL PRIMARY KEY, 
	country VARCHAR(255)
);

CREATE TABLE genres (
	id SERIAL PRIMARY KEY, 
	genre VARCHAR(255)
);

CREATE TABLE shows (
	show_id VARCHAR(255) NOT NULL PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	director VARCHAR(255) NOT NULL,
	rating VARCHAR(255) NOT NULL,
	type VARCHAR(255) NOT NULL,
	date_added VARCHAR(255) NOT NULL,
	year VARCHAR(255) NOT NULL, 
	description VARCHAR(255) NOT NULL
);
	
CREATE TABLE relations (
	show_id VARCHAR(255) NOT NULL,
	FOREIGN KEY (show_id) REFERENCES shows(show_id), 
	actor_id VARCHAR(255) NOT NULL,
	FOREIGN KEY (actor_id) REFERENCES actors(id),
	country_id NOT NULL, 
	FOREIGN KEY (country_id) REFERENCES countries(id),
	genre_id NOT NULL, 
	FOREIGN KEY (genre_id) REFERENCES genres(id)
);
	
	


	
