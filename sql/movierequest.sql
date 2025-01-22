CREATE TABLE public.movierequest
(
    movieRequstId serial Primary key ,
    email varchar(200),
	message varchar(500),
	creationDate TimeStamp DEFAULT CURRENT_TIMESTAMP,
	markfordelete INT DEFAULT 0 
   
)

