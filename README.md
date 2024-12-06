Welcome to the **BigQuery-GA4-Queries** repository! This open-source collection is a curated set of SQL queries specifically designed for analyzing and extracting insights from **Google Analytics 4 (GA4)** exported data in BigQuery. Over years of working with GA4 data exports, these queries have become my go-to tools for daily reporting and analysis, and I am excited to share them with the community.

## What’s Included?

This repository contains a diverse set of **ready-to-use and fully customizable queries**, grouped into logical folders for easier access and organization. Each query is designed to handle common and advanced use cases, from session analysis and ecommerce reporting to traffic attribution and user behavior exploration.

Key features of the queries include:
- **Declarable Date Ranges:** Queries include `DECLARE` statements for start and end dates, making it simple to define your desired reporting period.
- **Customizable Table References:** Replaceable project and dataset IDs (`project.dataset.events_*`) ensure that the queries can adapt instantly to your specific BigQuery setup.
- **Plug-and-Play Usage:** With minimal configuration, you can set up these queries and start generating actionable reports right away.
- **Insightful Metrics:** Queries span a wide range of applications, such as ecommerce performance, user retention, funnel analysis, traffic source attribution, storage costs, and more.
- **Schema Updates:** The queries are regularly updated to reflect changes in GA4 schema and BigQuery functionality. However, occasional adjustments may be needed as Google evolves its data export formats.

## How to Use

1. Replace placeholder project IDs and dataset names in each query with your specific BigQuery identifiers.
2. Adjust the `DECLARE` statements at the beginning of each query to define your desired reporting dates.
3. Run the queries in BigQuery to instantly generate reports tailored to your needs.


## Open-Source Collaboration

This repository is and will always remain **open source**. Contributions are highly encouraged! If you have suggestions, improvements, or new queries to share, feel free to submit a pull request. Together, we can expand this library into a comprehensive resource for GA4 analysis.

## About This Repository

These queries are the culmination of years of experience working with GA4 export data in BigQuery. While I strive to maintain their accuracy and compatibility, some queries may have issues or require updates over time. Please report any bugs or inconsistencies by creating an issue in this repository.
