-- Core Business KPIs
SELECT
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(sales) AS total_revenue,
    SUM(profit_per_order) AS total_profit,
    ROUND(AVG(profit_per_order), 2) AS avg_profit_per_order,
    SUM(CASE WHEN delivery_status='Late delivery' THEN 1 ELSE 0 END) AS total_late_deliveries,
    ROUND((SUM(CASE WHEN delivery_status='Late delivery' THEN 1 ELSE 0 END)*100)/COUNT(order_id),2) AS late_delivery_pct
FROM
    v_supply_chain_sales;
