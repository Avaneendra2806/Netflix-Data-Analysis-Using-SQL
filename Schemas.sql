-- Creating database for netflix Data Analysis
create database netflix_db;
use netflix_db;

CREATE TABLE netflix_titles (
    show_id VARCHAR(10) PRIMARY KEY,
    type VARCHAR(20) NOT NULL,
    title VARCHAR(255) NOT NULL,
    director VARCHAR(255),
    cast TEXT,
    country VARCHAR(255),
    date_added VARCHAR(50),
    release_year INT NOT NULL,
    rating VARCHAR(20),
    duration VARCHAR(50),
    listed_in VARCHAR(255)
);











