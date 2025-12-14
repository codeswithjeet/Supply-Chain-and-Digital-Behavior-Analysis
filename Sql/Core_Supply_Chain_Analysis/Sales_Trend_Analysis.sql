-- Sales Trend Analysis
SELECT
    DATE_TRUNC('month', order_date) AS sales_month,
    customer_segment,
    SUM(sales) AS monthly_sales,
    SUM(profit_per_order) AS monthly_profit,
    COUNT(DISTINCT order_id) AS monthly_orders
FROM
    v_supply_chain_sales
GROUP BY
    1, 2
ORDER BY
    sales_month, customer_segment;