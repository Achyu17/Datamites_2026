CREATE DATABASE IF NOT EXISTS movie_recommendation;
USE movie_recommendation;

DROP TABLE IF EXISTS user_ratings;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS movies;


CREATE TABLE movies (
  movie_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  genre VARCHAR(255),
  release_year INT,
  description TEXT,
  poster_url VARCHAR(500),
  avg_rating DECIMAL(3,2) DEFAULT NULL
);

CREATE TABLE users (
  user_id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(100) NOT NULL UNIQUE
);


CREATE TABLE user_ratings (
  rating_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  movie_id INT NOT NULL,
  rating FLOAT CHECK (rating BETWEEN 0 AND 5),
  rated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);


INSERT INTO users (username) VALUES ('alice'), ('bob'), ('charlie');


INSERT INTO movies (title, genre, release_year, description, poster_url, avg_rating) VALUES
('Inception', 'Sci-Fi', 2010, 'A thief who enters people''s dreams to steal secrets.', 'https://image.tmdb.org/t/p/w500/qmDpIHrmpJINaRKAfWQfftjCdyi.jpg', 8.8),
('Interstellar', 'Sci-Fi', 2014, 'A team of explorers travel through a wormhole in space.', 'https://image.tmdb.org/t/p/w500/rAiYTfKGqDCRIIqo664sY9XZIvQ.jpg', 8.6),
('The Dark Knight', 'Action', 2008, 'Batman faces the Joker.', 'https://image.tmdb.org/t/p/w500/qJ2tW6WMUDux911r6m7haRef0WH.jpg', 9.0),
('Avengers', 'Action', 2012, 'Earth''s mightiest heroes come together.', 'https://image.tmdb.org/t/p/w500/RYMX2wcKCBAr24UyPD7xwmjaTn.jpg', 8.0),
('Titanic', 'Romance', 1997, 'A love story aboard the ill-fated ship.', 'https://image.tmdb.org/t/p/w500/kHXEpyfl6zqn8a6YuozZUujufXf.jpg', 7.8),
('La La Land', 'Romance', 2016, 'A jazz pianist falls for an aspiring actress.', 'https://image.tmdb.org/t/p/w500/uDO8zWDhfWwoFdKS4fzkUJt0Rf0.jpg', 8.0),
('Joker', 'Drama', 2019, 'A gritty character study of a man disregarded by society.', 'https://image.tmdb.org/t/p/w500/udDclJoHjfjb8Ekgsd4FDteOkCU.jpg', 8.5),
('Parasite', 'Thriller', 2019, 'A poor family schemes to work for a wealthy family.', 'https://image.tmdb.org/t/p/w500/7IiTTgloJzvGI1TAYymCfbfl3vT.jpg', 8.6),
('Iron Man', 'Action', 2008, 'A billionaire becomes the armored superhero.', 'https://image.tmdb.org/t/p/w500/78lPtwv72eTNqFW9COBYI0dWDJa.jpg', 7.9),
('The Notebook', 'Romance', 2004, 'A romantic drama about love and memory.', 'https://image.tmdb.org/t/p/w500/l1yltvzILaZcx2jYvcZ3Y0ZCb6k.jpg', 7.8);