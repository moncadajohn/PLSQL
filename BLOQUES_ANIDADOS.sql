DECLARE
  V_OUTER_VARIABLE VARCHAR2(20):='VARIABLE GLOBAL';  
BEGIN
  DECLARE
    V_INNER_VARIABLE VARCHAR2(20):='VARIABLE LOCAL';
  BEGIN
    DBMS_OUTPUT.PUT_LINE(V_INNER_VARIABLE);
    DBMS_OUTPUT.PUT_LINE(V_OUTER_VARIABLE);
  END;

DBMS_OUTPUT.PUT_LINE(V_OUTER_VARIABLE);

END;