BEGIN <<OUTER>>
DECLARE
  V_FATHER_NAME VARCHAR2(20):='PATRICK';
  V_DATE_OF_BIRTH DATE:='20-04-1972';
BEGIN
  DECLARE
    V_CHILD_NAME VARCHAR2(20):='MIKE';
    V_DATE_OF_BIRTH DATE :='12-12-2002';
  BEGIN
    DBMS_OUTPUT.PUT_LINE('NOMBRE DEL PADRE: '||V_FATHER_NAME);
    DBMS_OUTPUT.PUT_LINE('FECHA DE CUMPLEA�OS: '||OUTER.V_DATE_OF_BIRTH);
    DBMS_OUTPUT.PUT_LINE('NOMBRE DEL NI�O: '||V_CHILD_NAME);
    DBMS_OUTPUT.PUT_LINE('FECHA DE CUMPLEA�OS: '||V_DATE_OF_BIRTH);
  END;
  
END;
END OUTER;