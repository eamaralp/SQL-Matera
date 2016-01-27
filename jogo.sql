DROP TABLE jogo;
DROP SEQUENCE seq_jogo;


CREATE TABLE jogo
(
  id_jogo           NUMBER NOT NULL,
  id_local          NUMBER NOT NULL,
  id_visitante      NUMBER NOT NULL,
  placar_local      NUMBER NOT NULL,
  placar_visitante  NUMBER NOT NULL,
  dt_inicio         DATE,
  dt_fim            DATE
);

CREATE SEQUENCE seq_jogo
MINVALUE 1      MAXVALUE 1000000
START WITH 1    INCREMENT  BY 1
NOCACHE;

ALTER TABLE jogo ADD CONSTRAINT pk_id_jogo PRIMARY KEY (id_jogo);
ALTER TABLE jogo ADD CONSTRAINT fk_id_local FOREIGN KEY (id_local) REFERENCES equipe (id_equipe);
ALTER TABLE jogo ADD CONSTRAINT fk_id_visitante FOREIGN KEY (id_visitante) REFERENCES equipe (id_equipe);


