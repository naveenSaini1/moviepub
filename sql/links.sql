create table public.links(
	linkid serial Primary key,
	movieId Integer,
	name varchar(200),
	url  Text,
	creationDate TimeStamp DEFAULT CURRENT_TIMESTAMP,
	markfordelete INT DEFAULT 0 
	
)
