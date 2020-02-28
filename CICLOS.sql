--imprimir los números del 1 al 4

--LOOP

DECLARE
v_contador NUMBER:=1;

BEGIN
DBMS_OUTPUT.put_line('****LOOP******');
  LOOP
    dbms_output.put_line(v_contador);--1,2,3,4,
    v_contador := v_contador+1; --2,3,4,5
    EXIT WHEN v_contador = 5;
  END LOOP;
  DBMS_OUTPUT.put_line('CONTADOR HASTA AQUÍ : ' ||v_contador);
  DBMS_OUTPUT.put_line('****CICLO WHILE******');
  
  v_contador:=1;
  WHILE v_contador < 5 LOOP --1,2,3,4,5
  dbms_output.put_line(v_contador); --1,2,3,4
  v_contador := v_contador+1;--2,3,4,5
  END LOOP;
  DBMS_OUTPUT.put_line('CONTADOR HASTA AQUÍ : ' ||v_contador);
  
  DBMS_OUTPUT.put_line('*****CICLO FOR*****');
  
  FOR v_contador IN 1..4 LOOP
    dbms_output.put_line(v_contador);
  END LOOP;
  DBMS_OUTPUT.put_line('CONTADOR HASTA AQUÍ : ' ||v_contador);

END;