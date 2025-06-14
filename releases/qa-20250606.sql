/********************************************/
-- AUTO RELEASE: qa-20250606
/********************************************/

----------------------------------------------
-- SECTION: MIGRATIONS (changes/)
----------------------------------------------
-- FILE: changes/20250604_orders_add_date.sql
ALTER TABLE orders ADD delivery_date DATE;



----------------------------------------------
-- SECTION: SCHEMA (FULL if first release)
----------------------------------------------
-- NEW OBJECT: schema/functions/calculate_discount.sql
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



-- MODIFIED OBJECT: schema/tables/orders.sql
-- BEGIN DIFF --------------------------------
-- diff --git a/schema/tables/orders.sql b/schema/tables/orders.sql
-- index ed75f5e..eb1bf9d 100644
-- --- a/schema/tables/orders.sql
-- +++ b/schema/tables/orders.sql
-- @@ -2,5 +2,6 @@ CREATE TABLE orders (
--      order_id      NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY PRIMARY KEY,
--      customer_name VARCHAR2(100) NOT NULL,
--      order_date    DATE DEFAULT SYSDATE,
-- -    total_amount  NUMBER(10, 2) DEFAULT 0
-- +    total_amount  NUMBER(10, 2) DEFAULT 0,
-- +    delivery_date DATE
--  );
-- END DIFF ----------------------------------



