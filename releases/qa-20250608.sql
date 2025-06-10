/********************************************/
-- AUTO RELEASE: qa-20250608
/********************************************/

----------------------------------------------
-- SECTION: MIGRATIONS (changes/)
----------------------------------------------
----------------------------------------------
-- SECTION: SCHEMA (FULL if first release)
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



