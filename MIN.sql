-- Script for YouTube Video "Introduction to Aggregate Functions": https://youtu.be/903R2NHMcjw
-- YouTube Channel: https://www.youtube.com/@DatabasesAndSQLForBeginners
-- MIN() Examples

select min("GPA") as "Lowest GPA"
from "Student";

select "State", min("GPA") as "Lowest GPA"
from "Student"
group by "State"
order by "Lowest GPA" DESC;

select *
from "Student"
where "GPA" = (select min("GPA") from "Student");

select *
from "Student"
where "GPA" > (select min("GPA") from "Student");

