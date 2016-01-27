CREATE OR REPLACE PROCEDURE inserirJogadrAoJogo
(
  pnIdJogo         IN   NUMBER,
  pnIdJogador      IN   NUMBER
) AS

BEGIN
  
  INSERT INTO jogo_jogador (id_jogo_jogador, id_jogo, id_jogador)  
  VALUES                   (seq_jogo_jogador.nextval, pnIdJogo, pnIdJogador);
  
END;



CREATE OR REPLACE PROCEDURE inserirGol
(
  pnIdJogoJOgador  IN   NUMBER
) AS

BEGIN
  
  INSERT INTO gol (id_gol, id_jogo_jogador, dh_jogo)  
  VALUES          (seq_gol.nextval, pnIdJogoJOgador, sysdate);
  
END;