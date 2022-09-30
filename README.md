# Unemployment Rates in Africa

## Purpose of Project

For this project, I explored a Kaggle dataset on unemployment rates for countries around the world

## Data Analysis Process

### Asking the question

- after exploring the data, I decided I wanted to answer two questions about the continent Africa;
  1. How did unemployment rates change over time?
  2. Which country most frequently had the highest unemployment rate?

### Preparing the data

- data was collected from a dataset on Kaggle which can be found by clicking this [link](https://www.kaggle.com/datasets/pantanjali/unemployment-dataset)
- unemployment rates for Africa were extracted and cleaned in **Excel**

### Processing the data

- data was filtered to extract data from all the countries of Africa
- extraction and cleaning
  - extracted data transformed into three columns: country name, year, and unemployment rate. This was done by;
    1. turning the rows of unemployment rates into columns using the TRANSPOSE function in Excel
    2. stacking columns of transposed unemployment rates using macro module in visual basic in a new sheet
    3. turning column of country names into rows
    4. creating three new columns in new sheet: country name, year, and unemployment rate
        - country name: consisted of transposed country names  
        - year: copied years next each unemployment rate using SEQUENCE function
        - unemployment rate: consisted of stacked unemployment rates
    5. checking values were correctly transposed and copied using EXACT function to compare stacked data with transposed data
    6. saving stacked data sheet as clean data csv file
        - this is the data that will be used for analysis  

**This process can be looked at in file 02**
 
 ### Analyzing the data
 
 - data was analyzed using **Bigquery** and **Rstudio cloud**
 - in Bigquery, two queries were written
   - query to find mean unemployment rate for each year
      - subquery was written to find the maximum unemployment rate for each year
        - then outer query returned the country and year for each of these unemployment rates
    - query to find top 3 unemployment rates for each year
      - tried to use the same idea of a subquery to find the top three unemployment rates for each year
        - this was not giving me the results I wanted and I was consistently running into circles
      - decided that I maybe had to do brute force and write a query for each year, however this was repetitive so I knew there must of been a way to automate this process
      - did some research online and found others who were dealing with a similar problem, and this is where I was introducted to the row_number() function
      - used the row_number function to find the top three unemployment rates for each year  
        
  - in RStudio cloud: created two visualizations to answer my two questions  
  **This can be looked at in file 07**
