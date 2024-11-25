-- Declare date range variables for filtering
DECLARE start_date STRING DEFAULT '2024-01-01';
DECLARE end_date STRING DEFAULT '2024-12-31';

WITH page_view_events AS (
  -- Extract and process page view events with session-level identifiers
  SELECT
    -- Unique session identifier combining user_pseudo_id and ga_session_id
    CONCAT(
      user_pseudo_id, '-', 
      CAST((SELECT value.int_value FROM UNNEST(event_params) WHERE key = 'ga_session_id') AS STRING)
    ) AS unique_session_id,
    event_name,
    event_timestamp,
    -- Extract page path by removing protocol, domain, and query parameters
    REGEXP_REPLACE(
      REGEXP_REPLACE(
        (SELECT p.value.string_value FROM UNNEST(event_params) AS p WHERE p.key = 'page_location'),
        r'^https?://[^/]+',
        ''
      ),
      r'\?.*',
      ''
    ) AS page_path
  FROM
    `project.dataset.events_*` -- Replace with your own project and dataset ID
  WHERE
    event_name = 'page_view'
    AND _TABLE_SUFFIX BETWEEN REPLACE(start_date, '-', '') AND REPLACE(end_date, '-', '') -- Dynamic date filtering
)

-- Calculate previous and next page paths
SELECT
  unique_session_id,
  event_name,
  page_path,
  event_timestamp,
  -- Determine the previous page within the session
  IF(
    event_name = 'page_view',
    COALESCE(
      LAST_VALUE(page_path IGNORE NULLS)
      OVER (
        PARTITION BY unique_session_id
        ORDER BY event_timestamp ASC 
        ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING
      ),
      '(entrance)'
    ),
    NULL
  ) AS previous_page,
  -- Determine the next page within the session
  IF(
    event_name = 'page_view',
    COALESCE(
      FIRST_VALUE(page_path IGNORE NULLS)
      OVER (
        PARTITION BY unique_session_id
        ORDER BY event_timestamp ASC 
        ROWS BETWEEN 1 FOLLOWING AND UNBOUNDED FOLLOWING
      ),
      '(exit)'
    ),
    NULL
  ) AS next_page
FROM
  page_view_events
ORDER BY
  unique_session_id, event_timestamp;
