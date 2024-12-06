a;Welcome to the **BigQuery-GA4-Queries** repository! This open-source collection is a curated set of SQL queries specifically designed for analyzing and extracting insights from **Google Analytics 4 (GA4)** exported data in BigQuery. Over years of working with GA4 data exports, these queries have become my go-to tools for daily reporting and analysis, and I am excited to share them.

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

---

#### **1. flatten_events.sql**

**Description:**  
This query flattens GA4 event data by unnesting arrays such as `event_params`, `user_properties`, and `items` into a single, comprehensive table. It simplifies the complex nested structures of GA4 data, making it easier to perform detailed analysis on event-level data.

**Applications:**

- **Data Preparation:** Prepares raw GA4 event data for detailed analysis and reporting.
- **Advanced Analytics:** Facilitates building advanced metrics and custom reports based on event parameters and user properties.
- **Machine Learning:** Provides a flat data structure suitable for machine learning models and statistical analysis.

---

#### **2. ga4_full_metrics_summary.sql**

**Description:**  
Provides a comprehensive summary of key GA4 metrics on a daily basis. It aggregates data such as total users, sessions, events, and conversions, offering a high-level overview of account performance over time.

**Applications:**

- **Performance Monitoring:** Monitor daily performance trends across key metrics.
- **Reporting:** Generate executive summaries or dashboards highlighting overall GA4 account activity.
- **Anomaly Detection:** Identify anomalies or significant changes in user engagement or conversions.

---

#### **3. measurement_protocol_event_ratio.sql**

**Description:**  
Tracks the ratio of suspected measurement protocol events based on device attributes. It calculates the ratio of events with null language and operating system values and categorized as desktop.

**Applications:**

- **Data Quality Assurance:** Evaluate the impact of non-consented or synthetic events on your dataset.
- **Event Filtering:** Identify and filter out events that may not represent actual user interactions.
- **Trend Analysis:** Monitor the proportion of suspected measurement protocol events over time to ensure data integrity.

---

#### **4. user_event_counts_pivot_table.sql**

**Description:**  
This query counts the number of events that each user has triggered and pivots the results by event name.

**Applications:**

- **User Behavior Insights:** Offers insights into user preferences and behaviors.
- **Event Popularity Analysis:** Determine what events are more common among users, especially those who have made purchases.
- **Segmentation:** Segment users based on their interaction with different event types for targeted marketing.

---


### **Session Scope**

**Focus Area**  
The **Session Scope** folder includes queries that analyze data at the session level. These queries explore metrics like session duration, conversion rates, traffic acquisition, and user engagement during sessions. They are designed to provide a deeper understanding of how users interact with your website or app across their sessions.

---

#### **1. attribution_models.sql**

**Description:**  
Applies different models to attribute conversions to acquisition channels or user actions. It allows a better understanding of which channels or actions drive conversions.

**Applications:**

- **Attribution Analysis:** Analyze channel effectiveness for marketing campaigns.
- **Decision Making:** Optimize spending by identifying high-converting channels.
- **Improved ROI:** Refine strategies based on the most impactful touchpoints.

---

#### **2. average_engagement_time_per_page.sql**

**Description:**  
Calculates the average engagement time per page based on user sessions. It aggregates total engagement time and views to determine how much time users spend on specific pages.

**Applications:**

- **Content Performance:** Understand which pages keep users engaged.
- **UX Optimization:** Identify pages with low engagement times.
- **Data-Driven Improvements:** Prioritize pages for optimization based on engagement data.

---

#### **3. average_session_duration_by_date.sql**

**Description:**  
Provides session duration analysis by date, calculating the average time users spend in sessions for daily trends.

**Applications:**

- **User Behavior Analysis:** Understand daily engagement trends.
- **Performance Monitoring:** Track the impact of UX or content changes.
- **Time-on-Site Metrics:** Benchmark session duration against goals.

---

#### **4. bounce_rate.sql**

**Description:**  
Analyzes bounce rates by page and date, measuring sessions where users leave after visiting a single page.

**Applications:**

- **Engagement Analysis:** Identify pages with high bounce rates to refine content.
- **Marketing Optimization:** Assess landing pages' performance for marketing campaigns.
- **UX Strategy:** Improve navigation to retain users.

---

#### **5. correlation_between_clv_and_num_of_sessions.sql**

**Description:**  
Explores the relationship between Customer Lifetime Value (CLV) and the number of user sessions, highlighting the connection between user engagement and revenue.

**Applications:**

- **Retention vs. Acquisition:** Determine if repeat visits impact overall CLV.
- **Revenue Strategies:** Decide whether to invest more in user acquisition or retention.
- **Customer Insights:** Gain insights into high-value users' behavior.

---

#### **6. google_ads_campaigns.sql**

**Description:**  
Analyzes sessions by Google Ads campaigns, linking them to account and campaign names.

**Applications:**

- **Campaign Effectiveness:** Understand the impact of specific campaigns.
- **Ad Spend ROI:** Ensure ads drive quality sessions and conversions.
- **Optimization Opportunities:** Improve underperforming campaigns.

---

#### **7. hourly_sessions_ecommerce_performance.sql**

**Description:**  
Provides an hourly breakdown of session performance metrics, such as purchases, events, and e-commerce activity.

**Applications:**

- **Time-Based Analysis:** Identify peak activity hours.
- **Campaign Timing:** Optimize campaign schedules based on user behavior.
- **Ecommerce Insights:** Adjust operations during high-demand periods.

---

#### **8. items_performance_by_traffic_source.sql**

**Description:**  
Analyzes purchased item names and categories across various traffic sources to identify the most effective sources for item sales.

**Applications:**

- **Source Analysis:** Understand which sources contribute to specific item sales.
- **Product Marketing:** Optimize campaigns for high-performing traffic sources.
- **Sales Strategy:** Align traffic acquisition with top-selling products.

---

#### **9. most_frequent_exit_pages.sql**

**Description:**  
Identifies the pages users are most likely to exit from, showing exit patterns by session.

**Applications:**

- **Page Optimization:** Refine content or UX on high-exit pages.
- **Retention Strategies:** Reduce drop-offs on important pages.
- **Navigation Insights:** Improve user flow to lower exits.

---

#### **10. new_user_sequential_page_navigation_steps.sql**

**Description:**  
Tracks sequential page navigation steps for new users, showing their paths across the first few interactions.

**Applications:**

- **Onboarding Analysis:** Evaluate the success of the onboarding experience.
- **Content Strategy:** Improve content placement and navigation.
- **UX Improvements:** Refine page flow for new users.

---

#### **11. page_value_and_revenue_attribution_report.sql**

**Description:**  
Calculates the revenue attributed to each page location visited before a purchase. Uses a first-click attribution model for insights into pages influencing purchases.

**Applications:**

- **Attribution Analysis:** Identify high-value pages in the conversion funnel.
- **Page Optimization:** Focus on pages contributing the most revenue.
- **Conversion Insights:** Improve paths to purchase by refining these pages.

---

#### **12. previous_next_page_path_analysis.sql**

**Description:**  
Analyzes user navigation by identifying previous and next page paths for each page view.

**Applications:**

- **Navigation Patterns:** Understand user flow across the site.
- **UX Improvement:** Fix bottlenecks or poor transitions between pages.
- **Content Placement:** Ensure key content is strategically placed.

---

#### **13. purchases_by_last_landing_page.sql**

**Description:**  
Tracks the last landing page before a user makes a purchase, providing insights into pages that convert visitors into buyers.

**Applications:**

- **Landing Page Optimization:** Refine high-converting landing pages.
- **Campaign Alignment:** Match campaigns to landing pages that drive conversions.
- **Conversion Rate Analysis:** Measure effectiveness of specific pages.

---

#### **14. retention_cohort_analysis.sql**

**Description:**  
Adds retention cohort analysis by weekly engagement, tracking how many users return and engage across multiple weeks.

**Applications:**

- **Retention Strategies:** Evaluate user retention over time.
- **Behavior Insights:** Understand weekly re-engagement trends.

---

#### **15. session_channel_grouping.sql**

**Description:**  
Groups sessions by traffic source and medium, categorizing them into predefined channel groupings like Organic Search, Paid Social, and Email.

**Applications:**

- **Channel Performance:** Analyze how different channels drive sessions.
- **Marketing Optimization:** Allocate resources to high-performing channels.

---

#### **16. session_conversion_rate.sql**

**Description:**  
Analyzes the session conversion rate by comparing the number of sessions with a purchase against total sessions.

**Applications:**

- **Conversion Optimization:** Identify high-converting sessions.
- **Traffic Analysis:** Improve conversion rates by studying low-converting sessions.

---

#### **17. top_10_landing_page.sql**

**Description:**  
Lists the 10 most popular landing pages, ranked by unique user visits. Provides data on entrance rates and page performance.

**Applications:**

- **Landing Page Optimization:** Focus on high-traffic pages.
- **Content Strategy:** Improve content on top-performing pages.
- **User Behavior:** Understand the first touchpoint for most users.

---

#### **18. traffic_acquisition_summary.sql**

**Description:**  
Analyzes traffic acquisition and related metrics, providing insights into the performance of acquisition campaigns by source and medium.

**Applications:**

- **Marketing Campaign Analysis:** Evaluate campaign effectiveness.
- **Source Optimization:** Focus on high-performing traffic sources.

---

### User Scope

**Focus Area:**  
The **User Scope** folder focuses on analyzing user behavior, acquisition, and retention. It provides insights into user-level metrics, including revenue, conversion rates, and engagement, helping you understand user lifecycle stages.

---

#### **1. average_revenue_per_user_id.sql**

**Description:**  
Calculates the average revenue generated per user ID based on lifetime values (LTV).

**Applications:**

- **Revenue Benchmarking:** Measure average user contribution to revenue.

---

#### **2. average_revenue_per_user_pseudo_id.sql**

**Description:**  
Computes the average revenue generated per user pseudo ID (client_id, Device_id) using LTV metrics.

**Applications:**

- **Revenue Benchmarking:** Measure average user contribution to revenue.

---

#### **3. daily_user_vs_new_user.sql**

**Description:**  
Compares the number of new and returning users for each day to highlight acquisition trends.

**Applications:**

- **Retention Analysis:** Track engagement from returning users.
- **Acquisition Monitoring:** Evaluate daily new user influx.
- **Trend Insights:** Detect seasonal spikes in user activity.

---

#### **4. device_category_user_share.sql**

**Description:**  
Calculates user distribution across device categories (e.g., mobile, desktop, tablet).

**Applications:**

- **Device Optimization:** Tailor website design for dominant devices.
- **Audience Insights:** Understand user preferences by device category.
- **Marketing Strategies:** Target campaigns based on device usage.

---

#### **5. ecommerce_events_by_first_user_landing_page.sql**

**Description:**  
Attributes key metrics (e.g., views, add-to-cart actions, purchases) to the first landing page visited by users.

**Applications:**

- **Page Optimization:** Improve performance of high-traffic landing pages.
- **Conversion Tracking:** Measure effectiveness of entry points in the sales funnel.
- **User Behavior Insights:** Identify high-performing user landing pages for ecommerce events.

---

#### **6. first_landing_page_of_purchased_users.sql**

**Description:**  
Identifies the first landing page visited by users who eventually made a purchase.

**Applications:**

- **Funnel Optimization:** Focus on entry points that convert into purchases.
- **Campaign Alignment:** Link campaigns to high-converting pages.
- **Path-to-Purchase Insights:** Analyze initial steps leading to purchases.

---

#### **7. first_landing_page_of_signedup_users.sql**

**Description:**  
Identifies the first landing page visited by users who signed up for an account.

**Applications:**

- **Sign-Up Path Optimization:** Refine entry points for user acquisition.
- **Lead Generation Analysis:** Highlight pages driving account creation.
- **Conversion Insights:** Map user journeys to sign-up pages.

---

#### **8. first_visit_to_purchase_time_by_traffic_source.sql**

**Description:**  
Analyzes the time (in days) between a user's first visit and their purchase, grouped by traffic source.

**Applications:**

- **Time-to-Conversion Tracking:** Evaluate purchase timelines.
- **Source Performance:** Identify traffic sources with shorter conversion times.
- **Marketing Insights:** Focus on sources driving quick purchases.

---

#### **9. first_visit_to_signup_time_by_traffic_source.sql**

**Description:**  
Calculates the time (in days) between a user's first visit and their sign-up, grouped by traffic source.

**Applications:**

- **Acquisition Funnel Insights:** Measure effectiveness of sources in driving sign-ups.
- **User Retention Strategies:** Optimize sources with shorter sign-up times.
- **Performance Benchmarking:** Compare traffic sources' acquisition speed.

---

#### **10. geographic_user_metrics.sql**

**Description:**  
Provides geo-location insights, including user, session, and purchase counts grouped by continent, country, and city.

**Applications:**

- **Regional Analysis:** Target marketing efforts by region.
- **Localization Strategy:** Adapt content and campaigns for specific geographies.
- **Audience Understanding:** Identify high-performing locations.

---

#### **11. lifetime_value_and_sessions_by_user_id.sql**

**Description:**  
Calculates the customer lifetime value (CLV) and total sessions for each user, grouped by user ID.

**Applications:**

- **Retention Strategies:** Identify high-value users and focus retention efforts.
- **Revenue Insights:** Analyze user revenue contributions over time.
- **Engagement Analysis:** Link CLV with session behavior for better targeting.

---

#### **12. lifetime_value_and_sessions_by_user_pseudo_id.sql**

**Description:**  
Calculates the customer lifetime value (CLV) and total sessions for each pseudonymous user.

**Applications:**

- **Performance Metrics:** Evaluate the correlation between sessions and revenue.
- **Marketing ROI:** Align campaigns with pseudonymous high-value users.

---

#### **13. monthly_user_conversion_rate_summary.sql**

**Description:**  
Calculates monthly conversion rates by dividing converted users by total users for each month.

**Applications:**

- **Conversion Tracking:** Monitor month-over-month changes in user conversion rates.
- **Trend Analysis:** Spot seasonal variations in user behavior.
- **Performance Insights:** Measure the effectiveness of campaigns or product changes.

---

#### **14. num_sessions_before_purchase_by_initial_landing_page.sql**

**Description:**  
Analyzes the number of sessions a user takes before making a purchase, grouped by the user's initial landing page.

**Applications:**

- **Behavioral Insights:** Understand purchase patterns by entry points.
- **Page Optimization:** Focus on landing pages with high purchase likelihood.
- **User Journey Tracking:** Map the sessions leading to conversions.

---

#### **15. purchase_demographic_summary.sql**

**Description:**  
Analyzes the demographics (geo-location and device) of users who made purchases, providing insights into purchase patterns.

**Applications:**

- **Audience Profiling:** Identify key demographic segments driving revenue.
- **Targeted Marketing:** Optimize campaigns based on purchase demographics.
- **Geo and Device Insights:** Tailor strategies for high-performing regions and devices.

---

#### **16. signup_to_purchase_time_by_traffic_source.sql**

**Description:**  
Calculates the average time (in days) between a user's signup and their first purchase, grouped by traffic source.

**Applications:**

- **Funnel Analysis:** Measure the efficiency of sources in driving purchases after sign-ups.
- **Source Optimization:** Focus on traffic sources with shorter signup-to-purchase times.
- **Performance Tracking:** Monitor user journey timelines.

---

#### **17. user_acquisition_summary.sql**

**Description:**  
Analyzes user acquisition metrics, including total users and their respective acquisition sources.

**Applications:**

- **Marketing ROI:** Evaluate the performance of acquisition channels.
- **Campaign Effectiveness:** Link campaigns to user acquisition success.
- **Source Benchmarking:** Compare traffic source contributions.

---

#### **18. user_channel_grouping.sql**

**Description:**  
Groups users by traffic source and medium, categorizing them into predefined channel groupings like Organic Search, Paid Social, and Email.

**Applications:**

- **Channel Analysis:** Understand which channels are driving the most traffic.
- **Performance Tracking:** Identify high-performing acquisition sources.
- **Campaign Optimization:** Focus on impactful channels for ROI.

---

#### **19. user_ltv_by_first_page_location.sql**

**Description:**  
Calculates the lifetime value (LTV) of users based on their first page location.

**Applications:**

- **Page Optimization:** Enhance pages driving high-LTV users.
- **Acquisition Insights:** Identify entry points for high-revenue users.
- **Marketing Alignment:** Align efforts with top-performing pages.

---

#### **20. user_transactions_summary_by_initial_source.sql**

**Description:**  
Summarizes user transactions, including total revenue and transaction count, grouped by their first acquisition source.

**Applications:**

- **Source Analysis:** Measure the impact of initial sources on revenue.
- **Retention Tracking:** Link sources to repeat transactions.
- **Revenue Insights:** Focus on high-contributing acquisition channels.

---




## Open-Source Collaboration

This repository is and will always remain **open source**. Contributions are highly encouraged! If you have suggestions, improvements, or new queries to share, feel free to submit a pull request. Together, we can expand this library into a comprehensive resource for GA4 analysis.

## About This Repository

These queries are the culmination of years of experience working with GA4 export data in BigQuery. While I strive to maintain their accuracy and compatibility, some queries may have issues or require updates over time. Please report any bugs or inconsistencies by creating an issue in this repository.
