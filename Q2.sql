--Question:

--Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

--Answer:

SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[aeiou].*[aeiou]$'

--Explanation:

--.*: Matches any number of characters between the first and last character.