-- YouTube Channel: https://www.youtube.com/@DatabasesAndSQLForBeginners
-- Script for YouTube Video "Introduction to Aggregate Functions": https://youtu.be/903R2NHMcjw

-- MAX() Examples

select max("GPA") as "Highest GPA"
from "Student";

select *
from "Student"
where "GPA" = (select max("GPA") from "Student");

select *
from "Student"
where "GPA" < (select max("GPA") from "Student");

select "State", max("GPA") as "Highest GPA"
from "Student"
group by "State"
order by "Highest GPA" desc
