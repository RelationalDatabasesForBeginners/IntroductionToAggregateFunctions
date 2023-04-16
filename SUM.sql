-- Script for YouTube Video "Introduction to Aggregate Functions": https://youtu.be/903R2NHMcjw
-- YouTube Channel: https://www.youtube.com/@DatabasesAndSQLForBeginners
-- SUM() Examples

select sum("GPA") as "Total GPA"
from "Student";

select sum(distinct "GPA") as "Total GPA"
from "Student";

select sum("GPA") as "Total GPA"
from "Student"
where "State" = 'United Kingdom';

select "State",sum("GPA") as "Total GPA"
from "Student"
group by "State"
order by "Total GPA" desc;