

## Objective
To perform Exploratory Data Analysis (EDA), apply K-Means
clustering, and identify meaningful customer segments using RFM.

## Dataset
- Total customers analyzed: 4338
- RFM features: Recency, Frequency, Monetary
- Clustering algorithm: K-Means
- Selected number of clusters: 3
- Best silhouette score among K=3 and K=4: 0.4157

## K Comparison

 K  Inertia  Silhouette_Score
 3  4299.07            0.4157
 4  3243.03            0.3795

## Final Customer Segments

         Customer_Count  Avg_Recency  Avg_Frequency  Avg_Monetary  Median_Recency  Median_Frequency  Median_Monetary  Customer_Percentage                  Customer_Segment                                                       Business_Recommendation
Cluster                                                                                                                                                                                                                                                  
0                  1320        30.10           9.84       5492.04            17.0               7.0          2570.50                30.43  Champions / High-Value Customers  Reward loyal customers with VIP benefits, exclusive offers and early access.
1                   981       255.11           1.39        397.17           253.0               1.0           290.51                22.61       At-Risk / Dormant Customers      Run win-back campaigns, personalized discounts and re-engagement emails.
2                  2037        54.70           2.05        612.71            45.0               2.0           508.80                46.96     Recent / Occasional Customers                                                                           NaN

## Business Recommendations

                         Customer_Segment                                                       Business_Recommendation
Cluster                                                                                                                
0        Champions / High-Value Customers  Reward loyal customers with VIP benefits, exclusive offers and early access.
1             At-Risk / Dormant Customers      Run win-back campaigns, personalized discounts and re-engagement emails.
2           Recent / Occasional Customers                                                                           NaN

## Key Interpretation
- Lower Recency indicates a more recent purchase.
- Higher Frequency indicates more repeat purchases.
- Higher Monetary indicates higher customer spending.
- Champions are the highest-value customers in the selected clustering.
- At-risk customers may need re-engagement campaigns.

## Important Dataset Limitation
The UCI Online Retail dataset represents retail transactions,
not fintech transactions. The RFM and clustering techniques
demonstrated here can be adapted to fintech data, but this
analysis must not be described as actual fintech customer data.

## Week 2 Deliverables
- EDA and RFM analysis
- K-Means clustering
- K comparison
- Cluster profiles
- Customer personas
- Business recommendations
- Visualizations
- Exported segmentation datasets
