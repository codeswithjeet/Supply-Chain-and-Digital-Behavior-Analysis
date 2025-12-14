-- View for the Clean Supply Chain Data (Orders/Sales Fact Table)
CREATE VIEW v_supply_chain_sales AS
SELECT
    "Order Item Id" AS order_item_id,
    "Order Id" AS order_id,
    "Order Customer Id" AS customer_id,
    "order date (DateOrders)" AS order_date,
    "shipping date (DateOrders)" AS shipping_date,
    "Order Status" AS order_status,
    "Delivery Status" AS delivery_status,
    "Late_delivery_risk" AS late_delivery_risk,
    "Shipping Mode" AS shipping_mode,
    "Days for shipping (real)" AS days_shipping_real,
    "Days for shipment (scheduled)" AS days_shipping_scheduled,
    "Market" AS market,
    "Order Region" AS order_region,
    "Order Country" AS order_country,
    "Product Name" AS product_name_cleaned, -- Link key
    "Product Card Id" AS product_card_id,
    "Category Name" AS category_name_cleaned, -- Link key
    "Department Name" AS department_name_cleaned, -- Link key
    "Order Item Quantity" AS order_item_quantity,
    "Sales" AS sales,
    "Order Item Total" AS order_item_total,
    "Order Profit Per Order" AS profit_per_order,
    "Benefit per order" AS benefit_per_order,
    "Customer Segment" AS customer_segment
FROM
    supply_chain_data;