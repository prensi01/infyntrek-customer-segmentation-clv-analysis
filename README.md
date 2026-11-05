<<<<<<< HEAD
# Customer Segmentation and Lifetime Value (CLV) Analysis

=======
# README

# Customer Segmentation and Lifetime Value (CLV) Analysis

>>>>>>> c169989 (Update Project 2 README)
**Infyntrek – Data Analyst Internship | Project 2**

## 1. Project Overview

This project focuses on analyzing online retail customer transaction data to understand customer purchasing behavior, identify meaningful customer segments, and analyze Customer Lifetime Value (CLV).

The objective was to perform data preparation, exploratory data analysis, RFM analysis, customer segmentation using K-Means clustering, CLV analysis, and business interpretation using Python, SQL, and Power BI.

The project uses customer-level transaction data to understand purchasing patterns based on Recency, Frequency, and Monetary value. Customers were analyzed and grouped into meaningful segments to support customer retention, marketing strategy, and business decision-making.

The project also includes an interactive Power BI dashboard, SQL analysis, analytical reports, and presentation material to communicate the findings.

**Internship Organization:** Infyntrek  
**Project:** Customer Segmentation and Lifetime Value (CLV) Analysis  
**Department:** Data Analytics  
**Project Domain:** Retail / Customer Analytics  
**Project Duration:** 4 Weeks

## 2. Project Objectives

The main objectives of this project were:

- Understand and analyze customer transaction data.
- Perform data quality checks and data cleaning.
- Identify missing values and duplicate records.
- Analyze customer purchasing behavior.
- Perform exploratory data analysis using Python.
- Conduct SQL-based transaction analysis.
- Create customer-level RFM metrics.
- Segment customers using K-Means clustering.
- Analyze Customer Lifetime Value (CLV).
- Identify valuable and less-engaged customer groups.
- Generate customer-level and business-level insights.
- Develop an interactive Power BI dashboard.
- Prepare final project documentation and presentation material.

## 3. Dataset Information

**Dataset Name:** Online Retail Dataset  
**Dataset File:** `Online Retail.xlsx`

The dataset contains online retail transaction records, including invoice details, product information, quantities, prices, customer IDs, and country information.

### Original Dataset Details

| Description | Value |
|---|---:|
| Total Records | 541,909 |
| Original Columns | 8 |
| Unique Customers | 4,372 |
| Unique Invoices | 25,900 |
| Duplicate Records | 5,268 |
| Missing Values | 136,534 |

### Dataset Columns

The dataset contains the following columns:

- **InvoiceNo:** Invoice number associated with a transaction.
- **StockCode:** Product code.
- **Description:** Product description.
- **Quantity:** Number of units purchased.
- **InvoiceDate:** Date and time of the transaction.
- **UnitPrice:** Price per unit.
- **CustomerID:** Unique customer identifier.
- **Country:** Customer's country.

### Target Analysis

This project is an unsupervised customer analytics project. The main objective is to discover customer purchasing patterns and meaningful customer groups rather than predict a predefined target variable.

## 4. Technologies and Tools Used

### Programming and Data Analysis
- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn

### Machine Learning
- Scikit-learn
- K-Means Clustering

### Customer Analytics
- RFM Analysis
- Customer Segmentation
- Customer Lifetime Value (CLV) Analysis

### Database
- SQL
- Database Analysis

### Dashboard and Visualization
- Microsoft Power BI
- Power Query

### Development Environment
- Visual Studio Code
- Jupyter Notebook

### Version Control
- Git
- GitHub

# Week 1: Data Preparation and Initial Exploration

## 5. Week 1 Objective

The objective of Week 1 was to understand the dataset, inspect its structure, identify data quality issues, clean the transaction records, and prepare the dataset for customer-level analysis.

### 5.1 Data Loading and Inspection

The dataset was loaded into Python using Pandas.

Initial inspection included:

- Checking the number of rows and columns.
- Inspecting column names and data types.
- Viewing sample transaction records.
- Checking missing values.
- Identifying duplicate records.
- Understanding customer and invoice information.
- Examining quantity and unit price values.

The original dataset contained 541,909 records and 8 columns.

### 5.2 Data Quality Analysis

The following data quality checks were performed:

- Missing value analysis.
- Duplicate record identification.
- Data type verification.
- Customer ID validation.
- Invoice number analysis.
- Quantity validation.
- Unit price validation.

The dataset contained missing values, particularly in the CustomerID column. Duplicate records were also identified.

### 5.3 Data Cleaning

The following cleaning steps were performed:

- Removed records with missing CustomerID values.
- Removed duplicate records.
- Excluded credit invoices beginning with `C`.
- Removed transactions with non-positive quantities.
- Removed transactions with non-positive unit prices.
- Created a `TotalAmount` column.

The TotalAmount column was calculated using:

```python
df["TotalAmount"] = df["Quantity"] * df["UnitPrice"]
```

### Cleaned Dataset Details

| Description | Value |
|---|---:|
| Original Records | 541,909 |
| Records After Cleaning | 392,692 |
| Records Removed | 149,217 |
| Original Columns | 8 |
| Cleaned Columns | 9 |
| Unique Customers After Cleaning | 4,338 |
| Remaining Missing Values | 0 |
| Remaining Duplicate Records | 0 |

### 5.4 Initial Transaction Analysis

Initial transaction analysis was performed to understand:

- Total transactions.
- Unique customers.
- Unique invoices.
- Product purchasing patterns.
- Quantity distribution.
- Unit price distribution.
- Country-wise transaction distribution.
- Customer purchasing behavior.

### 5.5 SQL Data Analysis

SQL was used to perform transaction-level analysis and support the data analytics workflow.

The analysis focused on:

- Counting transaction records.
- Identifying unique customers.
- Analyzing invoice records.
- Examining transaction amounts.
- Grouping transactions by customer.
- Supporting customer-level analysis.

### 5.6 Week 1 Conclusion

Week 1 successfully completed the data preparation and initial exploration phase.

The original dataset was inspected and cleaned. Missing customer records, duplicate transactions, credit invoices, and invalid quantity and price values were handled.

The cleaned dataset contained 392,692 transaction records and 4,338 unique customers. The prepared data provided a reliable foundation for customer-level analysis.

# Week 2: Exploratory Data Analysis and RFM Analysis

## 6. Week 2 Objective

The objective of Week 2 was to perform exploratory data analysis and understand customer purchasing behavior using transaction patterns and RFM metrics.

The analysis focused on customer recency, purchase frequency, monetary value, transaction distribution, and customer-level summaries.

### 6.1 Exploratory Data Analysis (EDA)

EDA was performed to understand the structure and distribution of the cleaned retail dataset.

The analysis included:

- Transaction quantity distribution.
- Unit price distribution.
- Total transaction amount distribution.
- Customer purchasing behavior.
- Invoice-level analysis.
- Country-wise transaction analysis.
- Customer spending patterns.

### 6.2 Total Transaction Amount Analysis

A new `TotalAmount` column was created to calculate the total value of each transaction line.

```python
df["TotalAmount"] = df["Quantity"] * df["UnitPrice"]
```

This column was used to analyze customer spending and transaction-level monetary values.

### 6.3 RFM Analysis

RFM analysis was performed to understand customer purchasing behavior using three important metrics.

**Recency**

Recency measures how recently a customer made a purchase. A lower Recency value indicates a more recent purchase.

**Frequency**

Frequency measures how often a customer made purchases. In this project, it was calculated using the customer's invoice activity.

**Monetary**

Monetary value measures the total amount spent by a customer.

### RFM Metrics

| Metric | Description |
|---|---|
| Recency | Number of days since the customer's latest purchase |
| Frequency | Number of unique invoices associated with the customer |
| Monetary | Total spending of the customer |

The snapshot date used for RFM analysis was:

`2011-12-10 12:50`

### 6.4 RFM Dataset Creation

Customer-level RFM metrics were created by grouping the cleaned transaction data using CustomerID.

The resulting RFM dataset contained:

| Description | Value |
|---|---:|
| Unique Customers | 4,338 |
| RFM Metrics | 3 |
| Total RFM Columns | 4 |

The RFM dataset included:

- CustomerID
- Recency
- Frequency
- Monetary

The processed transaction and RFM datasets were saved for further analysis.

### 6.5 RFM Statistical Summary

| Metric | Mean | Maximum |
|---|---:|---:|
| Recency | 92.54 days | 374 days |
| Frequency | 4.27 invoices | 209 invoices |
| Monetary | 2,048.69 | 280,206.02 |

These statistics helped understand differences in customer engagement, purchase frequency, and spending behavior.

### 6.6 Week 2 Key Findings

- The original dataset contained 541,909 transaction records.
- Data cleaning reduced the dataset to 392,692 records.
- The cleaned dataset contained 4,338 unique customers.
- Customer purchasing behavior varied significantly.
- RFM metrics provided a structured way to compare customers.
- Some customers showed higher purchase frequency and monetary value.
- Recency helped identify customers who had not purchased recently.
- Customer-level RFM analysis provided a foundation for segmentation.

### 6.7 Week 2 Conclusion

Week 2 successfully completed the exploratory data analysis and RFM analysis phase.

The cleaned transaction dataset was analyzed to understand customer purchasing behavior. Customer-level Recency, Frequency, and Monetary metrics were created to support segmentation and CLV analysis.

# Week 3: Customer Segmentation and CLV Analysis

## 7. Week 3 Objective

The objective of Week 3 was to use customer-level RFM metrics for segmentation, analyze customer groups, and understand customer lifetime value.

The analysis focused on customer behavior, purchasing patterns, cluster profiles, and business interpretation.

### 7.1 Feature Preparation

The RFM dataset was prepared for customer segmentation.

The main features used for customer-level analysis were:

- Recency
- Frequency
- Monetary

These metrics represented customer engagement, purchase frequency, and spending behavior.

### 7.2 Customer Segmentation Using K-Means

K-Means clustering was used to group customers with similar purchasing behavior.

The clustering process included:

- Preparing customer-level RFM features.
- Applying suitable data preprocessing.
- Developing K-Means clustering.
- Assigning customers to clusters.
- Analyzing cluster-level customer behavior.
- Creating customer segment profiles.

K-Means helped identify groups of customers with similar RFM characteristics.

### 7.3 Customer Segment Analysis

Customer segments were analyzed based on their Recency, Frequency, and Monetary characteristics.

The segment analysis focused on identifying:

- Customers with high purchasing activity.
- Customers with higher monetary value.
- Customers with lower purchase frequency.
- Customers who had not purchased recently.
- Customers who may require retention campaigns.

The final segment names and interpretations were based on the observed cluster profiles.

### 7.4 Customer Lifetime Value (CLV) Analysis

Customer Lifetime Value analysis was performed to understand customer monetary contribution and identify valuable customer groups.

The analysis focused on:

- Customer-level monetary value.
- Customer purchase frequency.
- Customer segment value.
- Comparison of customer groups.
- Identification of valuable customer segments.
- Business recommendations for customer retention.

CLV analysis helps businesses understand customer value and make informed decisions regarding customer engagement and retention.

### 7.5 Cluster Profile Analysis

Cluster profiles were prepared to compare customer groups.

The analysis included:

- Average Recency.
- Average Frequency.
- Average Monetary value.
- Customer count by cluster.
- Comparison of customer purchasing behavior.

The cluster profiles were used to interpret the characteristics of each customer group.

### 7.6 Week 3 Key Findings

- RFM metrics helped summarize customer purchasing behavior.
- K-Means clustering was used to identify customer groups.
- Customer groups showed differences in purchasing activity and monetary value.
- Cluster profiles helped interpret customer behavior.
- CLV analysis supported the identification of valuable customer groups.
- Customer segmentation can help businesses develop more targeted marketing and retention strategies.

### 7.7 Week 3 Conclusion

Week 3 successfully completed customer segmentation and CLV analysis.

Customer-level RFM metrics were used to develop customer groups using K-Means clustering. Cluster profiles and customer value analysis helped interpret customer behavior and identify potential business opportunities.

# Week 4: Business Insights, Power BI Dashboard and Final Report

## 8. Week 4 Objective

The objective of Week 4 was to interpret customer segmentation results, prepare business insights and recommendations, develop a Power BI dashboard, and organize the final project documentation.

### 8.1 Customer Segment Interpretation

Customer segments were examined to understand their purchasing behavior and business value.

The analysis focused on:

- Customer engagement.
- Purchase frequency.
- Monetary contribution.
- Customer value differences.
- Potential retention opportunities.
- Segment-level business implications.

### 8.2 Business Insights

The project provided a structured view of customer purchasing behavior through RFM analysis, customer segmentation, and CLV analysis.

Important observations included:

- Customer purchasing behavior differs across customers.
- RFM metrics help identify customer engagement and spending patterns.
- Customer segmentation can support targeted marketing activities.
- Customer value analysis helps identify customers who contribute more to business revenue.
- Recency analysis can help identify customers who may need re-engagement.
- Customer segment profiles can support business decision-making.

### 8.3 Business Recommendations

Based on the customer analytics workflow, the following recommendations can be considered:

- Develop targeted marketing campaigns for different customer segments.
- Focus retention activities on valuable customers.
- Re-engage customers who have not purchased recently.
- Encourage repeat purchases among low-frequency customers.
- Provide suitable offers based on customer purchasing behavior.
- Monitor customer segment changes over time.
- Review customer value metrics regularly.
- Use customer segmentation to support personalized business strategies.

### 8.4 Power BI Dashboard Development

An interactive dashboard was developed using Microsoft Power BI to present customer analytics and segmentation results.

The dashboard dataset was prepared using Python and imported into Power BI.

Power Query was used to review and prepare the data before creating dashboard visuals.

### Dashboard Analysis

The dashboard was designed to communicate:

- Customer-level metrics.
- Customer segment distribution.
- RFM analysis.
- Customer value analysis.
- Customer purchasing patterns.
- Segment-level comparisons.

### Dashboard Purpose

The dashboard provides a visual overview of customer purchasing behavior and customer segments.

It helps users understand customer value, compare customer groups, and communicate the analysis to business stakeholders.

**Dashboard File:** `Customer_Segmentation_CLV_Dashboard.pbix`

### 8.5 Final Analytical Report

A final project report was prepared to document the complete analytical workflow.

The report includes:

- Executive Summary.
- Project Objectives.
- Dataset Overview.
- Data Preparation.
- Exploratory Data Analysis.
- RFM Analysis.
- Customer Segmentation.
- K-Means Clustering.
- CLV Analysis.
- Customer Segment Interpretation.
- Business Insights.
- Recommendations.
- Project Limitations.
- Conclusion.

**Report File:** `week4_final_project_report.md`

### 8.6 Project Presentation

Presentation material was prepared to summarize the project workflow and key findings.

The presentation covers:

- Project Title.
- Project Overview.
- Project Objectives.
- Dataset Overview.
- Data Cleaning.
- Exploratory Data Analysis.
- RFM Analysis.
- Customer Segmentation.
- K-Means Clustering.
- CLV Analysis.
- Power BI Dashboard.
- Business Insights.
- Recommendations.
- Limitations and Future Scope.
- Conclusion.

**Presentation File:** `Customer_Segmentation_CLV_Project_Presentation.pptx`

### 8.7 Week 4 Conclusion

Week 4 completed the final analysis and documentation phase of the project.

Customer segmentation results were interpreted, business insights and recommendations were documented, and an interactive Power BI dashboard was developed.

The final report and presentation summarize the complete customer analytics workflow.

# 9. Overall Project Results

The project followed an end-to-end data analytics workflow, starting from raw transaction data and ending with customer segmentation, CLV analysis, a dashboard, and final documentation.

| Week | Project Phase | Status |
|---|---|---|
| Week 1 | Data Preparation and Initial Exploration | Completed |
| Week 2 | Exploratory Data Analysis and RFM Analysis | Completed |
| Week 3 | Customer Segmentation and CLV Analysis | Completed |
| Week 4 | Business Insights, Report and Dashboard | Completed |

### Final Dataset Summary

| Metric | Result |
|---|---:|
| Original Records | 541,909 |
| Cleaned Records | 392,692 |
| Records Removed | 149,217 |
| Unique Customers After Cleaning | 4,338 |
| RFM Dataset Customers | 4,338 |
| RFM Metrics | Recency, Frequency, Monetary |

# 10. Project Structure

The project files are organized as follows:

```text
Customer Segmentation and Lifetime Value (CLV) Analysis/
│
├── Customer_Segmentation_CLV.ipynb
├── Customer_Segmentation_CLV_Dashboard.pbix
├── Customer_Segmentation_CLV_Project_Presentation.pptx
├── README.md
├── requirements.txt
├── .gitignore
│
├── Data/
│   ├── raw/
│   │   └── Online Retail.xlsx
│   │
│   └── processed/
│       ├── cleaned_transactions.csv
│       ├── customer_rfm.csv
│       └── [additional processed datasets]
│
├── Database/
│   └── [database-related files]
│
├── reports/
│   ├── week2_summary.md
│   ├── week3_summary.md
│   └── week4_final_project_report.md
│
└── sql/
    └── [SQL analysis files]
```

**Note:** The structure lists the main project files and expected data organization. Include only files and folders that are present in the final project repository.

# 11. Project Limitations

The project has some limitations that should be considered:

- The dataset represents historical retail transactions.
- CustomerID is missing from some original transaction records.
- The dataset does not provide detailed customer demographic information.
- RFM metrics summarize customer behavior but may not capture every aspect of customer value.
- K-Means clustering results depend on feature preparation and clustering settings.
- Customer segments may change as new transactions become available.
- CLV analysis is based on the available transaction history and assumptions used in the analysis.
- The analysis does not represent a live customer analytics system.

The segmentation and CLV results should be interpreted within the limitations of the available dataset.

# 12. Future Scope

The project can be improved further through the following activities:

- Update customer segmentation using newer transaction data.
- Compare different clustering algorithms.
- Evaluate alternative clustering settings.
- Improve customer segment interpretation.
- Develop more advanced CLV estimation approaches.
- Incorporate customer demographic information when available.
- Build customer retention prediction models.
- Develop customer churn analysis.
- Create automated customer segmentation pipelines.
- Enhance the Power BI dashboard with additional business KPIs.
- Monitor customer segment changes over time.

# 13. Final Conclusion

The Customer Segmentation and Lifetime Value (CLV) Analysis project demonstrates an end-to-end customer analytics workflow using retail transaction data.

The project covered data preparation, SQL-based analysis, exploratory data analysis, RFM analysis, customer segmentation using K-Means clustering, CLV analysis, business insights, and Power BI dashboard development.

The original dataset contained 541,909 transaction records. After data cleaning, 392,692 records and 4,338 unique customers remained.

RFM analysis was used to summarize customer purchasing behavior through Recency, Frequency, and Monetary value. K-Means clustering was used to identify customer groups with similar purchasing patterns.

The project demonstrates how customer analytics can support customer segmentation, customer value analysis, targeted marketing, and retention strategies.

Overall, this project provided practical experience in Python, SQL, data cleaning, exploratory data analysis, machine learning, customer analytics, data visualization, and business reporting.

**Project:** Customer Segmentation and Lifetime Value (CLV) Analysis  
**Organization:** Infyntrek  
**Program:** Data Analyst Internship  
**Project Domain:** Retail Analytics and Customer Segmentation
