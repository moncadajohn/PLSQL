SET SERVEROUTPUT ON
DECLARE
  V_BASIC_PERCENT NUMBER:=45;
  V_PF_PERCENT NUMBER:=12;
  V_FNAME VARCHAR2(15);
  V_EMP_SAL NUMBER(10);

BEGIN
  SELECT FIRST_NAME, SALARY INTO V_FNAME, V_EMP_SAL FROM EMPLOYEES
  WHERE EMPLOYEE_ID = 110;
  
  DBMS_OUTPUT.PUT_LINE('HOLA '||V_FNAME);
  DBMS_OUTPUT.PUT_LINE('TU SALARIO ES: '||V_EMP_SAL);
  DBMS_OUTPUT.PUT_LINE('TU CONTRIBUCIÓN ES DE: '||(V_EMP_SAL*45/100)*V_PF_PERCENT/100);
END;