CREATE OR REPLACE FUNCTION golsPorJogador
(
  id_jogador    IN NUMBER  
) RETURN NUMBER AS

  pnNumeroGols  NUMBER;

BEGIN
  
  SELECT COUNT(*)
  INTO        pnNumeroGols
  FROM        gol, 
              jogo_jogador JJG
  WHERE       gol.id_jogo_jogador = jogo_jogador.id_jogo_jogador
  AND         jogo_jogador.id_jogador = id_jogador;
  
  RETURN pnNumeroGols;
  
END;