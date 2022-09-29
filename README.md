# Unemployment Rates in Africa

## Purpose of Project

Here I will describe my purpose for the project

## Data Analysis Process

### Asking the question

- after exploring the data, I decided to filter it by countries from a specific continent. I wanted to determine: what are the top three countries with the highest unemployment rates by year in Africa?

### Preparing the data

- data was collected from a dataset on Kaggle which can be found by clicking this [link](https://www.kaggle.com/datasets/pantanjali/unemployment-dataset)
- data was stored as an Excel file locally in a separate folder with all other files for this project

### Processing the data

- data consisted of the following columns; country name, country code, and years 1991 to 2021
- each row contained the country name, country code, and unemployment rate for each year
- data was filtered to extract data from a continent
- extraction and cleaning
  - extracted data transformed into three columns: country name, year, and unemployment rate. This was done by;
    1. turning the rows of unemployment rates into columns, and the country names that were in a single column into rows using the TRANSPOSE function in Excel
        - each column consisted of a country name as the header and the unemployment rates in rows below it
    2. stacking columns of transposed unemployment rates using macro module in visual basic in a new sheet and then;
        - creating three new columns in new sheet: country name, year, and unemployment rate
        - copying country name and year for each unemployment rate
    3. checking values were correctly copied using EXACT function to compare stacked data with transposed data
    4. saving stacked data sheet as clean data csv file
        - this is the data that will be used for analysis
 
 ### Analyzing the data
 
 - data was analyzed using Bigquery and R studio cloud
 - in Bigquery
    - subquery was written to find the maximum unemployment rate for each year, which returns the maximum unemployment rates
    - then outer query returned the country and year for each unemployment rate
    - I tried to use the same idea of a subquery to find the top three unemployment rates for each year
      - this was not giving me the results I wanted and I was consistently running into circles
      - decided that I maybe had to do brute force and write a query for each year, however this was repetitive so I knew there must of been a way to automate this process
      - I did some research online and found others who were dealing with a similar problem, and this is where I was introducted to the row_number() function
    - I used the row_number function to find the top three unemployment rates for each year
