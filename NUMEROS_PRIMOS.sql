DECLARE
dividendo NUMBER := 3877;
divisor NUMBER := 2;

BEGIN
  IF MOD(dividendo, divisor) = 0 THEN
    dbms_output.put_line('EL DIVIDENDO NO ES UN N�MERO PRIMO');
  ELSE
    dbms_output.put_line('EL DIVIDENDO ES UN N�MERO PRIMO');
  END IF;
  
END;