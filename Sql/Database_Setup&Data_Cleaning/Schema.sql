-- 1. Table for the main transactional data: DataCoSupplyChainDataset.csv
-- Note: "Order Item Id" is chosen as a logical primary key as it uniquely identifies each line item.
CREATE TABLE supply_chain_data (
    "Type" VARCHAR(50),
    "Days for shipping (real)" INTEGER,
    "Days for shipment (scheduled)" INTEGER,
    "Benefit per order" NUMERIC(10, 2),
    "Sales per customer" NUMERIC(10, 2),
    "Delivery Status" VARCHAR(50),
    "Late_delivery_risk" SMALLINT,
    "Category Id" INTEGER,
    "Category Name" VARCHAR(100),
    "Customer City" VARCHAR(100),
    "Customer Country" VARCHAR(100),
    "Customer Email" VARCHAR(100),
    "Customer Fname" VARCHAR(100),
    "Customer Id" INTEGER,
    "Customer Lname" VARCHAR(100),
    "Customer Password" VARCHAR(100),
    "Customer Segment" VARCHAR(50),
    "Customer State" VARCHAR(50),
    "Customer Street" VARCHAR(255),
    "Customer Zipcode" VARCHAR(10), -- Treating as string due to potential leading zeros/non-numeric values
    "Department Id" INTEGER,
    "Department Name" VARCHAR(100),
    "Latitude" NUMERIC(10, 6),
    "Longitude" NUMERIC(10, 6),
    "Market" VARCHAR(50),
    "Order City" VARCHAR(100),
    "Order Country" VARCHAR(100),
    "Order Customer Id" INTEGER,
    "order date (DateOrders)" VARCHAR(50), -- Temporarily VARCHAR for bulk loading
    "Order Id" INTEGER,
    "Order Item Cardprod Id" INTEGER,
    "Order Item Discount" NUMERIC(10, 2),
    "Order Item Discount Rate" NUMERIC(5, 4),
    "Order Item Id" INTEGER PRIMARY KEY,
    "Order Item Product Price" NUMERIC(10, 2),
    "Order Item Profit Ratio" NUMERIC(5, 4),
    "Order Item Quantity" INTEGER,
    "Sales" NUMERIC(10, 2),
    "Order Item Total" NUMERIC(10, 2),
    "Order Profit Per Order" NUMERIC(10, 2),
    "Order Region" VARCHAR(100),
    "Order State" VARCHAR(100),
    "Order Status" VARCHAR(50),
    "Order Zipcode" VARCHAR(10), -- Treating as string
    "Product Card Id" INTEGER,
    "Product Category Id" INTEGER,
    "Product Description" TEXT, -- Can be null/long
    "Product Image" VARCHAR(255),
    "Product Name" VARCHAR(255),
    "Product Price" NUMERIC(10, 2),
    "Product Status" SMALLINT,
    "shipping date (DateOrders)" VARCHAR(50), -- Temporarily VARCHAR for bulk loading
    "Shipping Mode" VARCHAR(50)
);

-- 2. Table for the access logs data: tokenized_access_logs.csv
CREATE TABLE access_logs (
    "Product" VARCHAR(255),
    "Category" VARCHAR(100),
    "Date" VARCHAR(50), -- Temporarily VARCHAR for bulk loading
    "Month" VARCHAR(10),
    "Hour" SMALLINT,
    "Department" VARCHAR(50),
    "ip" VARCHAR(50),
    "url" TEXT
);