--FACTORIAL DE UN N�MERO

DECLARE
  v_numero NUMBER;
  v_factorial NUMBER:=1;
BEGIN
  v_numero:= :p_numero;
  FOR v_contador IN 1..v_numero LOOP
    v_factorial := v_factorial * v_contador; 
  END LOOP;
  dbms_output.put_line('EL N�MERO FACTORIAL ES : '||v_factorial);

END;