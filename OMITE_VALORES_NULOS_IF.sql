/*
AL MANEJAR VALORES NULO
*/
/*
PUEDE QUE ESPERE QUE SE EJECUTE LA SENTENCIA PORQUE AX Y BX PARECEN IGUALES,
PERO AQU� SE DESCONOCE LA IGUALDAD POR LO QUE LA CONDICI�N IF GENERA NULL Y SE
OMITE LA SECUENCIA DE SENTENCIAS.
*/

DECLARE
 AX NUMBER;
 BX NUMBER;
 BEGIN
  IF AX = BX THEN
  DBMS_OUTPUT.PUT_LINE('VALIDO');
  ELSE
  DBMS_OUTPUT.PUT_LINE('INDETERMINADO');
  END IF;
END;
  
  