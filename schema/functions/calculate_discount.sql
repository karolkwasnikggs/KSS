CREATE OR REPLACE FUNCTION calculate_discount(p_amount NUMBER)
RETURN NUMBER
IS
    v_discount NUMBER;
BEGIN
    IF p_amount >= 1000 THEN
        v_discount := 0.15; -- 15%
    ELSIF p_amount >= 500 THEN
        v_discount := 0.10; -- 10%
    ELSE
        v_discount := 0.05; -- 5%
    END IF;
    RETURN v_discount;
END;
