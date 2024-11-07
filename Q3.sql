/*
Problem:
========
Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

Solution:
=========
*/

SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[^AEIOU]'

/*
Explanation:
============

- The REGEXP '^[^AEIOU]' inner ^ represents the negation of the expression.

*/