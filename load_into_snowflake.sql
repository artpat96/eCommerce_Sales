CREATE OR REPLACE integration s3_int
 type = external_stage
 storage_provider = 'S3'
 enabled = true
 storage_aws_role_arn = 'arn:aws:iam::119613279016:role/snowflake-access'
 storage_allowed_locations = ('s3://ecommerce-sales-project/gold/')

CREATE OR REPLACE table final_orders (
    order_id STRING,
    customer_id STRING,
    order_status STRING,
    order_purchase_date DATE,
    order_estimated_delivery_date DATE,
    order_delivery_date DATE,
    order_item_id INT,
    product_id STRING,
    seller_id STRING,
    price FLOAT,
    freight_value FLOAT,
    total_price FLOAT,
    customer_unique_id STRING,
    zip_code INT,
    customer_city STRING,
    customer_state STRING
);

CREATE OR REPLACE table final_product_payments (
    order_id STRING,
    product_category STRING,
    product_weight_g INT,
    product_length_cm INT,
    product_height_cm INT,
    product_width_cm INT,
    payment_sequential INT,
    payment_type STRING,
    payment_installments INT,
    payment_value FLOAT,
    payment_processing_time DATE
);

CREATE OR REPLACE stage ecomm_stag
 storage_integration = s3_int
 url = 's3://ecommerce-sales-project/gold/'

COPY INTO final_orders
 from @ecomm_stage
 file_format = (type = parquet);

COPY INTO final_product_payments
 from @ecomm_stage
 file_format = (type = parquet);