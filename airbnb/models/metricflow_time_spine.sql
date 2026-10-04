{{
    config(materialized='table')
}}

WITH days AS (
    {{
        dbt_utils.date_spine(
            'day',
            "to_date('01/01/2000','mm/dd/yyyy')",
            "to_date('01/01/2030','mm/dd/yyyy')"
        )
    }}
)

SELECT cast(date_day AS date) AS date_day
FROM days
