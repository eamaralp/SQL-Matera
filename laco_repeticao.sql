DECLARE
  vnNumero NUMBER := 0;
BEGIN
  LOOP
  
    vnNumero := vnNumero + 1;
    
    DBMS_OUTPUT.PUT_LINE(vnNumero);
     
    EXIT WHEN vnNumero = 100;
  
  END LOOP;
END;

--NUMEROS PARES ATÈ 100

DECLARE
  vnNumero NUMBER := 0;
BEGIN
  LOOP
  
    vnNumero := vnNumero + 2;
    
    DBMS_OUTPUT.PUT_LINE(vnNumero);
     
    EXIT WHEN vnNumero = 100;
  
  END LOOP;
END;


