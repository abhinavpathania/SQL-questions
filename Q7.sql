/*
Problem:
========

Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.


Solution:
=========
*/

-- Actual SQL query starts here
SELECT sum(city.population) FROM CITY,COUNTRY WHERE CITY.CountryCode = COUNTRY.Code and Country.continent='Asia'

/*
Explanation:
============
Explain the logic of your query here.

The query first joins the CITY and COUNTRY tables using the matching key columns, CountryCode. Then it filters the result to include only cities where the CONTINENT is 'Asia'. So used city table for sum of the populations where the CONTINENT is 'Asia.

*/