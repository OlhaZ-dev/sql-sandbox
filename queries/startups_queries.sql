SELECT *
FROM startups;

SELECT COUNT(*)
FROM startups;

SELECT SUM(valuation)
FROM startups;

SELECT MAX(raised)
FROM startups;

SELECT MAX(raised)
FROM startups
WHERE STAGE = 'Seed';

SELECT *
FROM startups
GROUP BY founded
LIMIT 1;

SELECT category, AVG(valuation)
FROM startups
GROUP BY category;

SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY category;

SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY category
ORDER BY AVG(valuation) DESC;

SELECT category,
   COUNT(*)
FROM startups
GROUP BY category;

SELECT category,
   COUNT(*)
FROM startups
GROUP BY category
HAVING COUNT(*) > 3
ORDER BY COUNT(*) DESC;

SELECT location,
   AVG(employees)
FROM startups
GROUP BY location;ф

SELECT location,
   AVG(employees)
FROM startups
GROUP BY location
HAVING COUNT(*) > 3;









