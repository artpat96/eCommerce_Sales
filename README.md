# eCommerce_Sales

### Introduction

The goal of the project was to perform 3 main steps representing an ETL job. 
The architecture of the project is illustrated in the repository in the [Architecture](architecture.jpg) file.

To keep the data clear on each step, the bucket in AWS S3 was divided into 3 main parts representing the layers of data stores (bronze - raw, unstructured data, silver - processed data, gold - data intended for business aggregations).

Schemas of raw tables can be found in the [Schema](schemas.jpg) file.

### Step 1 - Data Ingestion

This step focused on acquiring data from files of various formats, entering them into a bucket in AWS S3 and ingesting them into notebooks located in the Databricks space.
[Data Ingestion](Ingesting_Data.ipynb)

### Step 2 - Data Transformation

This step was to transform the data according to the guidelines dissected in the requirements.txt file using Spark software. At this stage, the format of the files was changed to columnar (parquet) format, while the properly transformed files were placed in the new S3 bucket.

### Step 3 - Aggregations

In this step, new denormalized tables were created. The data and aggregations extracted in the requirements.txt file were also extracted. The individual charts created with Python's matplotlib module were also placed in the Spark notebook responsible for this step.
Step 2 and 3 can be found in [Data Transformation](Data_Transformations.ipynb) notebook.

### Step 4 - Data Warehouse creation

The final step is to integrate AWS with Snowflake to create a Data Warehouse and keep the data there for further analysis. This step was done with the help of a [Script](load_into_snowflake.sql) written directly on Snowflake. Connection between AWS and Snowflake was established in the backend.


## Examples

Calculations and charts of selected aggregations:

![plots (1)](https://github.com/user-attachments/assets/5c69a438-ad65-4fc8-b613-f95c828ff459)

![plots (2)](https://github.com/user-attachments/assets/e4d42dc3-8395-47d0-a121-e19560fd5d43)

![plots (3)](https://github.com/user-attachments/assets/c101a8b3-54ff-4430-ba75-decf3a911321)

![plots (4)](https://github.com/user-attachments/assets/2e38cc6e-22e6-4bb2-919a-19362c19f36f)



Source: https://www.kaggle.com/datasets/devarajv88/target-dataset?select=orders.csv
