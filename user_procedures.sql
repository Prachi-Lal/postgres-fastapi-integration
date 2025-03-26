-- Function to register a user
CREATE OR REPLACE FUNCTION register_user(
    p_username VARCHAR,
    p_password VARCHAR,
    p_email VARCHAR,
    p_role VARCHAR
) RETURNS VOID AS $$
BEGIN
    INSERT INTO Users (username, password, email, role)
    VALUES (p_username, p_password, p_email, p_role);
END;
$$ LANGUAGE plpgsql;

-- Function to place an order
CREATE OR REPLACE FUNCTION place_order(
    p_user_id INT,
    p_flower_id INT,
    p_quantity INT
) RETURNS VOID AS $$
DECLARE
    v_order_id INT;
    v_stock_quantity INT;
BEGIN
    -- Check stock quantity
    SELECT stock_quantity INTO v_stock_quantity
    FROM Flowers
    WHERE flower_id = p_flower_id;

    IF v_stock_quantity < p_quantity THEN
        RAISE EXCEPTION 'Insufficient stock. Available quantity: %', v_stock_quantity;
    END IF;

    -- Insert into Orders
    INSERT INTO Orders (user_id, status) VALUES (p_user_id, 'Pending') RETURNING order_id INTO v_order_id;

    -- Insert into Order_Items
    INSERT INTO Order_Items (order_id, flower_id, quantity)
    VALUES (v_order_id, p_flower_id, p_quantity);

    -- Update stock quantity
    UPDATE Flowers SET stock_quantity = stock_quantity - p_quantity WHERE flower_id = p_flower_id;
END;
$$ LANGUAGE plpgsql;