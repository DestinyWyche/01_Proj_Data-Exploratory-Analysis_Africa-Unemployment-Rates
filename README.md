# Unemployment Rates in Africa

## Purpose of Project

For this project, I explored a Kaggle dataset on unemployment rates for countries around the world from the year 1990-2021. I noticed there was a vast amount of data so I decided to focus on gaining insights from one continent

## Data Analysis Process

### Asking the Question

- After exploring the data, I decided I wanted to answer two questions about the continent Africa;
  1. How did unemployment rates change over time?
  2. Which country most frequently had the highest unemployment rate?

### Preparing the Data

- Data was collected from a dataset on Kaggle which can be found by clicking this [link](https://www.kaggle.com/datasets/pantanjali/unemployment-dataset)

### Processing the Data

- Data was filtered to extract data from all the countries of Africa
- Extraction and cleaning
  - Extracted data transformed into three columns: country name, year, and unemployment rate. This was done by the following process;
    1. Turning the rows of unemployment rates into columns using the **TRANSPOSE function in Excel**
       
         ![image](https://github.com/DestinyWyche/01_Proj_Africa-Unemployment-Rates/assets/111715383/3d874b92-a9f0-4de2-8066-50217815f667)  
         ![image](https://github.com/DestinyWyche/01_Proj_Africa-Unemployment-Rates/assets/111715383/1ee4f133-d589-4839-81ff-65cdce6da2f6)  
         ![image](https://github.com/DestinyWyche/01_Proj_Africa-Unemployment-Rates/assets/111715383/7c3f15a1-8470-4b11-84c5-b926ab71f400)
  
        
    5. Turning column of country names into rows
    6. Copying years next each unemployment rate using **SEQUENCE function**
    3. Stacking columns of transposed unemployment rates using **macro module in visual basic** in a new sheet
       
       ![image](https://github.com/DestinyWyche/01_Proj_Africa-Unemployment-Rates/assets/111715383/9a0463c3-b990-45d3-bc4a-d5df3252bb41)
       
    8. checking values were correctly transposed and copied using **EXACT function** to compare stacked data with transposed data

       ![image](https://github.com/DestinyWyche/01_Proj_Africa-Unemployment-Rates/assets/111715383/7ad991d5-4123-45a1-a24b-d5aae72f4123)

    10. Saving "stacked_data" sheet as clean data csv file
        - This is the data that was used for analysis  

 **Full results can be viewed in file 02**  
**Data used for analysis can be viewed in file 03**
 
 ### Analyzing the Data
 
 - Data was analyzed using **Bigquery** and **Rstudio cloud**
 - In **Bigquery**, two queries were written (**SQL code can be found in file 06**)
     - Query to find top 3 unemployment rates for each year

       ![image](https://github.com/DestinyWyche/01_Proj_Africa-Unemployment-Rates/assets/111715383/73804d54-3f9a-45a2-90d0-77f48e3e11c3)

        - tried to use the same idea of a subquery to find the top three unemployment rates for each year
          - this was not giving me the results I wanted and I was consistently running into circles
        - decided that I maybe had to do brute force and write a query for each year, however this was repetitive so I knew there must of been a way to automate this process
        - did some research online and found others who were dealing with a similar problem, and this is where I was introducted to the row_number() function
        - used the row_number function to find the top three unemployment rates for each year  
**Results can be viewed in file 04**  
   - Query to find mean unemployment rate for each year  
     - subquery was written to find the maximum unemployment rate for each year  
     - then outer query returned the country and year for each of these unemployment rates  
**Results can be viewed in file 05**   
 
  - In **RStudio Cloud**: created two visualizations to answer my two questions

    ![image](https://github.com/DestinyWyche/01_Proj_Africa-Unemployment-Rates/assets/111715383/9461bbc2-088a-4fa5-a317-aa0d20b32a75)

    ![image](https://github.com/DestinyWyche/01_Proj_Africa-Unemployment-Rates/assets/111715383/5bb254a6-7ffe-4c0b-af55-56c2e8ee12d5)

 
  **Full R code can be viewed in file 07**

### Summary  
- After creating visualizations in **R studio Cloud**, I found the following answers to my questions;
  1. As shown in the visualization below, the unemployment rate increased from the year 1990 to about 2000, decreased from 2000 to about 2015, and then increased again until 2021
     
     ![image](https://github.com/DestinyWyche/01_Proj_Africa-Unemployment-Rates/assets/111715383/5d867170-35c7-40c0-9a0a-cde1fa7c75a8)

     
  3. As shown in the visualization below, the country Djibouti most frequently had the highest umemployment rate in Africa from 1990 - 2020
     
     ![image](https://github.com/DestinyWyche/01_Proj_Africa-Unemployment-Rates/assets/111715383/290dc52a-9fd2-462c-8bb6-8c1b2658084b)  
  **R code for visualizations can be found in rmd file 07** 



