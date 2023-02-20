--Жанры
INSERT INTO genre (id, genre_name)
VALUES 
	(1, 'k-pop'),
	(2, 'джаз'),
	(3, 'рок'),
	(4, 'поп'),
	(5, 'блюз');

--Исполнители
INSERT INTO singers (singer_name)
VALUES 
	('BTS'),
	('Леди Гага'),
	('The Beatles'),
	('Rival Sons'),
	('Etta James'),
	('Louis Armstrong'),
	('John Coltrane'),
	('Francis Sinatra'),
	('Coldplay');

-- Жанры и исполнители
INSERT INTO list_genres (genre_id, singer_id)
VALUES 
	(1, 1),
	(2, 6),
	(2, 8),
	(3, 3),
	(3, 9),
	(4, 9),
	(4, 2),
	(5, 5),
	(5, 4),
	(3, 4);

-- Альбомы
INSERT INTO albums (id, track_name, release_date)
VALUES 
	(1, 'Music of the Spheres', 2021),
	(2, 'PROOF', 2022),
	(3, 'The World We Knew', 1967),
	(4, 'My Favorite Things', 1961),
	(5, 'The Fame', 2008),
	(6, 'What A Wonderful World', 1968),
	(7, 'Before the Fire', 2009),
	(8, 'Abbey Road', 1969),
	(9, 'At Last!', 1960);

-- Адьбомы и исполнители
INSERT INTO list_albums (id, singer_id, album_id)
VALUES 
	(1, 1, 2),
	(2, 2, 5),
	(3, 3, 8),
	(4, 4, 7),
	(5, 5, 9),
	(6, 6, 6),
	(7, 7, 3),
	(8, 8, 4),
	(9, 9, 1),
	(10, 1, 1);

--Композиции
INSERT INTO tracks (id, track_name, album_id, duration)
VALUES (
	1, 'At Last', 9, 2.59),
	(2, 'RUN', 2, 3.57),
	(3, 'Trivia 轉 : Seesaw', 2, 4.06),
	(4, 'I NEED U', 2, 3.31),
	(5, 'IDOL', 2, 3.43),
	(6, 'N.O.', 2, 3.30),
	(7, 'DNA', 2, 3.43),
	(8, 'Young Forever', 2, 2.51),
	(9, 'Singularity', 2, 3.17),
	(10, 'My Universe', 1, 3.46),
	(11, 'Music of the Spheres', 1, 0.53),
	(12, 'The World We Knew (Over and Over)', 3, 2.45),
	(13, 'Every Time We Say Goodbye', 4, 5.40),
	(14, 'Just Dance', 5, 4.04),
	(15, 'What A Wonderful World', 6, 2.19),
	(16, 'Tell me something', 7, 4.06),
	(17, 'Come Together', 8, 4.19),
	(18, 'Higher Power', 1, 3.26); 

-- Сборники
INSERT INTO collection (collection_name, release_date)
VALUES 
	('LOVE YOURSELF Answer', 2018),
	('The most beautiful moment in life : Young Forever', 2016),
	('2 Cool 4 Skool / O!RUL8,2?', 2014),
	('Just Dance', 2008),
	('Abbey Road (Remastered)', 1969),
	('My Favorite Things (Deluxe Edition)', 1961),
	('Higher Power (Acoustic Version)', 2021),
	('Ultimate Sinatra: Столетняя коллекция', 2015),
	('My Universe (SUGAs Remix)', 2021);
	
-- Сбоники и треки
INSERT INTO collection_tracks (еrack_шв, сollection_id)
VALUES 
	(2, 1),
	(2, 2),
	(3, 1),
	(3, 2),
	(4, 3),
	(5, 2),
	(6, 3),
	(7, 2),
	(7, 1),
	(8, 2),
	(9, 1),
	(10, 9),
	(11, 7),
	(12, 8),
	(13, 6),
	(14, 4),
	(17, 5),
	(18, 7);
