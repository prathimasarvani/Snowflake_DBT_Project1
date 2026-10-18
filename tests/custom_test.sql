select ROW_NUMBER() OVER (
    PARTITION BY veg_or_non_veg
    ORDER BY veg_or_non_veg 
) AS row_num FROM {{ ref('raw_test') }} qualify row_num > 1 