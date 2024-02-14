{{ config(schema='stg') }}

SELECT
    country,
    postal_code,
    date_valid_std,
    tot_snowfall_in 
FROM 
    {{ ref('raw_history_day') }}
NATURAL INNER JOIN
    {{ ref('timestamps_helper') }}
WHERE
    country='US' AND
    tot_snowfall_in > 6.0 
ORDER BY 
    postal_code,date_valid_std