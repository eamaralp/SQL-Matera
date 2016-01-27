CREATE TABLE cartao
(
  id_cartao  NUMBER        NOT NULL,
  descricao  VARCHAR2(400) NOT NULL
);

ALTER TABLE cartao ADD CONSTRAINT pk_cartao PRIMARY KEY (id_cartao);

COMMENT ON TABLE cartao IS 'Tabela com os dados dos cartões do jogo';

CREATE SEQUENCE seq_cartao
MINVALUE 1   
MAXVALUE 999999999999999999999999
START WITH 1 
INCREMENT BY 1
NOCACHE;

CREATE OR REPLACE PROCEDURE inserirCartao
(
  psDescricao      IN      VARCHAR2
) AS

BEGIN
  
  INSERT INTO cartao (id_cartao, descricao)  
  VALUES             (seq_cartao.nextval, psDescricao);
  
END;