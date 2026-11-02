
# Customer Segmentation and Lifetime Value (CLV) Analysis

## 1. Project Overview

This project analyzes customer purchasing behavior using RFM analysis,
K-Means clustering, and historical Customer Lifetime Value (CLV).

The objective is to identify valuable customer groups, analyze customer
retention, and provide actionable business recommendations.

## 2. Dataset Overview

- Total Customers: 4,338
- Total Historical Revenue: 8,887,208.89
- Average Historical CLV: 2,048.69
- Median Historical CLV: 668.57
- Inactive Customer Percentage: 33.40%

## 3. Tools and Technologies

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Scikit-learn
- Jupyter Notebook
- SQL
- Power BI / Tableau

## 4. Project Methodology

1. Data loading and data cleaning
2. Exploratory Data Analysis
3. RFM feature calculation
4. Customer segmentation using K-Means
5. Cluster profiling
6. Historical CLV calculation
7. CLV category analysis
8. Segment-wise revenue analysis
9. Customer retention analysis
10. Business insights and recommendations
11. Final dashboard and documentation

## 5. Customer Segment Summary

         Customer_Count  Average_Recency  Average_Frequency  Average_CLV  Median_CLV  Total_Revenue  Customer_Percentage  Revenue_Contribution_Percentage
Cluster                                                                                                                                                  
0                  1377            58.04               1.51       384.22      341.36      529065.50                31.74                             5.95
1                   938           259.41               1.37       385.39      294.18      361494.46                21.62                             4.07
2                   571            19.77              15.84      9823.43     4521.49     5609180.83                13.16                            63.12
3                  1452            46.06               4.21      1644.26     1316.16     2387468.10                33.47                            26.86

## 6. Cluster Interpretation

 Segment  Average_Recency  Average_Frequency  Average_CLV                Interpretation
       0            58.04               1.51       384.22 Recent / Occasional Customers
       1           259.41               1.37       385.39   At-Risk / Dormant Customers
       2            19.77              15.84      9823.43       Highest Value Customers
       3            46.06               4.21      1644.26    Frequent / Loyal Customers

## 7. Key Business Insights

- Total customers analyzed: 4,338.
- Total historical revenue: 8,887,208.89.
- Average historical CLV: 2,048.69.
- Median historical CLV: 668.57.
- Highest revenue segment: 2.
- Highest average CLV segment: 2.
- 33.40% of customers are classified as inactive using Recency > 90 days.
- Segment 2 contributes 63.12% of historical revenue.

## 8. Business Recommendations

- **Low Value:** Use personalized offers, bundles, and relevant product recommendations to encourage repeat purchases.
- **Medium Value:** Improve engagement through loyalty programs and targeted customer recommendations.
- **High Value:** Provide exclusive benefits and encourage customers to increase their purchase frequency.
- **Very High Value:** Focus on VIP rewards, premium services, and long-term customer relationships.

## 9. Limitations

Historical CLV is calculated using past customer spending.
It does not predict future customer revenue or profitability.

The dataset is based on retail transactions and should not be
represented as actual fintech customer data.

Customer inactivity is defined using a Recency threshold of
more than 90 days. This is an analytical assumption.

## 10. Conclusion

The project demonstrates how customer transaction data can be used
to understand purchasing behavior, identify high-value customers,
analyze customer segments, and support business decisions.

The findings can help businesses improve customer retention,
personalize marketing campaigns, and focus on valuable customers.

## 11. Final Deliverables

- Customer Segmentation Notebook
- RFM Analysis
- Customer Segmentation
- Historical CLV Analysis
- Customer Ranking
- Segment-wise Revenue Analysis
- Customer Retention Analysis
- Final Dashboard
- Business Recommendations
- Power BI Ready Dataset
- GitHub README
- Project Presentation
