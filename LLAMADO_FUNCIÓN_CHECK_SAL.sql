BEGIN
 IF(CHECK_SAL IS NULL)THEN
  DBMS_OUTPUT.PUT_LINE('NO EXISTE INFORMACIÓN PARA VALIDAR PROMEDIO DE SALARIOS');
  
  ELSIF (CHECK_SAL) THEN
  DBMS_OUTPUT.PUT_LINE('SALARIO ES MAYOR QUE EL PROMEDIO');
  ELSE
  DBMS_OUTPUT.PUT_LINE('SALARIO ES MENOR QUE EL PROMEDIO');
  END IF;
END;
