# Write your MySQL query statement below
select round(sum(immediate) / count(immediate) * 100, 2) as immediate_percentage
    from (
        select if(min(order_date)=min(customer_pref_delivery_date), 1, 0) as immediate
            from Delivery
            group by customer_id
        ) new_table
