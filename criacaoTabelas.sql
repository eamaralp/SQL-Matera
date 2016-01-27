DROP TABLE jogador;
DROP TABLE tecnico;
DROP TABLE equipe;
DROP SEQUENCE seq_equipe;
DROP SEQUENCE seq_tecnico;
DROP SEQUENCE seq_jogador;

--Ciação da tabela equipe

CREATE TABLE equipe
(
  id_equipe NUMBER NOT NULL,
  nome VARCHAR2(400) NOT NULL
);

ALTER TABLE equipe ADD CONSTRAINT pk_id_equipe PRIMARY KEY (id_equipe);

CREATE SEQUENCE seq_equipe
MINVALUE 1   
MAXVALUE 999999999999999999999999
START WITH 1 
INCREMENT BY 1
NOCACHE;

--Ciação da tabela jogador

CREATE TABLE jogador
(
  id_jogador NUMBER NOT NULL,
  nome VARCHAR2(400) NOT NULL,
  dt_nascimento DATE NOT NULL,
  salario NUMBER(18,2),
  id_equipe NUMBER NOT NULL
);

ALTER TABLE jogador ADD CONSTRAINT pk_id_jogador PRIMARY KEY (id_jogador);
ALTER TABLE jogador ADD CONSTRAINT fk_jogador_equipe FOREIGN KEY (id_equipe) REFERENCES equipe (id_equipe);

CREATE SEQUENCE seq_jogador
MINVALUE 1   
MAXVALUE 999999999999999999999999
START WITH 1 
INCREMENT BY 1
NOCACHE;

--Ciação da tabela tecnico

CREATE TABLE tecnico
(
  id_tecnico NUMBER NOT NULL,
  nome VARCHAR2(400) NOT NULL,
  dt_nascimento DATE NOT NULL,
  salario NUMBER(18,2),
  id_equipe NUMBER NOT NULL
);

ALTER TABLE tecnico ADD CONSTRAINT pk_id_tecnico PRIMARY KEY (id_tecnico);
ALTER TABLE tecnico ADD CONSTRAINT fk_tecnico_time FOREIGN KEY (id_equipe) REFERENCES equipe (id_equipe);

CREATE SEQUENCE seq_tecnico
MINVALUE 1   
MAXVALUE 999999999999999999999999
START WITH 1 
INCREMENT BY 1
NOCACHE;

COMMENT ON TABLE equipe IS 'Tabela dados de cadastro do equipe';



SELECT seq_jogador.nextval FROM dual;

INSERT INTO equipe (id_equipe, nome) VALUES (seq_equipe.nextval, 'BARCELONA');
INSERT INTO equipe (id_equipe, nome) VALUES (seq_equipe.nextval, 'PORTO');
INSERT INTO equipe (id_equipe, nome) VALUES (seq_equipe.nextval, 'SANTOS');

INSERT INTO tecnico (id_tecnico, nome, dt_nascimento, salario, id_equipe) VALUES (seq_tecnico.nextval, 'NOME 1', '10/10/1999', 10000, 1);
INSERT INTO tecnico (id_tecnico, nome, dt_nascimento, salario, id_equipe) VALUES (seq_tecnico.nextval, 'NOME 2', '21/03/1987', 20000, 2);

INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_equipe) VALUES (seq_jogador.nextval, 'JOGADOR 1', '10/10/1999', 2000, 1);
INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_equipe) VALUES (seq_jogador.nextval, 'JOGADOR 2', '11/10/1999', 3000, 1);
INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_equipe) VALUES (seq_jogador.nextval, 'JOGADOR 3', '12/10/1999', 4000, 1);
INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_equipe) VALUES (seq_jogador.nextval, 'JOGADOR 4', '13/10/1999', 5000, 1);
INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_equipe) VALUES (seq_jogador.nextval, 'JOGADOR 5', '10/07/1999', 6000, 1);
INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_equipe) VALUES (seq_jogador.nextval, 'JOGADOR 6', '15/10/1999', 7000, 1);
INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_equipe) VALUES (seq_jogador.nextval, 'JOGADOR 7', '25/10/1999', 7000, 1);
INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_equipe) VALUES (seq_jogador.nextval, 'JOGADOR 8', '26/10/1999', 7000, 1);
INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_equipe) VALUES (seq_jogador.nextval, 'JOGADOR 9', '05/10/1999', 7000, 1);
INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_equipe) VALUES (seq_jogador.nextval, 'JOGADOR 10', '06/10/1999', 7000, 1);
INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_equipe) VALUES (seq_jogador.nextval, 'JOGADOR 11', '01/05/1999', 8000, 1);

INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_equipe) SELECT seq_jogador.nextval, nome, dt_nascimento, salario, 2 FROM jogador;

/*

UPDATE jogador SET id_time = 3 WHERE id_time = 1;

UPDATE jogador SET salario = salario * 1.1 WHERE id_time = 3;

UPDATE tecnico SET salario = salario * 1.2;

*/

INSERT INTO equipe (id_equipe, nome) VALUES (seq_equipe.nextval, 'VASCO');

INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_equipe) VALUES (seq_jogador.nextval, 'JOGADOR 13', '01/05/1999', 8000, 4);
INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_equipe) VALUES (seq_jogador.nextval, 'JOGADOR 14', '18/02/1977', 5000, 4);
INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_equipe) VALUES (seq_jogador.nextval, 'JOGADOR 15', '08/11/1985', 7000, 4);

INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_equipe) VALUES (seq_jogador.nextval, 'JOGADOR 16', '08/11/1965', 3600, 4);
INSERT INTO tecnico (id_tecnico, nome, dt_nascimento, salario, id_equipe) VALUES (seq_tecnico.nextval, 'NOME 3', '12/09/1967', 55000, 4);

/*

UPDATE jogador SET salario = 150000 WHERE id_jogador = 23;
UPDATE jogador SET salario = 135000 WHERE id_jogador = 24;
UPDATE jogador SET salario = 111000 WHERE id_jogador = 25;

DELETE jogador WHERE id_time = 4 AND salario > 100000;

CREATE TABLE equipe
(
  id_equipe NUMBER NOT NULL,
  nome VARCHAR2(400) NOT NULL
);

ALTER TABLE equipe ADD CONSTRAINT pk_id_equipe PRIMARY KEY (id_equipe);


INSERT INTO equipe (id_equipe, nome) SELECT id_time, nome FROM time;

CREATE SEQUENCE seq_equipe
MINVALUE 5   
MAXVALUE 999999999999999999999999
START WITH 5 
INCREMENT BY 1
NOCACHE;

SELECT seq_equipe.nextval FROM dual;

ALTER TABLE jogador DROP CONSTRAINT fk_jogador_time;

ALTER TABLE tecnico DROP CONSTRAINT fk_tecnico_time;

ALTER TABLE time DROP CONSTRAINT pk_id_time;

DROP TABLE time;

ALTER TABLE jogador RENAME COLUMN id_time TO id_equipe;
ALTER TABLE tecnico RENAME COLUMN id_time TO id_equipe;

ALTER TABLE jogador ADD CONSTRAINT fk_jogador_equipe FOREIGN KEY (id_equipe) REFERENCES equipe (id_equipe);
ALTER TABLE tecnico ADD CONSTRAINT fk_tecnico_equipe FOREIGN KEY (id_equipe) REFERENCES equipe (id_equipe);
*/