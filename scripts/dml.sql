CREATE TABLE my_table (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert a single row into a table
INSERT INTO my_table (name, created_at) VALUES ('John Doe', '2023-07-09 10:00:00');

SELECT * FROM my_table;

-- Insert multiple rows into a table
INSERT INTO my_table (name, created_at) VALUES
('Jane Smith', '2023-07-09 11:00:00'),
('Alice Johnson', '2023-07-09 12:00:00');

SELECT * FROM my_table;

-- Insert data into a table with default values
INSERT INTO my_table (name) VALUES ('Bob Brown');

SELECT * FROM my_table;

-- Update a single row in a table
UPDATE my_table SET name = 'Johnathan Doe' WHERE id = 1;

SELECT * FROM my_table;

-- Update multiple rows in a table
UPDATE my_table SET created_at = '2023-07-09 13:00:00' WHERE name LIKE 'J%';

SELECT * FROM my_table;

-- Delete a single row from a table
SELECT * FROM my_table;
DELETE FROM my_table WHERE id = 1;
SELECT * FROM my_table;

-- Delete multiple rows from a table
SELECT * FROM my_table;
DELETE FROM my_table WHERE created_at <= '2023-07-09 12:00:00';
SELECT * FROM my_table;

-- Delete all rows from a table (without removing the table structure)
DELETE FROM my_table;

-- Select all columns from a table
SELECT * FROM my_table;

-- Select specific columns from a table
SELECT name, created_at FROM my_table;

-- Select rows with a condition
SELECT * FROM my_table WHERE created_at > '2024-07-09 11:00:00';

-- Select rows with ordering
SELECT * FROM my_table ORDER BY created_at DESC;
SELECT * FROM my_table ORDER BY created_at ASC;

-- Select with a limit
INSERT INTO my_table (name, created_at) VALUES
('Jane Smith', '2023-07-09 11:00:00'),
('Jane Smith', '2023-07-09 11:00:00'),
('Jane Smith', '2023-07-09 11:00:00'),
('Jane Smith', '2023-07-09 11:00:00'),
('Jane Smith', '2023-07-09 11:00:00'),
('Jane Smith', '2023-07-09 11:00:00'),
('Alice Johnson', '2023-07-09 12:00:00');

SELECT * FROM my_table;
SELECT * FROM my_table LIMIT 5;

-- Select with aggregation
SELECT COUNT(*) FROM my_table;

SELECT name, COUNT(*) FROM my_table GROUP BY name;