with cte as (
    select 
        LEFT(trans_date, 7) AS month, 
        country, 
        count(id) as trans_count, 
        sum(amount) as trans_total_amount,
        sum(case when state = 'approved' then 1 else 0 end) as approved_count,
        sum(case when state = 'approved' then amount else 0 end) as approved_total_amount
    from 
        Transactions
    group by 
        year(trans_date), month(trans_date), country
)
select * from cte;