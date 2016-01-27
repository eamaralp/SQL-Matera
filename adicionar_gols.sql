DECLARE
  vnJogadoresTime01 NUMBER;
  vnJogadoresTime02 NUMBER;
  CURSOR vcJogo IS
    SELECT * FROM jogo;
BEGIN
  FOR meuCursor IN vcJogo LOOP
    --DBMS_OUTPUT.PUT_LINE(meuCursor.id_local);
    --DBMS_OUTPUT.PUT_LINE(meuCursor.id_visitante); 
    
    
    SELECT COUNT(*)
    INTO vnJogadoresTime01
    FROM jogador
    WHERE jogador.id_equipe = meuCursor.id_local ;
    
    SELECT COUNT(*)
    INTO vnJogadoresTime02
    FROM jogador
    WHERE jogador.id_equipe = meuCursor.id_visitante ;
    
    DBMS_OUTPUT.PUT_LINE(vnJogadoresTime01);
    DBMS_OUTPUT.PUT_LINE(vnJogadoresTime02);
    
    
    UPDATE  jogo 
    SET     jogo.placar_local = vnJogadoresTime01, 
            jogo.placar_visitante = vnJogadoresTime02 
    WHERE   jogo.id_jogo =  meucursor.id_jogo ;
    
  END LOOP;
END;