-- Temporal Traffic Analysis
SELECT
    access_month,
    access_hour,
    DATE_TRUNC('hour',access_timestamp) AS access_hour_timestamp,
    COUNT(ip_address) as total_views
FROM
    v_digital_behavior
GROUP BY
    access_month,access_hour,access_hour_timestamp
ORDER BY
    access_month,
    access_hour;
