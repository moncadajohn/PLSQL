DECLARE
BEGIN
  FOR I IN 1..10 LOOP
    IF I = 6 OR I = 8 THEN
      NULL;
    ELSE
      INSERT INTO MESSAGES(RESULTS) VALUES(I);
    END IF;
    END LOOP;
  COMMIT;
   
END;