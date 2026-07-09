# Supply Chain Performance Analysis
End-to-end analysis of supply chain operations for a fashion and beauty startup, using SQL to uncover bottlenecks, cost drivers, and revenue patterns across manufacturing, logistics, and quality control.


**Tools:** MySQL · Microsoft Excel · Data visualization

## Overview
> This project examines how products move from supplier to customer - covering manufacturing lead times, shipping performance, defect rates, and revenue by product and demographic segment.
The goal is to answer practical operations questions: which suppliers and carriers perform best, where costs concentrate, and whether inventory levels align with customer demand.
---

## Repository Contents
| File | Description |
|------|-------------|
| `sca worksheet.csv` | Source dataset (100 SKUs, 24 attributes) |
| `sca sql project.sql` | Data cleaning and analytical SQL queries |
| `sca dashboard.pdf` | Dashboard summarizing key supply chain KPIs |


## Business Questions Answered
The SQL script (`sca sql project.sql`) addresses seven core questions:
1. **Which product type generates the highest average revenue?**
2. **Which supplier has the longest manufacturing lead time?**
3. **Which supplier has the highest manufacturing cost?**
4. **Which shipping carrier is fastest on average?**
5. **How do shipping costs vary by transportation mode?**
6. **How do defect rates relate to inspection outcomes?**
7. **How do customer demographics contribute to revenue - and do stock levels match demand?**
Additional queries include top-performing SKUs by revenue and data prep (e.g. standardizing the `revenue` column).


## Author
Shaleen K — Data Science & Analytics

## License
This project is for educational purposes.

Dataset credit: Kaggle — Supply Chain Dataset
