-- SELECT all columns from the table users
select *
from users;

-- SELECT users from Ireland
SELECT username,
country
FROM users
WHERE country = 'Ireland';

-- SORT users by signup date (newest first)
Select username,
signup_date
FROM users
ORDER BY signup_date desc;

-- LIMIT results to top 2 active users

SELECT username,
is_active
FROM users
WHERE is_active = TRUE
LIMIT 2;

-- List all usernames and emails from the users table
SELECT username, 
email
FROM users

-- Find all users from the UK
SELECT username, 
country
FROM users
WHERE LIKE country = 'uK'; -- MySQL string comparisons are case-insensitive by default. However for good practice I added case senstitive


-- Retrieve the usernames of active users (is_active = TRUE).

DESCRIBE users;

SELECT username,
is_active
FROM users
WHERE is_active = TRUE;

SELECT username,
is_Active
FROM users
WHERE is_active; -- TRUE is implicit for boolean columns

SELECT username,
is_active
FROM users
WHERE is_active = 1; -- MySQL treats TRUE as 1

-- Sort ads by cost_per_click in descending order.

SELECT ad_name,
cost_per_click
FROM ads
ORDER BY cost_per_click DESC;

-- Get the top 2 most recent activities from the user_activity table.

Select * 
from user_activity;

SELECT activity_type,
activity_date
FROM user_Activity
ORDER BY activity_Date DESC
LIMIT 2;

-- Find subscriptions with a price greater than 15.00.

select*
from subscriptions;

SELECT subscription_type,
price
FROM subscriptions
WHERE price > 15

-- List ad names and start dates for ads starting after April 1, 2025.

SELECT *
FROM ads;

SELECT ad_name, start_date
FROM ads
WHERE start_date > '2025-04-01';

SELECT ad_name, start_date
FROM ads
WHERE start_Date > '2025-04-01'
ORDER BY start_Date;

-- Retrieve user activities that occurred on May 24, 2025.

SELECT *
FROM user_activity;

SELECT activity_type, activity_date
FROM user_activity
WHERE DATE(activity_date) = '2025-05-24';


-- Sort users by username alphabetically and limit to 2 results.

SELECT *
FROM users;

SELECT username
from users
ORDER BY username ASC
limit 2;


-- Find all ad interactions where the interaction type is 'Click'.

SELECT *
FROM ad_interactions;

SELECT user_id,
interaction_type
from ad_interactions
WHERE interaction_type = 'Click'


