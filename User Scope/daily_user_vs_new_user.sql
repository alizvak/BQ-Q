-- Declare date range variables for filtering
DECLARE start_date STRING DEFAULT '2024-01-01';
DECLARE end_date STRING DEFAULT '2024-12-31';

WITH user_sessions AS (
    -- Extract user session data including session ID and session number
    SELECT
        user_pseudo_id,
        (SELECT value.int_value FROM UNNEST(event_params) WHERE key = 'ga_session_id') AS session_id,
        (SELECT value.int_value FROM UNNEST(event_params) WHERE key = 'ga_session_number') AS session_number
    FROM
    `project.dataset.events_*`, -- Replace with your own project and dataset ID
    WHERE 
        _TABLE_SUFFIX BETWEEN REPLACE(start_date, '-', '') AND REPLACE(end_date, '-', '') -- Date range filter
),

user_type_counts AS (
    -- Count the number of returning users (session number > 1) and new users (session number = 1)
    SELECT 
        COUNT(DISTINCT IF(session_number > 1, user_pseudo_id, NULL)) AS returning_user_count,
        COUNT(DISTINCT IF(session_number = 1, user_pseudo_id, NULL)) AS new_user_count
    FROM 
        user_sessions
)

-- Output the user counts
SELECT 
    returning_user_count AS returning,
    new_user_count AS new_user
FROM 
    user_type_counts;
