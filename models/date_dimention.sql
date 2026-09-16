with cte as (
select 
started_at,
date(started_at) as date_started_at,
hour(started_at) as hour_started_at,
dayname(started_at) as day_started_at
from {{ source('demo', 'bike') }}
)
select 
* 
from cte
