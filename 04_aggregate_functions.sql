-- 2. AGGREGATE FUNCTIONS: Running totals and moving averages
SELECT
    sale_month,
    monthly_revenue,
    -- Running total (ROWS UNBOUNDED PRECEDING)
    SUM(monthly_revenue) OVER (ORDER BY sale_month ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as running_total,
    -- 3-month moving average
    AVG(monthly_revenue) OVER (ORDER BY sale_month ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) as moving_avg_3month,
    -- Monthly minimum and maximum
    MIN(monthly_revenue) OVER (ORDER BY sale_month) as min_so_far,
    MAX(monthly_revenue) OVER (ORDER BY sale_month) as max_so_far
FROM (
    SELECT
        TO_CHAR(sale_date, 'YYYY-MM') as sale_month,
        SUM(amount) as monthly_revenue
    FROM transactions
    GROUP BY TO_CHAR(sale_date, 'YYYY-MM')
) AS monthly_sales
ORDER BY sale_month;
