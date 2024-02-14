SELECT
    postal_code
    , country
    , AVG_OF__DAILY_MIN_TEMPERATURE_AIR_F
FROM {{ source('standard_tile', 'climatology_day') }}
WHERE country = 'US'
LIMIT 10
