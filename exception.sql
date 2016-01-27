BEGIN

  INSERT INTO jogador (id_jogador, nome) VALUES (1, 'JOGADOR 1');

  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Erro desconhecido: ' || SQLERRM);
END;

DECLARE
  vnSalario NUMBER(18,2);
BEGIN

  SELECT JOG.SALARIO
  INTO vnSalario
  FROM jogador JOG
  WHERE JOG.ID_EQUIPE = 2;
  
  EXCEPTION
    WHEN TOO_MANY_ROWS THEN
      DBMS_OUTPUT.PUT_LINE('Mais de um registro retornado !');            
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Erro desconhecido: ' || SQLERRM);    
END;