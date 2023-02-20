CREATE TABLE IF NOT EXISTS genre (
	genre_id SERIAL PRIMARY KEY,
	genre_name VARCHAR(60) NOT null
);

CREATE TABLE IF NOT EXISTS singers (
	singer_id SERIAL PRIMARY KEY,
	singer_name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS list_genres (
	ID SERIAL PRIMARY KEY,
	genre_ID INTEGER NOT NULL REFERENCES genre(genre_id),
	singer_ID INTEGER NOT NULL REFERENCES singers(singer_id)
);

CREATE TABLE IF NOT EXISTS albums (
	album_ID SERIAL PRIMARY KEY,
	album_name VARCHAR(60) NOT NULL,
	release_date INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS list_albums (
	ID SERIAL PRIMARY KEY,
	singer_id INTEGER NOT NULL REFERENCES singers(singer_id),
	album_id INTEGER NOT NULL REFERENCES albums(album_id)
);

CREATE TABLE IF NOT EXISTS tracks (
	track_id SERIAL PRIMARY KEY,
	track_name VARCHAR(60) NOT NULL,
	album_id INTEGER NOT NULL REFERENCES albums(album_id),
	duration NUMERIC	
);

CREATE TABLE IF NOT EXISTS collection (
	collection_id SERIAL PRIMARY KEY,
	collection_name VARCHAR(60) NOT NULL,
	release_date INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS collection_tracks (
	ID SERIAL PRIMARY KEY,
	track_id INTEGER NOT NULL REFERENCES tracks(track_id),
	collection_id INTEGER NOT NULL REFERENCES collection(collection_id)
);

