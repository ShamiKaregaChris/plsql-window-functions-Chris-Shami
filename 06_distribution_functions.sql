-- 4. DISTRIBUTION FUNCTIONS: Customer segmentation
SELECT
    customer_id,
    name,
    region,
    total_spent,
    -- Segment into 4 quartiles (1 = Top spenders, 4 = Lowest spenders)
    NTILE(4) OVER (ORDER BY total_spent DESC) as spending_quartile,
    -- Cumulative distribution (percentage of customers with equal or lower spending)
    ROUND(CUME_DIST() OVER (ORDER BY total_spent DESC) * 100, 2) as cumulative_dist_percent,
    -- Percent rank (percentage of customers with lower spending)
    ROUND(PERCENT_RANK() OVER (ORDER BY total_spent DESC) * 100, 2) as percent_rank
FROM (
    SELECT
        c.customer_id,
        c.name,
        c.region,
        SUM(t.amount) as total_spent
    FROM customers c
    JOIN transactions t ON c.customer_id = t.custo