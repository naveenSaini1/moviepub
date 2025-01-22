CREATE TABLE public.collections
(
    collectionId serial Primary key ,
    name varchar(255),
	creationDate TimeStamp DEFAULT CURRENT_TIMESTAMP,
	markfordelete INT DEFAULT 0 
   
)
