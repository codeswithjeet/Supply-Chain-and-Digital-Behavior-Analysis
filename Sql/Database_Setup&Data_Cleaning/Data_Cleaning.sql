-- Table1:Supply_chain_data 
-- Converting date strings to TIMESTAMP

ALTER TABLE supply_chain_data
ALTER COLUMN "order date (DateOrders)" TYPE TIMESTAMP WITHOUT TIME ZONE
USING TO_TIMESTAMP("order date (DateOrders)", 'MM/DD/YYYY HH24:MI');

ALTER TABLE supply_chain_data
ALTER COLUMN "shipping date (DateOrders)" TYPE TIMESTAMP WITHOUT TIME ZONE
USING TO_TIMESTAMP("shipping date (DateOrders)", 'MM/DD/YYYY HH24:MI');

-- Handling 'nan' or FLoat strings with proper NULL
UPDATE supply_chain_data
SET "Customer Zipcode" = NULL
WHERE TRIM("Customer Zipcode") IN ('nan', 'NULL', '', '0.0', '0');

UPDATE supply_chain_data
SET "Order Zipcode" = NULL
WHERE TRIM("Order Zipcode") IN ('nan', 'NULL', '', '0.0', '0');

-- Standardize Product Name, Category and Department
UPDATE supply_chain_data
SET "Product Name" = TRIM(LOWER("Product Name")),
    "Category Name" = TRIM(LOWER("Category Name")), 
    "Department Name" = TRIM(LOWER("Department Name"));

-- Droping the unnecessary columns 
ALTER TABLE supply_chain_data
DROP COLUMN "Customer Email";

ALTER TABLE supply_chain_data
DROP COLUMN "Customer Password";

ALTER TABLE supply_chain_data
DROP COLUMN "Product Description";

-- Table2: access_logs

ALTER TABLE access_logs
ALTER COLUMN "Date" TYPE TIMESTAMP WITHOUT TIME ZONE
USING TO_TIMESTAMP("Date", 'MM/DD/YYYY HH24:MI');

-- Standardize Product Name, Category and Department in access_logs
UPDATE access_logs
SET "Product" = TRIM(LOWER("Product")), 
    "Category" = TRIM(LOWER("Category")),
    "Department" = TRIM(LOWER("Department"));
