create table public.collections_movie
(
	collection_movie_id serial primary key,
	movieid integer,
	collectionid integer,
	creationDate TimeStamp DEFAULT CURRENT_TIMESTAMP,
	markfordelete INT DEFAULT 0 
)
