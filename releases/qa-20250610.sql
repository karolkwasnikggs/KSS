/********************************************/
-- AUTO RELEASE: qa-20250610
/********************************************/

----------------------------------------------
-- SECTION: MIGRATIONS (changes/)
----------------------------------------------
-- FILE: changes/20250610_orders_add_desc.sql
ALTER TABLE orders ADD COLUMN description VARCHAR2(50);



----------------------------------------------
-- SECTION: SCHEMA (FULL if first release)
----------------------------------------------
-- MODIFIED OBJECT: schema/tables/orders.sql
-- BEGIN DIFF --------------------------------
-- diff --git a/schema/tables/orders.sql b/schema/tables/orders.sql
-- index 5308f27..c711b6a 100644
-- --- a/schema/tables/orders.sql
-- +++ b/schema/tables/orders.sql
-- @@ -4,5 +4,6 @@ CREATE TABLE orders (
--      order_date    DATE DEFAULT SYSDATE,
--      total_amount  NUMBER(10, 2) DEFAULT 0,
--      delivery_date DATE,
-- -    order_status  VARCHAR2(100) NOT NULL
-- +    order_status  VARCHAR2(100) NOT NULL,
-- +    description VARCHAR2(50)
--  );
-- END DIFF ----------------------------------



