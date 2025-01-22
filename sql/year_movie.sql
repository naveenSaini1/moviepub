create table public.year_movie
(
	year_movie_id serial primary key,
	movieid integer,
	yearid integer,
	creationDate TimeStamp DEFAULT CURRENT_TIMESTAMP,
	markfordelete INT DEFAULT 0 
)
