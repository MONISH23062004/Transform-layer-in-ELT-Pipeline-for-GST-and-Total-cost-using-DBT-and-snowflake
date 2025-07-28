SELECT 
  order_id,
  customer_id,
  order_date,
  total_amount,
  total_amount * 0.18 AS gst_amount,
  total_amount + (total_amount * 0.18) AS total_price_gst_amount
FROM {{ source('raw', 'orders') }}
