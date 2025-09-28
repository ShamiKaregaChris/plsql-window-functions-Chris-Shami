-- 3. NAVIGATION FUNCTIONS: Month-over-month growth analysis
WITH monthly_sales AS (
    SELECT
        TO_CHAR(sale_date, 'YYYY-MM') as sale_month,
        SUM(amount) as monthly_revenue
    FROM transactions
    GROUP BY TO_CHAR(sale_date, 'YYYY-MM')
)
SELECT
    sale_month,
    monthly_revenue,
    -- Previous month revenue
    LAG(monthly_revenue) OVER (ORDER BY sale_month) as prev_month_revenue,
    -- Next month revenue
    LEAD(monthly_revenue) OVER (ORDER BY sale_month) as next_month_revenue,
    -- Month-over-month growth percentage
    ROUND(
        ((monthly_revenue - LAG(monthly_revenue) OVER (ORDER BY sale_month))
        / LAG(monthly_revenue) OVER (ORDER BY sale_month)) * 100, 2
    ) as growth_percentage,
    -- Difference from first month
    monthly_revenue - FIRST_VALUE(monthly_revenue) OVER (ORDER BY sale_month) as diff_from_first_month
FROM monthly_sales
ORDER BY sale_month;