Welcome to the **BigQuery-GA4-Queries** repository! This open-source collection is a curated set of SQL queries specifically designed for analyzing and extracting insights from **Google Analytics 4 (GA4)** exported data in BigQuery. Over years of working with GA4 data exports, these queries have become my go-to tools for daily reporting and analysis, and I am excited to share them.

## What’s Included?

This repository contains a +50 diverse set of **ready-to-use and fully customizable queries**, grouped into logical folders for easier access and organization. Each query is designed to handle common and advanced use cases, from session analysis and ecommerce reporting to traffic attribution and user behavior exploration.

## How to Use

1. Replace placeholder project IDs and dataset names in each query with your specific BigQuery identifiers.
2. Adjust the `DECLARE` statements at the beginning of each query to define your desired reporting dates.
3. Run the queries in BigQuery to instantly generate reports tailored to your needs.

## Query Handbook

This section provides a detailed breakdown of the queries included in the repository, organized into hierarchical folders based on their focus. Each folder contains queries grouped by their purpose, with descriptions and applications for easy understanding and quick deployment.

### **Event Scope**

**Focus Area**  
The **Event Scope** folder focuses on event-level data, providing insights into user interactions, specific event occurrences, and detailed behavioral metrics. These queries are tailored to extract information about individual events, their attributes, and how they contribute to overall user engagement and business outcomes.

#### **1. flatten_events.sql**

**Description:**  
This query flattens GA4 event data by unnesting arrays such as `event_params`, `user_properties`, and `items` into a single, comprehensive table. It simplifies the complex nested structures of GA4 data, making it easier to perform detailed analysis on event-level data.

**Applications:**

- **Data Preparation:** Prepares raw GA4 event data for detailed analysis and reporting.
- **Advanced Analytics:** Facilitates building advanced metrics and custom reports based on event parameters and user properties.
- **Machine Learning:** Provides a flat data structure suitable for machine learning models and statistical analysis.

#### **2. ga4_full_metrics_summary.sql**

**Description:**  
Provides a comprehensive summary of key GA4 metrics on a daily basis. It aggregates data such as total users, sessions, events, and conversions, offering a high-level overview of account performance over time.

**Applications:**

- **Performance Monitoring:** Monitor daily performance trends across key metrics.
- **Reporting:** Generate executive summaries or dashboards highlighting overall GA4 account activity.
- **Anomaly Detection:** Identify anomalies or significant changes in user engagement or conversions.

#### **3. measurement_protocol_event_ratio.sql**

**Description:**  
Tracks the ratio of suspected measurement protocol events based on device attributes. It calculates the ratio of events with null language and operating system values and categorized as desktop.

**Applications:**

- **Data Quality Assurance:** Evaluate the impact of non-consented or synthetic events on your dataset.
- **Event Filtering:** Identify and filter out events that may not represent actual user interactions.
- **Trend Analysis:** Monitor the proportion of suspected measurement protocol events over time to ensure data integrity.

#### **4. user_event_counts_pivot_table.sql**

**Description:**  
This query counts the number of events that each user has triggered and pivots the results by event name.

**Applications:**

- **User Behavior Insights:** Offers insights into user preferences and behaviors.
- **Event Popularity Analysis:** Determine what events are more common among users, especially those who have made purchases.
- **Segmentation:** Segment users based on their interaction with different event types for targeted marketing.



## Open-Source Collaboration

This repository is and will always remain **open source**. Contributions are highly encouraged! If you have suggestions, improvements, or new queries to share, feel free to submit a pull request. Together, we can expand this library into a comprehensive resource for GA4 analysis.

## About This Repository

These queries are the culmination of years of experience working with GA4 export data in BigQuery. While I strive to maintain their accuracy and compatibility, some queries may have issues or require updates over time. Please report any bugs or inconsistencies by creating an issue in this repository.
