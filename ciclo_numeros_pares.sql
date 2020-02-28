--LISTA DE NÚMEROS PARES DESDE EL 1 HASTA EL QUE SOLICITAN

DECLARE
  v_numero NUMBER;
BEGIN
  v_numero := :p_numero;
  FOR v_contador IN 1..v_numero LOOP
  IF mod(v_contador,2)= 0 THEN
  dbms_output.put_line(v_contador);
  END IF;
  END LOOP;

END;