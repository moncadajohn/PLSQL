--TIPOS DE DATOS
declare
    --NUMBER (precisi�n, escala)
    saldo NUMBER(16,2):=10000;
    /*
    indica que puede almacenar un valor num�rico de 16 posiciones, 2 de ellas decimales, es decir 14 enteros y 2 decimales
    */
    --char(longitud m�xima)
    nombre CHAR(20):='LEIDY';
    --indica que puede almacenar valores alfanum�ricos de 20 posiciones.
    
    --VARCHAR2(longitud m�xima)
    nombre1 VARCHAR2(20):='PE�A';
    --Indica que puede almacenar valores alfanum�ricos de 2o posiciones.
    --cuando la longitud de los datos sea menor de 20 no se rellena con blancos.
    
    
    --BOOLEANA
    lerror BOOLEAN:=true;
    
    --FECHA
    fecha DATE:=SYSDATE;
    
    --%TYPE
    codigo_empleado DEPARTMENTS.DEPARTMENT_ID%TYPE:=94;
    
    --%ROWTYPE
    TABLA_COMPLETA DEPARTMENTS%ROWTYPE;

begin
    dbms_output.put_line('El saldo es de : '||saldo);
    dbms_output.put_line('El nombre es : '||nombre);
    dbms_output.put_line('El nombre1 es : '||nombre1);
    dbms_output.put_line('La fecha es : ' ||fecha);
    dbms_output.put_line('El c�digo de empleado es : '||codigo_empleado);
    
    SELECT * INTO TABLA_COMPLETA FROM DEPARTMENTS;
    --SELECT * FROM TABLA_COMPLETA;

EXCEPTION
    WHEN OTHERS THEN
    NULL;
END;

