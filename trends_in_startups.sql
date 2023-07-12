-- taking a look at the startups table --

SELECT *
FROM startups;

-- calculating the total number of companies in the table --

SELECT COUNT(*)
FROM startups;

-- to know the total value of all companies in the table I get the SUM() of the --
-- valuation column --

SELECT SUM(valuation)
FROM startups;

-- to get the highest amount raised by a startup I return the maximum amount of money raised --

SELECT MAC(raised)
FROM startups;

-- here is the maximum amount of money raised during 'Seed' stage --

SELECT MAX(raised)
FROM startups
WHERE stage = 'Seed';

-- in what year was the oldest company on the list founded? --

SELECT MIN(founded)
FROM startups;

-- returning the average valuation --

SELECT AVG(valuation)
FROM startups;

-- returning the average valuation in each category --

SELECT category, AVG(valuation)
FROM startups
GROUP BY category;

-- returning the average valuation in each category --
-- plus rounding the averages to two decimal places --

SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY category;

-- returning the average valuation in each category --
-- plus rounding the averages to two decimal places --
-- and lastly, ordering the list from highest averages to lowest --

SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY 1
ORDER BY 2 DESC;

-- returning the name of each category with the total number of companies that belong to it --

SELECT category, COUNT(*)
FROM startups
GROUP BY category;

-- filtering the result to only include categories that have more than three companies in them --

SELECT category, COUNT(*)
FROM startups
GROUP BY category
HAVING COUNT(*) > 3;

-- finding the average size of a startup in each location --

SELECT location, AVG(employees)
FROM startups
GROUP BY location;

-- finding the average size of a startup in each location with average sizes above 500 --

SELECT location, AVG(employees)
FROM startups
GROUP BY location
HAVING AVG(employees) > 500;