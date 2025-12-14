-- Logistics and Risk Analysis
SELECT
    shipping_mode,
    order_region,
    COUNT(*) AS total_shipments,
    SUM(CASE WHEN late_delivery_risk=1 THEN 1 ELSE 0 END) AS late_shipments,
    (SUM(CASE WHEN delivery_status='Late delivery' THEN 1 ELSE 0 END)*100)/COUNT(*) AS late_rate_pct,
    ROUND(AVG(days_shipping_real),0) AS avg_shipping_days,
    ROUND(AVG(days_shipping_scheduled),0) AS avg_scheduled_shipping_days
FROM
    v_supply_chain_sales
GROUP BY
    order_region,
    shipping_mode
ORDER BY
    late_rate_pct DESC,
    total_shipments DESC;
