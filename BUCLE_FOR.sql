DECLARE
  V_COUNTRYID LOCATIONS.COUNTRY_ID%TYPE:='CA';
  V_LOC_ID LOCATIONS.LOCATION_ID%TYPE;
  V_NEW_CITY LOCATIONS.CITY%TYPE:='MONTREAL FOR';
BEGIN
  SELECT MAX(LOCATION_ID) INTO V_LOC_ID FROM LOCATIONS
  WHERE COUNTRY_ID = V_COUNTRYID;
  FOR I IN 1..3 LOOP
    INSERT INTO LOCATIONS(LOCATION_ID, CITY, COUNTRY_ID)
    VALUES ((V_LOC_ID + I), V_NEW_CITY, V_COUNTRYID);
  END LOOP;
END;