DROP DATABASE IF EXISTS movies_db;
CREATE DATABASE movies_db;

USE movies_db;

CREATE TABLE movies (
    id INT NOT NULL AUTO_INCRIMENT,
    movie_name VARCHAR(100),
    PRIMARY KEY (id)
);

CREATE TABLE reviews (
    review_id INT NOT NULL AUTO_INCRIMENT,
    movie_id INT,
    review TEXT,
    FOREIGN KEY (movie_id)
    REFERENCES movies(id)
    ON DELETE SET NULL
);