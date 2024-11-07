--Question:

--Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

--Solution:

SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '[AEIOU]$'

--Explanation:

/*
    DISTINCT is used for non duplicates
    REGEXP 'AEIOU%' is a regular expression pattern that matches any city name ending with a vowel
    $ is for ending
    ^ is for starting
    ? containg  

*/