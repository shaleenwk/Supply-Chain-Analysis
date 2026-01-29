SELECT * FROM supply_chain_data; 

-- Clean column names
ALTER TABLE supply_chain_data 
RENAME COLUMN `Revenue generated` TO `revenue`;

SELECT DISTINCT sku
FROM supply_chain_data;

-- Top 5 SKUs that generated the most revenue
SELECT *
FROM supply_chain_data
ORDER BY revenue DESC
LIMIT 5;

-- Q1- Product type that generated the most revenue
SELECT
  product_type,
  AVG(revenue) AS avg_revenue
FROM supply_chain_data
GROUP BY product_type
ORDER BY avg_revenue DESC;

-- Q2- Supplier with the longest manufacturing lead times
SELECT
  supplier_name,
  AVG(manufacturing_lead_time) AS avg_mfg_lead_time
FROM supply_chain_data
GROUP BY supplier_name
ORDER BY avg_mfg_lead_time DESC;

-- Q3- Supplier with the highest manufacturing cost
SELECT
  supplier_name,
  AVG(manufacturing_costs) AS avg_mfg_cost
FROM supply_chain_data
GROUP BY supplier_name
ORDER BY avg_mfg_cost DESC;


-- Q4- Fastest shipping carrier
SELECT
  shipping_carriers,
  AVG(shipping_times) AS avg_ship_time
FROM supply_chain_data
GROUP BY shipping_carriers
ORDER BY avg_ship_time ASC;


-- Q5-  How shipping costs vary by transportation mode
SELECT 
    transportation_modes AS transport_mode,
    COUNT(*) AS total_shipments,
    AVG(shipping_costs) AS avg_cost,
    MIN(shipping_costs) AS min_cost,
    MAX(shipping_costs) AS max_cost,
    SUM(shipping_costs) AS total_cost
FROM supply_chain_data
GROUP BY transportation_modes
ORDER BY avg_cost DESC;

-- Q6- Relationship between defect rates and inspection results
SELECT 
    inspection_results,
    COUNT(*) AS total_inspections,
    ROUND(AVG(defect_rates), 2) AS avg_defect_rate,
    ROUND(MIN(defect_rates), 2) AS min_defect_rate,
    ROUND(MAX(defect_rates), 2) AS max_defect_rate
FROM supply_chain_data
GROUP BY inspection_results
ORDER BY avg_defect_rate DESC;


-- Q7 - How different demographic groups contribute to revenue and whether supply levels align with their demand
SELECT
    customer_demographics,
    SUM(revenue) AS total_revenue,
    AVG(stock_levels) AS avg_stock_level
FROM supply_chain_data
GROUP BY customer_demographics
ORDER BY total_revenue DESC;
