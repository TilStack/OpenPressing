PROMPT ******************* CREATE CLIENTS TABLES *****************

CREATE IF NOT EXISTS TABLE CLIENTS 
(
   ID_CLIENT            NUMBER(10),
   ID_PERSONNE          NUMBER(10)             
);


ALTER TABLE CLIENTS
ADD ( CONSTRAINT client_pk
        	 PRIMARY KEY (ID_CLIENT) 
    ) ;


ALTER TABLE CLIENTS
   ADD constraint FK_CLIENTS_REFERENCE_PERSONNE 
            FOREIGN KEY (ID_PERSONNE)
                REFERENCES PERSONNES (ID_PERSONNE);


