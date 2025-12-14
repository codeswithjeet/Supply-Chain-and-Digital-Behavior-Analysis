-- View for the Clean Access Logs Data (Digital Behavior Fact Table)
CREATE VIEW v_digital_behavior AS
SELECT
    "Date" AS access_timestamp,
    "Month" AS access_month,
    "Hour" AS access_hour,
    "ip" AS ip_address,
    "url" AS url_path,
    "Product" AS product_name_cleaned, -- Link key
    "Category" AS category_name_cleaned, -- Link key
    "Department" AS department_name_cleaned -- Link key
FROM
    access_logs;