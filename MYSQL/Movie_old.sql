CREATE DATABASE movie_recommendation;
USE movie_recommendation;


CREATE TABLE movies (
  movie_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  genre VARCHAR(255)
);

INSERT INTO movies (title, genre) VALUES
('Inception', 'Sci-Fi'),
('Interstellar', 'Sci-Fi'),
('The Dark Knight', 'Action'),
('Avengers', 'Action'),
('Titanic', 'Romance'),
('La La Land', 'Romance'),
('Joker', 'Drama'),
('Parasite', 'Thriller'),
('Interstellar', 'Sci-Fi'),
('The Dark Knight', 'Action'),
('Avengers', 'Action'),
('Titanic', 'Romance'),
('La La Land', 'Romance'),
('Iron Man', 'Action'),
('The Notebook', 'Romance');