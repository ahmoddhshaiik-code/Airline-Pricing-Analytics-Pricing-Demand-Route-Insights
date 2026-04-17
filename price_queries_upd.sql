CREATE DATABASE price_analysis;
use price_analysis;
-- 1. What are all the airline ticket records in the dataset
SELECT * FROM airline;

-- 2. Which airline has the highest average ticket price
SELECT airline, AVG(price_usd) AS avg_price
FROM airline
GROUP BY airline
ORDER BY avg_price DESC;

-- 3. How does average ticket price vary across travel classes
SELECT class, AVG(price_usd) AS avg_price
FROM airline
GROUP BY class
ORDER BY avg_price DESC;

-- 4. Is there any difference between early booking and late booking prices
SELECT booking_type, AVG(price_usd) AS avg_price
FROM airline
GROUP BY booking_type;

-- 5. How does ticket price change across distance categories
SELECT distance_category, AVG(price_usd) AS avg_price
FROM airline
GROUP BY distance_category;

-- 6. Which routes have the highest average ticket prices
SELECT route, AVG(price_usd) AS avg_price
FROM airline
GROUP BY route
ORDER BY avg_price DESC
LIMIT 10;

-- 7. Which routes have the lowest average ticket prices
SELECT route, AVG(price_usd) AS avg_price
FROM airline
GROUP BY route
ORDER BY avg_price ASC
LIMIT 10;

-- 8. Which airline appears most frequently in the dataset
SELECT airline, COUNT(*) AS total_tickets
FROM airline
GROUP BY airline
ORDER BY total_tickets DESC;

-- 9. Which travel class has the highest number of bookings
SELECT class, COUNT(*) AS total_count
FROM airline
GROUP BY class;

-- 10. How do premium and standard tickets compare in average price
SELECT premium_class, AVG(price_usd) AS avg_price
FROM airline
GROUP BY premium_class;

-- 11. Which tickets are the most expensive
SELECT *
FROM airline
ORDER BY price_usd DESC
LIMIT 10;

-- 12. Which tickets are the least expensive
SELECT *
FROM airline
ORDER BY price_usd ASC
LIMIT 10;

-- 13. Which airline and class combination gives highest average fare
SELECT airline, class, AVG(price_usd) AS avg_price
FROM airline
GROUP BY airline, class
ORDER BY avg_price DESC;

-- 14. How does ticket price vary with days before departure
SELECT days_before_departure, AVG(price_usd) AS avg_price
FROM airline
GROUP BY days_before_departure
ORDER BY days_before_departure;

-- 15. Which airline has highest average price per kilometer
SELECT airline, AVG(price_per_km) AS avg_price_per_km
FROM airline
GROUP BY airline
ORDER BY avg_price_per_km DESC;