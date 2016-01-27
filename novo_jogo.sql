DECLARE
 id_a NUMBER :=1;
 id_b NUMBER :=2;
BEGIN
  IF(id_a=id_b) THEN
    DBMS_OUTPUT.PUT_LINE('As equipes não podem ser iguais');
  ELSE
    INSERT INTO jogo
    (
      id_jogo,
      id_local,
      id_visitante,
      placar_local,
      placar_visitante,
      dt_inicio,
      dt_fim)
    VALUES
    (
      seq_jogo.nextval,
      id_a,
      id_b,
      0,
      0,
      sysdate,
      sysdate
    );
    DBMS_OUTPUT.PUT_LINE('Inserido com sucesso!');
  END IF;
END;
