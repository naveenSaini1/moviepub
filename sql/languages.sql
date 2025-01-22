CREATE TABLE public.languages
(
    languageid serial Primary key ,
    name character varying(255),
	creationDate TimeStamp DEFAULT CURRENT_TIMESTAMP,
	markfordelete INT DEFAULT 0 
   
)
