/*
Problem:
========
Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

Solution:
=========
*/

-- Actual SQL query starts here
SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '[AEIOU]$'
