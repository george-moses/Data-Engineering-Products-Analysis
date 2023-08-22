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

- **Web Scraping:** [Bright Data](https://brightdata.com/?kw=bright%20data&cpn=388478960&utm_matchtype=e&cq_src=google_ads&cq_cmp=388478960&cq_term=bright%20data&cq_plac=&cq_net=o&cq_plt=gp&utm_matchtype=e&utm_term=bright%20data&utm_campaign=brand_brightdata-all_geos-search_rlsa_mql-kw_en-desktop&utm_source=bing&utm_medium=ppc&utm_content=bright-data-proxy&msclkid=b6fa2fe95deb1211269d4b0a8245b9b8) was employed for efficient extraction of reviews from [g2.com](https://www.g2.com/).
- **Data Storage:** Amazon S3 buckets were utilized to store the collected review data in JSON format.
- **Data Processing:** Snowflake was used to clean and process the data, transforming it into structured tables for analysis.
- **Visualization:** Tableau integration facilitated the creation of interactive dashboards to present key insights.

## Project Architecture

The project's architecture comprises several key stages:

1. **Web Scraping:** [Bright Data](https://brightdata.com/?kw=bright%20data&cpn=388478960&utm_matchtype=e&cq_src=google_ads&cq_cmp=388478960&cq_term=bright%20data&cq_plac=&cq_net=o&cq_plt=gp&utm_matchtype=e&utm_term=bright%20data&utm_campaign=brand_brightdata-all_geos-search_rlsa_mql-kw_en-desktop&utm_source=bing&utm_medium=ppc&utm_content=bright-data-proxy&msclkid=b6fa2fe95deb1211269d4b0a8245b9b8) extracts reviews from diverse sources.
2. **Data Storage:** Extracted data is stored in JSON format within an Amazon S3 bucket.
3. **Data Processing:** Snowflake is used to clean and process the data, generating structured tables.
4. **Visualization:** Tableau is connected to Snowflake to produce informative dashboards.

## Key Steps

1. Employed [Bright Data](https://brightdata.com/?kw=bright%20data&cpn=388478960&utm_matchtype=e&cq_src=google_ads&cq_cmp=388478960&cq_term=bright%20data&cq_plac=&cq_net=o&cq_plt=gp&utm_matchtype=e&utm_term=bright%20data&utm_campaign=brand_brightdata-all_geos-search_rlsa_mql-kw_en-desktop&utm_source=bing&utm_medium=ppc&utm_content=bright-data-proxy&msclkid=b6fa2fe95deb1211269d4b0a8245b9b8) for web scraping of data engineering products reviews.
2. Stored review data in JSON format within an Amazon S3 bucket.
3. Cleaned and processed data using Snowflake, employing Snowflake SQL.
4. Established Tableau connection to Snowflake, facilitating dashboard creation.

## Impact

This project empowers data professionals with insights into the merits and limitations of prevalent data engineering products. By automating data collection, processing, and visualization, the project accelerates informed decision-making, enabling users to select products that align with their requirements.

## Usage

This project has versatile applications:

- **Product Evaluation:** Data professionals can use the insights to assess the suitability of data engineering products for their projects.
- **Decision Support:** Stakeholders can make informed choices regarding product adoption, based on analyzed reviews.
- **Trend Identification:** By analyzing trends in reviews, users can anticipate emerging product preferences and functionalities.

## Screenshots

### Amazon S3
[![s3-bucket.png](https://i.postimg.cc/YqxnyswX/s3-bucket.png)](https://postimg.cc/VddWJ4vM)

### Tableau
[Vendor Dashboard](https://prod-useast-b.online.tableau.com/#/site/snowflakeproj/views/Project2/VendorDashboard?:iid=1)
[![tableau.png](https://i.postimg.cc/Fz4pTjC5/tableau.png)](https://postimg.cc/zbxTBR10)
