-- Top Viewed Product
SELECT
    product_name_cleaned AS Product,
    COUNT(ip_address) AS total_product_views
FROM
    v_digital_behavior
GROUP BY
    Product
ORDER BY
    total_product_views DESC
LIMIT 50;

-- Top Viewed Category
SELECT
    category_name_cleaned AS Category,
    COUNT(ip_address) AS total_category_views
FROM
    v_digital_behavior
GROUP BY
    Category
ORDER BY
    total_category_views DESC
LIMIT 50;

-- Top Viewed Departments
SELECT
    department_name_cleaned AS Department,
    COUNT(ip_address) AS total_department_views
FROM
    v_digital_behavior
GROUP BY
    Department
ORDER BY
    total_department_views DESC
LIMIT 10;