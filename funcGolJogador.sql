CREATE OR REPLACE FUNCTION golsPorJogador
(
  pnIdJogador    IN NUMBER  
) RETURN NUMBER AS

  pnNumeroGols  NUMBER;

BEGIN
  
  SELECT COUNT(*)
  INTO        pnNumeroGols
  FROM        gol, 
              jogo_jogador JJG
  WHERE       gol.id_jogo_jogador = JJG.id_jogo_jogador
  AND         JJG.id_jogador = pnIdJogador;
  
  RETURN pnNumeroGols;
  
END;