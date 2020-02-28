create or replace PROCEDURE buscar_region(p_region IN COUNTRIES.COUNTRY_ID%TYPE) AS
      v_pais COUNTRIES.COUNTRY_NAME%TYPE;
BEGIN
      SELECT COUNTRY_NAME INTO v_pais
      FROM COUNTRIES
      WHERE COUNTRY_ID = p_region;
      
      dbms_output.put_line('El(Los) país(es) identificados con dicho ID son: '||v_pais);

END buscar_region;