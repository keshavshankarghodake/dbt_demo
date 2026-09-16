with cte as (
select 
started_at,
date(started_at) as date_started_at,
hour(started_at) as hour_started_at,
{{day_type('STARTED_AT')}} AS DAY_TYPE,
{{get_season('STARTED_AT')}} AS STATION_OF_YEAR
from {{ source('demo', 'bike') }}
)
select 
* 
from cte
