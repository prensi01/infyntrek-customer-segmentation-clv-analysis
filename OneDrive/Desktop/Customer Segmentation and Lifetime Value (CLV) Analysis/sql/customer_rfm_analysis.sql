

SELECT

    CustomerID,

    CAST(

        julianday(

            datetime(

                (SELECT MAX(InvoiceDate)
                 FROM transactions),

                '+1 day'

            )

        )

        -

        julianday(MAX(InvoiceDate))

        AS INTEGER

    ) AS Recency,

    COUNT(DISTINCT InvoiceNo) AS Frequency,

    ROUND(SUM(TotalAmount), 2) AS Monetary

FROM transactions

GROUP BY CustomerID

ORDER BY CustomerID;

