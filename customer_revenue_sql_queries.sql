-- Q1: Revenue by customer value segment
SELECT
    customer_value_segment,
    COUNT(*) AS customers,
    SUM(purchase_amount) AS total_revenue,
    ROUND(AVG(purchase_amount), 2) AS avg_purchase
FROM customer
GROUP BY customer_value_segment
ORDER BY total_revenue DESC;

-- Q2: Discount usage by customer segment
SELECT
    customer_value_segment,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END) AS discounted_orders,
    ROUND(
        100.0 *
        SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS discount_usage_pct
FROM customer
GROUP BY customer_value_segment
ORDER BY discount_usage_pct DESC;

--Q3:Which products have the highest average spending?
SELECT
    item_purchased,
    ROUND(AVG(purchase_amount), 2) AS avg_spend
FROM customer
GROUP BY item_purchased
ORDER BY avg_spend DESC
LIMIT 5;

--Q4. Do discounts increase average spending?
SELECT
    discount_applied,
    ROUND(AVG(purchase_amount), 2) AS avg_spend
FROM customer
GROUP BY discount_applied;

-- Q5: Discounted vs non-discounted purchase behavior
SELECT
    discount_applied,
    COUNT(*) AS orders,
    ROUND(AVG(purchase_amount), 2) AS avg_purchase,
    SUM(purchase_amount) AS total_revenue
FROM customer
GROUP BY discount_applied;


-- Q6: Subscription rate by customer segment
SELECT
    customer_value_segment,
    COUNT(*) AS customers,
    SUM(CASE WHEN subscription_status = 'Yes' THEN 1 ELSE 0 END) AS subscribers,
    ROUND(
        100.0 *
        SUM(CASE WHEN subscription_status = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS subscription_rate
FROM customer
GROUP BY customer_value_segment
ORDER BY subscription_rate DESC;

--Q7. Are products with high discount dependency actually generating higher transaction values?
SELECT
    item_purchased,
    COUNT(*) AS orders,
    ROUND(AVG(purchase_amount), 2) AS avg_purchase,
    ROUND(100.0 * AVG(
        CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END
    ), 2) AS discount_rate
FROM customer
GROUP BY item_purchased
ORDER BY discount_rate DESC;

--Q8 Which customer segments use discounts the most?
SELECT
    customer_value_segment,
    ROUND(AVG(discount_flag) * 100, 2) AS discount_rate
FROM customer
GROUP BY customer_value_segment
ORDER BY discount_rate DESC;

--Q9. Which age group generates the most revenue?
SELECT
    age_group,
    SUM(purchase_amount) AS revenue
FROM customer
GROUP BY age_group
ORDER BY revenue DESC;
