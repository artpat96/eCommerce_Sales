# eCommerce_Sales

The goal of the project was to perform 3 main steps representing an ETL job. 
The architecture of the project is illustrated in the repository in the architecture.jpg file.

### Step 1 - Data Ingestion

This step focused on acquiring data from files of various formats, entering them into a bucket in AWS S3 and ingesting them into notebooks located in the Databricks space.

### Step 2 - Data Transformation

This step was to transform the data according to the guidelines dissected in the requirements.txt file using Spark software. At this stage, the format of the files was changed to columnar (parquet) format, while the properly transformed files were placed in the new S3 bucket.

### Step 3 - Aggregations

In this step, new denormalized tables were created. The data and aggregations extracted in the requirements.txt file were also extracted. The individual charts created with Python's matplotlib module were also placed in the Spark notebook responsible for this step.

### Summary

The final step is to integrate AWS with Snowflake to create a data warehouse and flip the data there for further analysis. This step was done with the help of a script created in AWS Lambda.

To keep the data clear, the bucket in AWS S3 was divided into 3 main parts representing the layers of data stores (bronze - raw, unstructured data, silver - processed data, gold - data intended for business aggregations).


## Examples
