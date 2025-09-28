-- 1. RANKING FUNCTIONS: Top 5 customers by revenue per region
SELECT
    region,
    name,
    total_revenue,
    ROW_NUMBER() OVER (PARTITION BY region ORDER BY total_revenue DESC) as row_num,
    RANK() OVER (PARTITION BY region ORDER BY total_revenue DESC) as rank,
    DENSE_RANK() OVER (PARTITION BY region ORDER BY total_revenue DESC) as dense_rank,
    PERCENT_RANK() OVER (PARTITION BY region ORDER BY total_revenue DESC) as percent_rank
FROM (
    SELECT
        c.region,
        c.name,
        SUM(t.amount) as total_revenue
    FROM customers c
    JOIN transactions t ON c.customer_id = t.customer_id
    GROUP BY c.region, c.name
) AS customer_revenue
ORDER BY region, total_revenue DESC
LIMIT 15;