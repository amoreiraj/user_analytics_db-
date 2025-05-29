
USE user_analytics_db;

-- Table: users
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    signup_date DATE NOT NULL,
    country VARCHAR(50) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE
);

-- Table: subscriptions
CREATE TABLE subscriptions (
    subscription_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    subscription_type VARCHAR(50) NOT NULL,  -- e.g., 'Premium', 'Basic'
    start_date DATE NOT NULL,
    end_date DATE,
    price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Table: user_activity
CREATE TABLE user_activity (
    activity_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    activity_type VARCHAR(50) NOT NULL,  -- e.g., 'Login', 'Post', 'Comment'
    activity_date DATETIME NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Table: ads
CREATE TABLE ads (
    ad_id INT PRIMARY KEY AUTO_INCREMENT,
    ad_name VARCHAR(100) NOT NULL,
    campaign_id INT NOT NULL,
    cost_per_click DECIMAL(10, 2) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE
);

-- Table: ad_interactions
CREATE TABLE ad_interactions (
    interaction_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    ad_id INT NOT NULL,
    interaction_type VARCHAR(50) NOT NULL,  -- e.g., 'Click', 'View'
    interaction_date DATETIME NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (ad_id) REFERENCES ads(ad_id)
);
