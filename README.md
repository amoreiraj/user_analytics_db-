# 📊 User Analytics Database

![License](https://img.shields.io/github/license/amoreiraj/user_analytics_db)
![Last Commit](https://img.shields.io/github/last-commit/amoreiraj/user_analytics_db)
![Repo Size](https://img.shields.io/github/repo-size/amoreiraj/user_analytics_db)
![Top Language](https://img.shields.io/github/languages/top/amoreiraj/user_analytics_db)
![Stars](https://img.shields.io/github/stars/amoreiraj/user_analytics_db?style=social)

A **MySQL-based** project simulating user engagement and subscription analytics, inspired by platforms like **Google**, **Meta**, and **LinkedIn**.

---

## 🧠 Overview

### This project showcases skills in:
- Database design  
- SQL querying  
- Data analysis for Data Analyst and Data Engineer roles  

### It includes:
- A complete database with `users`, `subscriptions`, `user_activities`, `ads`, and `ad_interactions`
- Complex queries: *joins*, *subqueries*, *aggregations*
- A visual **ERD (Entity-Relationship Diagram)**

---

## 🎯 Objectives

- **Database Design**: Proper schema with primary & foreign keys  
- **Data Integrity**: Enforce relationships via constraints  
- **SQL Skills**: Demonstrate querying techniques  

---

## 🛠️ Technologies Used

| Tool       | Purpose                                |
|------------|----------------------------------------|
| MySQL      | Database creation and management       |
| SQL        | Schema creation and analytical queries |
| Lucidchart | Visualizing the ERD                    |

---

## 🗃️ Database Structure

The database `user_analytics_db` consists of the following tables:
- `users`
- `subscriptions`
- `user_activities`
- `ads`
- `ad_interactions`

---

## 📌 ERD Preview

![User Analytics DB ERD](https://github.com/amoreiraj/user_analytics_db/blob/main/user_analytics_db_ERD.png)

---

## 📋 Tables

### 👤 users
- `user_id (PK)`: Unique identifier  
- `username (UNIQUE)`: User’s username  
- `first_name`, `middle_name`, `last_name`: Name details  
- `email (UNIQUE)`: User’s email  
- `signup_date`: Sign-up date  
- `country`: Country of origin  
- `is_active`: BOOLEAN flag  

### 💳 subscriptions
- `subscription_id (PK)`  
- `user_id (FK)` → `users(user_id)`  
- `subscription_type` (e.g., Premium, Basic)  
- `start_date`, `end_date`  
- `price`

### 📈 user_activity
- `activity_id (PK)`  
- `user_id (FK)` → `users(user_id)`  
- `activity_type` (Login, Post, Comment)  
- `activity_date`

### 📢 ads
- `ad_id (PK)`  
- `ad_name`  
- `campaign_id`  
- `cost_per_click`  
- `start_date`, `end_date`

### 💬 ad_interactions
- `interaction_id (PK)`  
- `user_id (FK)` → `users(user_id)`  
- `ad_id (FK)` → `ads(ad_id)`  
- `interaction_type` (Click, View)  
- `interaction_date`

---

## 🚀 Future Improvements

- Add advanced queries (e.g., churn analysis)  
- Integrate Tableau dashboards  
- Migrate to a cloud warehouse (e.g., BigQuery, Snowflake)

---

### 🎨 Emoji Source

All emojis from: [https://emojicombos.com/](https://emojicombos.com/)
