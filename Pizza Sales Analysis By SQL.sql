CREATE DATABASE IF NOT EXISTS pizza_sales_database;

USE pizza_sales_database;

CREATE DATABASE IF NOT EXISTS pizza_sales_database;

USE pizza_sales_database;

CREATE TABLE pizza_sales (
    pizza_id INT NOT NULL,
    order_id INT NOT NULL,
    pizza_name_id VARCHAR(50) NOT NULL,
    quantity INT NOT NULL,
    order_date VARCHAR(10) NOT NULL,
    order_time VARCHAR(12) NOT NULL,
    unit_price VARCHAR(20) NOT NULL,
    total_price VARCHAR(20) NOT NULL,
    pizza_size VARCHAR(10) NOT NULL,
    pizza_category VARCHAR(50) NOT NULL,
    pizza_ingredients TEXT,
    pizza_name VARCHAR(150) NOT NULL,

    PRIMARY KEY (pizza_id)
);

LOAD DATA INFILE 'pizza_sales.csv'
INTO TABLE pizza_sales
FIELDS TERMINATED BY ','
IGNORE 1 LINES;


USE pizza_sales_database;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.7/Uploads/pizza_sales.csv'
INTO TABLE pizza_sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;