DECLARE
  E_INSERT_EXCEP EXCEPTION;
  PRAGMA EXCEPTION_INIT(E_INSERT_EXCEP, -01400);
BEGIN
  INSERT INTO DEPARTMENTS(DEPARTMENT_ID, DEPARTMENT_NAME) VALUES('280', NULL);

EXCEPTION
  WHEN E_INSERT_EXCEP THEN
  DBMS_OUTPUT.PUT_LINE('ERROR AL INSERTAR EL REGISTRO');
  DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;