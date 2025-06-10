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
