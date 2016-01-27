SELECT SUM (NVL(JOG.salario, 0) + NVL(TEC.salario,0)) SALARIO_JOGADOR,
            EQP.id_equipe 
FROM        equipe EQP,
            jogador JOG,
            tecnico TEC
WHERE       EQP.id_equipe = JOG.id_equipe(+)
AND         EQP.ID_EQUIPE = TEC.ID_EQUIPE(+)
GROUP BY    EQP.id_equipe;

SELECT MIN (NVL(JOG.salario, 0) + NVL(TEC.salario,0)) MENOR_SALARIO,
            EQP.id_equipe 
FROM        equipe EQP,
            jogador JOG,
            tecnico TEC
WHERE       EQP.id_equipe = JOG.id_equipe(+)
AND         EQP.ID_EQUIPE = TEC.ID_EQUIPE(+)
GROUP BY    EQP.id_equipe;

SELECT * FROM time WHERE nome = 'BARCELONA';

SELECT * FROM jogador WHERE id_equipe = 2 order by nome;

SELECT * FROM jogador;

SELECT * FROM equipe;

SELECT * FROM tecnico;

SELECT * FROM tecnico WHERE dt_nascimento <= '19/01/1976' order by nome;

UPDATE tecnico SET dt_nascimento = '01/02/1950' where id_tecnico = 1;

SELECT EQP.nome NOME_EQUIPE, 
       TEC.nome NOME_TECNICO 
FROM equipe EQP, 
     tecnico TEC 
WHERE TEC.ID_EQUIPE = EQP.ID_EQUIPE;

SELECT EQP.nome NOME_EQUIPE, 
       TEC.nome NOME_TECNICO, 
       JOG.nome NOME_JOGADOR
FROM equipe EQP, 
     tecnico TEC, 
     jogador JOG 
WHERE EQP.ID_EQUIPE = TEC.ID_EQUIPE 
AND   EQP.ID_EQUIPE = JOG.ID_EQUIPE;


SELECT EQP.nome NOME_EQUIPE, TEC.nome NOME_TECNICO 
FROM equipe EQP, tecnico TEC 
WHERE EQP.ID_EQUIPE = TEC.ID_EQUIPE(+);

SELECT EQP.nome NOME_EQUIPE, 
       TEC.nome NOME_TECNICO, 
       JOG.nome NOME_JOGADOR
FROM equipe EQP, 
     tecnico TEC, 
     jogador JOG 
WHERE EQP.ID_EQUIPE = TEC.ID_EQUIPE(+) 
AND   EQP.ID_EQUIPE = JOG.ID_EQUIPE;

SELECT EQP.nome NOME_EQUIPE
FROM equipe EQP
ORDER BY EQP.nome desc;

SELECT JOG.nome NOME_JOGADOR, 
       EQP.nome NOME_EQP
FROM   jogador JOG, 
      equipe EQP
WHERE JOG.ID_EQUIPE = EQP.ID_EQUIPE
ORDER BY JOG.DT_NASCIMENTO asc;

SELECT COUNT(*), id_equipe
FROM jogador
GROUP BY id_equipe;

SELECT COUNT(*) FROM jogador;

SELECT SUM  (JOG.salario) FOLHA_PAGMENTO, 
            EQP.nome NOME_EQUIPE    
FROM        jogador JOG, 
            equipe EQP
WHERE       JOG.ID_EQUIPE = EQP.ID_EQUIPE
GROUP BY    EQP.ID_EQUIPE, EQP.nome;

SELECT TRUNC(AVG (JOG.salario), 2) MEDIA_SALARIAL,
            EQP.nome NOME_EQUIPE
FROM        jogador JOG,
            equipe EQP
WHERE       JOG.ID_EQUIPE = EQP.ID_EQUIPE
GROUP BY    EQP.ID_EQUIPE, EQP.nome;

SELECT MIN  (JOG.salario) MENOR_SALARIO,
            EQP.nome NOME_EQUIPE
FROM        jogador JOG,
            equipe EQP
WHERE       JOG.ID_EQUIPE = EQP.ID_EQUIPE
GROUP BY    EQP.nome, EQP.ID_EQUIPE;
          
SELECT MAX  (JOG.salario) MENOR_SALARIO,
            EQP.nome NOME_EQUIPE
FROM        jogador JOG,
            equipe EQP
WHERE       JOG.ID_EQUIPE = EQP.ID_EQUIPE
GROUP BY    EQP.nome, EQP.ID_EQUIPE;         


SELECT * FROM jogo WHERE id_jogo = 1;