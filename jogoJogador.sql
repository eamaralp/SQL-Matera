CREATE TABLE jogo_jogador
(
  id_jogo_jogador  NUMBER    NOT NULL,
  id_jogo          NUMBER    NOT NULL,
  id_jogador       NUMBER    NOT NULL
);

ALTER TABLE     jogo_jogador 
ADD CONSTRAINT  pk_jogo_jogador 
PRIMARY KEY    (id_jogo_jogador);

ALTER TABLE       jogo_jogador 
ADD CONSTRAINT    fk_jogo_jogador_jogo 
FOREIGN KEY       (id_jogo) 
REFERENCES        jogo (id_jogo);

ALTER TABLE       jogo_jogador 
ADD CONSTRAINT    fk_jogo_jogador_jogador 
FOREIGN KEY       (id_jogador) 
REFERENCES        jogador (id_jogador);


CREATE SEQUENCE seq_jogo_jogador
MINVALUE 1   
MAXVALUE 999999999999999999999999
START WITH 1 
INCREMENT BY 1
NOCACHE;