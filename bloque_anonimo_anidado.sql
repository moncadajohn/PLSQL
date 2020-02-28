--BLOQUE AN�NIMO ANIDADO

declare
  palabra1 varchar2(50):='Palabra bloque externo';
  palabra2 varchar2(50):='Palabra bloque interno';

begin
    --bloque an�nimo externo
    begin
      dbms_output.put_line(palabra1);
    exception
      when others then
      dbms_output.put_line('Error palabra externa');
    end;
    
    --bloque an�nimo interno    
    begin
      dbms_output.put_line(palabra2);
    exception
      when others then
      dbms_output.put_line('Error palabra interna');
    end;
exception
  when others then
  dbms_output.put_line('ERROR GENERAL');
end;

    