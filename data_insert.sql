-- Insert sample data into Flowers
INSERT INTO Flowers (name, description, price, category, stock_quantity) VALUES
('Rose', 'A beautiful red rose', 10.00, 'Roses', 100),
('Tulip', 'A vibrant yellow tulip', 8.50, 'Tulips', 50),
('Lily', 'A fragrant white lily', 12.00, 'Lilies', 30),
('Daisy', 'A cheerful white daisy', 5.00, 'Daisies', 80),
('Sunflower', 'A tall sunflower with a bright yellow face', 15.00, 'Sunflowers', 40),
('Orchid', 'An exotic purple orchid', 20.00, 'Orchids', 25),
('Carnation', 'A classic pink carnation', 7.50, 'Carnations', 60),
('Chrysanthemum', 'A colorful chrysanthemum', 9.00, 'Chrysanthemums', 70),
('Peony', 'A lush pink peony', 18.00, 'Peonies', 20),
('Hydrangea', 'A beautiful blue hydrangea', 22.00, 'Hydrangeas', 15);

-- Insert sample data into Users
INSERT INTO Users (username, password, email, role) VALUES
('admin', 'admin123', 'admin@example.com', 'Admin'),
('customer1', 'pass123', 'customer1@example.com', 'Customer'),
('customer2', 'pass456', 'customer2@example.com', 'Customer'),
('customer3', 'pass789', 'customer3@example.com', 'Customer'),
('customer4', 'pass101', 'customer4@example.com', 'Customer'),
('customer5', 'pass202', 'customer5@example.com', 'Customer'),
('customer6', 'pass303', 'customer6@example.com', 'Customer'),
('customer7', 'pass404', 'customer7@example.com', 'Customer'),
('customer8', 'pass505', 'customer8@example.com', 'Customer'),
('customer9', 'pass606', 'customer9@example.com', 'Customer');

-- Insert sample data into Suppliers
INSERT INTO Suppliers (name, contact_info) VALUES
('Floral Supply Co.', '123-456-7890'),
('Blooming Flowers', '987-654-3210'),
('Petal Pushers', '555-123-4567'),
('Garden Delights', '555-987-6543'),
('Flower Power', '555-111-2222'),
('The Flower Shop', '555-222-3333'),
('Natures Beauty', '555-333-4444'),
('Fresh Blooms', '555-444-5555'),
('Petals N Stems', '555-555-6666'),
('The Bloom Room', '555-666-7777');

-- Insert sample data into Orders
INSERT INTO Orders (user_id, status) VALUES
(2, 'Pending'),
(3, 'Shipped'),
(4, 'Pending'),
(5, 'Delivered'),
(6, 'Pending'),
(7, 'Shipped'),
(8, 'Pending'),
(9, 'Delivered'),
(10, 'Pending'),
(1, 'Shipped');

-- Insert sample data into Order_Items
INSERT INTO Order_Items (order_id, flower_id, quantity, supplier_id) VALUES
(1, 1, 2, 1),
(1, 3, 1, 2),
(2, 2, 3, 3),
(2, 4, 2, 4),
(3, 5, 1, 5),
(4, 6, 2, 6),
(5, 6, 3, 7),
(6, 7, 5, 8),
(7, 8, 2, 9),
(8, 9, 1, 10);