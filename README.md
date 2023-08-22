# Data Engineering Products Review Analysis

## Project Overview

This project aims to analyze reviews of popular data engineering products using web scraping, data processing, and visualization techniques. By extracting insights from these reviews, data professionals can make informed decisions about which products to adopt.

## Table of Contents
- [Project Objective](#project-objective)
- [Technologies Used](#technologies-used)
- [Project Architecture](#project-architecture)
- [Key Steps](#key-steps)
- [Impact](#impact)
- [Usage](#usage)
- [Screenshots](#screenshots)

## Project Objective

The main goal of this project is to collect, clean, and analyze reviews of prominent data engineering products to identify trends, strengths, and areas for improvement. By leveraging web scraping, data processing, and visualization techniques, the project seeks to simplify the decision-making process for data professionals.

## Technologies Used

- [Bright Data](https://brightdata.com/?kw=bright%20data&cpn=388478960&utm_matchtype=e&cq_src=google_ads&cq_cmp=388478960&cq_term=bright%20data&cq_plac=&cq_net=o&cq_plt=gp&utm_matchtype=e&utm_term=bright%20data&utm_campaign=brand_brightdata-all_geos-search_rlsa_mql-kw_en-desktop&utm_source=bing&utm_medium=ppc&utm_content=bright-data-proxy&msclkid=b6fa2fe95deb1211269d4b0a8245b9b8)
- Amazon S3
- Snowflake
- Tableau
- SQL

## Project Architecture

The project architecture comprises the following components:

- **Bright Data:** web scrapes data engineering products reviews data from [g2.com](https://www.g2.com/).
- **S3 Bucket:** Extracted data is stored in JSON format within an Amazon S3 bucket.
- **Snowflake:** Connects to the S3 bucket, retrieving the extracted data, and utilizes SQL scripts for data transformation and manipulation to generate structured tables.
- **Tableau:** Connects to Snowflake, facilitating the creation of interactive dashboards to present key insights.

## Key Steps

1. Employed [Bright Data](https://brightdata.com/?kw=bright%20data&cpn=388478960&utm_matchtype=e&cq_src=google_ads&cq_cmp=388478960&cq_term=bright%20data&cq_plac=&cq_net=o&cq_plt=gp&utm_matchtype=e&utm_term=bright%20data&utm_campaign=brand_brightdata-all_geos-search_rlsa_mql-kw_en-desktop&utm_source=bing&utm_medium=ppc&utm_content=bright-data-proxy&msclkid=b6fa2fe95deb1211269d4b0a8245b9b8) for web scraping of data engineering product reviews.
2. Stored review data in JSON format within an Amazon S3 bucket.
3. Used Snowflake to connect to the S3 bucket, retrieve the extracted data, and employed SQL scripts for data transformation and manipulation.
4. Established Tableau connection to Snowflake, facilitating dashboard creation.

## Impact

This project empowers data professionals with insights into the merits and limitations of prevalent data engineering products. By automating data collection, processing, and visualization, the project accelerates informed decision-making, enabling users to select products that align with their requirements.

## Usage

This project has versatile applications:

- **Product Evaluation:** Data professionals can use the insights to assess the suitability of data engineering products for their projects.
- **Decision Support:** Stakeholders can make informed choices regarding product adoption, based on analyzed reviews.
- **Trend Identification:** By analyzing trends in reviews, users can anticipate emerging product preferences and functionalities.

## Screenshots

### Amazon S3 Bucket with Raw Data
![image](https://github.com/george-moses/Data-Engineering-Products-Analysis/assets/107324220/a09353c7-1dd2-4a21-a401-44e50e7fecc3)

### Snowflake Tables with Transformed Data
![image](https://github.com/george-moses/Data-Engineering-Products-Analysis/assets/107324220/393e3627-db1f-448c-9728-929269ecab9e)

### Tableau Dashboard
**[Vendor Dashboard](https://prod-useast-b.online.tableau.com/t/snowflakeproj/views/Project2/VendorDashboard)**
![image](https://github.com/george-moses/Data-Engineering-Products-Analysis/assets/107324220/e9d60da5-89a2-46db-8954-f7855d6a980c)


