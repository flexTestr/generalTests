DECLARE v_result NUMBER;
BEGIN 
EXECUTE 'SELECT 1 FROM dual' INTO v_result;
DBMS_OUTPUT.PUT_LINE('Result: ' || v_result);
END;
