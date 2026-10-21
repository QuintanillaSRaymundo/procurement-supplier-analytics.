# Procurement & Supplier Performance Analytics

**Status:** In progress  
**Portfolio:** Supply Chain Analytics  
**Tools:** PostgreSQL, SQL, Power BI, Power Query, DAX

## Project overview

An end-to-end supply chain analytics project focused on procurement activity, supplier delivery performance, purchase order fulfillment, and quality.

**Workflow:** Data acquisition → SQL ingestion → quality checks and cleaning → dimensional modeling → Power BI and DAX → business insights.

## Business questions

- How much value is ordered, by supplier and product?
- Are suppliers delivering on time and in full?
- How do lead times and quality outcomes vary by supplier?
- Which suppliers need closer follow-up?

KPI definitions will be verified against actual source fields before analysis.

## Project files

- [Data](data/README.md) — source and provenance
- [SQL](sql/README.md) — ingestion, cleaning, and analytics scripts
- [Power BI](powerbi/README.md) — model and report
- [Images](images/README.md) — dashboard screenshots
- [Documentation](docs/README.md) — case study, findings, recommendations

## Progress

- [x] Created PostgreSQL database `procurement_analytics`
- [x] Created `purchase_orders` and imported 2,000 records in pgAdmin
- [ ] Load remaining datasets (supplier, product, quality, performance targets)
- [ ] Validate and clean the data
- [ ] Build a dimensional model
- [ ] Develop Power BI measures and visualizations
- [ ] Document business insights and publish portfolio case study

## Data attribution

This is an independently rebuilt educational portfolio project using synthetic sample data from [shahid-gani/Procurement_Supplier_Performance_Analytics_Dashboard](https://github.com/shahid-gani/Procurement_Supplier_Performance_Analytics_Dashboard). The original dataset and reference dashboard belong to the source author. New SQL scripts, modeling, DAX and business interpretation will be documented as this project's original work.

The sample dataset does not represent live procurement performance.
