create table public.language_movie
(
	language_movie_id serial primary key,
	movieid integer,
	languageid integer,
	creationDate TimeStamp DEFAULT CURRENT_TIMESTAMP,
	markfordelete INT DEFAULT 0 
)
