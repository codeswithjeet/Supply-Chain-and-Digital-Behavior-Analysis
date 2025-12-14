-- Market and Category Profitability Analysis
WITH MarketCategoryPerformance AS(
SELECT
    market,
    category_name_cleaned,
    SUM(sales) AS total_sales,
    SUM(profit_per_order) AS total_profit
FROM
    v_supply_chain_sales
GROUP BY
    1,2
)
SELECT
    mcp.market AS Market,
    mcp.category_name_cleaned AS Catgeory,
    mcp.total_sales AS Sales,
    mcp.total_profit AS Profit,
    SUM(mcp.total_sales)OVER(PARTITION BY mcp.market) AS Market_Total_Sales,
    SUM(mcp.total_profit)OVER(PARTITION BY mcp.category_name_cleaned) AS Catgeory_Total_Profit
FROM
    MarketCategoryPerformance mcp
ORDER BY
    Profit DESC;