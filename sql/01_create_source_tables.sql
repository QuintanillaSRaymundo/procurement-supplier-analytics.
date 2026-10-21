-- Procurement & Supplier Performance Analytics
-- Run in pgAdmin Query Tool connected to procurement_analytics.
-- purchase_orders was created and imported separately.
-- Stage tables are intentionally loaded without foreign keys; validate data first.

CREATE TABLE IF NOT EXISTS supplier_master (
  supplier_id VARCHAR(20),
  supplier_name TEXT,
  supplier_category TEXT,
  country TEXT,
  city TEXT,
  supplier_type TEXT,
  contract_start_date DATE,
  payment_terms TEXT,
  preferred_status VARCHAR(10),
  contact_person TEXT,
  email TEXT,
  phone TEXT
);

CREATE TABLE IF NOT EXISTS product_master (
  product_id VARCHAR(20),
  product_name TEXT,
  category TEXT,
  unit VARCHAR(30),
  standard_cost NUMERIC(14,2)
);

CREATE TABLE IF NOT EXISTS quality_inspection (
  po_number VARCHAR(20),
  inspection_status TEXT,
  accepted_quantity INTEGER,
  rejected_quantity INTEGER,
  defect_type TEXT
);

CREATE TABLE IF NOT EXISTS supplier_performance_targets (
  supplier_id VARCHAR(20),
  target_on_time_delivery NUMERIC(8,5),
  target_defect_rate NUMERIC(8,5),
  target_lead_time_days INTEGER
);

-- Once CSV files have been imported through pgAdmin:
SELECT 'purchase_orders' AS source_table, COUNT(*) AS rows_loaded FROM purchase_orders
UNION ALL SELECT 'supplier_master', COUNT(*) FROM supplier_master
UNION ALL SELECT 'product_master', COUNT(*) FROM product_master
UNION ALL SELECT 'quality_inspection', COUNT(*) FROM quality_inspection
UNION ALL SELECT 'supplier_performance_targets', COUNT(*) FROM supplier_performance_targets
ORDER BY source_table;
