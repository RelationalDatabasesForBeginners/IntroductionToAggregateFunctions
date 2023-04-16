-- YouTube Channel: https://www.youtube.com/@DatabasesAndSQLForBeginners
-- Script for YouTube Video "Introduction to Aggregate Functions": https://youtu.be/903R2NHMcjw

-- AVG() Examples

select avg("GPA") as "AverageGPA"
from "Student";

select avg(distinct "GPA") as "Average GPA"
from "Student";

select * from "Student"
where "GPA" > (select AVG("GPA") from "Student");

select "State",avg("GPA") as "Average GPA"
from "Student"
group by "State"
order by "Average GPA" desc;