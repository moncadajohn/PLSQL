--BLOQUE AN�NIMO

/*
declare
--declarar variables

begin
--programaci�n

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
