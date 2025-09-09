-- SQL Queries for Bengaluru Housing Analysis
-- Assumes a table named 'houses' with columns similar to CSV headers

-- 1. Average rent by BHK
SELECT bhk as bhk, ROUND(AVG(minprice),2) as avg_rent
FROM houses
GROUP BY bhk
ORDER BY avg_rent DESC;

-- 2. Average rent by area (top areas)
SELECT locality as area, ROUND(AVG(minprice),2) as avg_rent
FROM houses
GROUP BY locality
ORDER BY avg_rent DESC
LIMIT 10;

-- 3. Furnishing impact on rent
SELECT furnishing as furnishing, ROUND(AVG(minprice),2) as avg_rent
FROM houses
GROUP BY furnishing;
