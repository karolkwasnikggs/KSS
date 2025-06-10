CREATE OR REPLACE FUNCTION get_full_name(p_first_name VARCHAR2, p_last_name VARCHAR2)
RETURN VARCHAR2
IS
BEGIN
    RETURN INITCAP(p_first_name || ' ' || p_last_name);
END;
