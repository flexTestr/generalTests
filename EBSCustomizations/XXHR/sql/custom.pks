CREATE OR REPLACE PACKAGE demo_pkg AS
  -- Function to return today's date
  FUNCTION get_today RETURN DATE;

  -- Function to return a greeting message
  FUNCTION get_greeting(p_name IN VARCHAR2) RETURN VARCHAR2;
END demo_pkg;
/
