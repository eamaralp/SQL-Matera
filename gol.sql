CREATE TABLE gol
(
  id_gol            NUMBER    NOT NULL,
  dh_jogo           DATE,
  id_jogo_jogador   NUMBER    NOT NULL
)

ALTER TABLE     gol
ADD CONSTRAINT  pk_gol 
PRIMARY KEY    (id_gol);

ALTER TABLE       gol
ADD CONSTRAINT    gol_jogo_jogador_FK 
FOREIGN KEY       (id_jogo_jogador) 
REFERENCES        jogo_jogador (id_jogo_jogador);


CREATE SEQUENCE seq_gol
MINVALUE 1   
MAXVALUE 999999999999999999999999
START WITH 1 
INCREMENT BY 1
NOCACHE;