-- Create the database
CREATE DATABASE sosh

-- Create the tables
CREATE TABLE statuses (
	id serial PRIMARY KEY,
	content VARCHAR (255) NOT NULL,
	createdAt VARCHAR (255) NOT NULL,
	user_id integer
	);

CREATE TABLE comments (
    id serial,
    content VARCHAR (255) NOT NULL,
    user_id integer NOT NULL,
    status_id integer NOT NULL
);

CREATE TABLE users (
    id serial,
    name VARCHAR (255) NOT NULL,
    company VARCHAR (255) NOT NULL,
    email VARCHAR (255) NOT NULL,
    phone VARCHAR (255) NOT NULL,
    address VARCHAR (255) NOT NULL,
    photo_url VARCHAR (255) NOT NULL,
    password VARCHAR (255) NOT NULL
);

CREATE TABLE friendRequests (
    id serial,
    requestorId integer,
    requesteeId integer,
    accepted boolean
);

CREATE TABLE messages (
    id serial,
    sender_id integer NOT NULL,
    recipient_id integer NOT NULL,
    body VARCHAR (255) NOT NULL,
    created_at VARCHAR (255) NOT NULL
);

-- Import data into tables
