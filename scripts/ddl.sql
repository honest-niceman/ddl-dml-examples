-- Create a new schema
CREATE SCHEMA my_schema;

CREATE TABLE my_table (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create a table in a specific schema
CREATE TABLE my_schema.my_table (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Add a column to an existing table
ALTER TABLE my_table ADD COLUMN description TEXT;

-- Drop a column from an existing table
ALTER TABLE my_table DROP COLUMN description;

-- Rename a column in an existing table
ALTER TABLE my_table RENAME COLUMN name TO full_name;

-- Rename a table
ALTER TABLE my_table RENAME TO new_table_name;

DROP TABLE new_table_name;

DROP SCHEMA my_schema;