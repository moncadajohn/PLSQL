DECLARE
dividendo NUMBER := 3877;
divisor NUMBER := 2;

BEGIN
  IF MOD(dividendo, divisor) = 0 THEN
    dbms_output.put_line('EL DIVIDENDO NO ES UN NÚMERO PRIMO');
  ELSE
    dbms_output.put_line('EL DIVIDENDO ES UN NÚMERO PRIMO');
  END IF;
  
END;