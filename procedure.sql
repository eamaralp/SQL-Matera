CREATE OR REPLACE PROCEDURE inserirAlunos
(
  id_aluno  IN OUT    NUMBER,
  nome      IN        VARCHAR2
) AS

  vnIdAlunos NUMBER;

BEGIN
  IF  id_aluno IS NULL THEN
  
    vnIdALuno := SEQ_AL.nextval;    
    INSERT INTO (alunoId, nome) VALUES (vnIdAluno, nome);
    id_aluno := vnIdAluno;
  
  ELSE
  
    INSERT INTO alunoId, nome) VALUES (id_aluno, nome);
    
  END IF;
  
END;