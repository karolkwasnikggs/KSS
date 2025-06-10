/********************************************/
-- AUTO RELEASE: prod-20250608
/********************************************/

----------------------------------------------
-- SECTION: MIGRATIONS (from QA releases)
----------------------------------------------
-- FILE: changes/20250604_orders_rename_status.sql
ALTER TABLE orders
RENAME COLUMN status TO order_status;



----------------------------------------------
-- SECTION: SCHEMA (from QA releases)
----------------------------------------------
-- MODIFIED OBJECT: schema/functions/calculate_discount.sql
-- BEGIN DIFF --------------------------------
-- diff --git a/schema/functions/calculate_discount.sql b/schema/functions/calculate_discount.sql
-- index 80416b4..bf7052c 100644
-- --- a/schema/functions/calculate_discount.sql
-- +++ b/schema/functions/calculate_discount.sql
-- @@ -8,7 +8,7 @@ BEGIN
--      ELSIF p_amount >= 500 THEN
--          v_discount := 0.10; -- 10%
--      ELSE
-- -        v_discount := 0.05; -- 5%
-- +        v_discount := 0.07; -- 7%
--      END IF;
--      RETURN v_discount;
--  END;
-- END DIFF ----------------------------------



-- NEW OBJECT: schema/procedures/insert_order.sql
CREATE OR REPLACE PROCEDURE insert_order (
    p_customer_id  IN orders.customer_id%TYPE,
    p_order_date   IN orders.order_date%TYPE DEFAULT SYSDATE,
    p_status       IN orders.status%TYPE DEFAULT 'NEW'
) AS
BEGIN
    INSERT INTO orders (customer_id, order_date, status)
    VALUES (p_customer_id, p_order_date, p_status);

    COMMIT;
END;
/



-- MODIFIED OBJECT: schema/tables/orders.sql
-- BEGIN DIFF --------------------------------
-- diff --git a/schema/tables/orders.sql b/schema/tables/orders.sql
-- index eb1bf9d..5308f27 100644
-- --- a/schema/tables/orders.sql
-- +++ b/schema/tables/orders.sql
-- @@ -3,5 +3,6 @@ CREATE TABLE orders (
--      customer_name VARCHAR2(100) NOT NULL,
--      order_date    DATE DEFAULT SYSDATE,
--      total_amount  NUMBER(10, 2) DEFAULT 0,
-- -    delivery_date DATE
-- +    delivery_date DATE,
-- +    order_status  VARCHAR2(100) NOT NULL
--  );
-- END DIFF ----------------------------------



