CREATE OR REPLACE PACKAGE BODY demo_pkg AS

  FUNCTION get_today RETURN DATE IS
    v_date DATE;
  BEGIN
    -- Use DUAL table to fetch system date
    SELECT SYSDATE INTO v_date FROM DUAL;
    RETURN v_date;
  END get_today;

  FUNCTION get_greeting(p_name IN VARCHAR2) RETURN VARCHAR2 IS
    v_msg VARCHAR2(100);
  BEGIN
    -- Build a greeting using DUAL
    SELECT 'Hello, ' || p_name || '! Today is ' || TO_CHAR(SYSDATE, 'DD-MON-YYYY')
    INTO v_msg
    FROM DUAL;

    RETURN v_msg;
  END get_greeting;

END demo_pkg;
/
