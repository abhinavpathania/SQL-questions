/*
Problem:
========
Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

Solution:
=========
*/

-- Actual SQL query starts here
SELECT NAME FROM STUDENTS
WHERE MARKS > 75
ORDER BY SUBSTR(NAME.-3),ID ASC

/*
Explanation:
============

ORDER BY : Used for sorting
substr: Extracts the last three characters of each student's name.
when the last three characters are same then use ID to sort.
*/