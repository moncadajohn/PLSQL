--CICLO FOR
DECLARE

numero NUMBER(1):=2;

BEGIN
    DBMS_OUTPUT.PUT_LINE('*** TABLA DEL '||numero||'***');
    <<ciclo_1>>
    FOR i IN 1..10 LOOP
    
    --DBMS_OUTPUT.PUT_LINE(i);
      DBMS_OUTPUT.PUT_LINE(numero||' * '|| i ||' = ' || numero*i);
    
    END LOOP ciclo_1;

END;