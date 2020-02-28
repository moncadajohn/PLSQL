--BLOQUE ANÓNIMO

/*
declare
--declarar variables

begin
--programación

exception
--control de errores

end;
*/

declare
   cadena varchar2(100):= 'Hola Mundo';
begin
   dbms_output.put_line(cadena);
exception
   when others then
   dbms_output.put_line('Otro problema');
end;
