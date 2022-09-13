CREATE DATABASE well_read_db;

\c well_read_db

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username TEXT,
    password_digest TEXT,
    isAdmin BOOLEAN
);

CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title TEXT,
    author TEXT,
    image_url TEXT
);

CREATE TABLE stats (
    id SERIAL PRIMARY KEY,
    is_liked BOOLEAN,
    want_to_read BOOLEAN,
    is_recommended BOOLEAN
);

--Tables Created

-- need to make stats unique 
-- add books id and user id for many-many db connections