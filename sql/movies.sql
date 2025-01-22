CREATE TABLE public.movie
(
    movieid serial Primary key,
    title varchar(500),
    keywords varchar(500),
    downloadname varchar(500),
	slug varchar(200),
	imageurl varchar(300),
	smallDescription varchar(500),
	duration varchar(300),
	releaseDate varchar(200),
	bigDescription TEXT,
    downloadcount integer DEFAULT 0,
	casts varchar(500),
	creationDate TimeStamp DEFAULT CURRENT_TIMESTAMP,
	markfordelete INT DEFAULT 0 
   
)

