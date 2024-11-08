/*
Problem:
========
Query the list of CITY names from STATION that either do not end with vowels or do not start with vowels. Your result cannot contain duplicates.

Solution:
=========
*/

-- Actual SQL query starts here
SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[^AEIUO]'
OR CITY REGEXP '[^AEIUO]$'

/*
Explanation:
============
OR IS USED BECAUSE EITHER IS ALLOWED.

*/