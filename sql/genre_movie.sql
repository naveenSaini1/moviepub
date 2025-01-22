create table public.genre_movie
(
	genre_movie_id serial primary key,
	movieid integer,
	genreid integer,
	creationDate TimeStamp DEFAULT CURRENT_TIMESTAMP,
	markfordelete INT DEFAULT 0 
)
