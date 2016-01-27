CREATE TABLE jogo_cartao_jogador
(
  id_jogo_cartao_jogador  NUMBER    NOT NULL,
  dh_penalidade           VARCHAR2(200),
  id_cartao               NUMBER    NOT NULL,
  id_jogo_jogador         NUMBER    NOT NULL
);

ALTER TABLE     jogo_cartao_jogador
ADD CONSTRAINT  pk_jogo_cartao_jogador 
PRIMARY KEY    (id_jogo_cartao_jogador);

ALTER TABLE       jogo_cartao_jogador
ADD CONSTRAINT    jogojcartaojogador_cartao_FK 
FOREIGN KEY       (id_cartao) 
REFERENCES        cartao (id_cartao);

ALTER TABLE       jogo_cartao_jogador
ADD CONSTRAINT    jogocartajog_jogojogador_FK 
FOREIGN KEY       (id_jogo_jogador) 
REFERENCES        jogo_jogador (id_jogo_jogador);


CREATE SEQUENCE seq_jogo_cartao_jogador
MINVALUE 1   
MAXVALUE 999999999999999999999999
START WITH 1 
INCREMENT BY 1
NOCACHE;