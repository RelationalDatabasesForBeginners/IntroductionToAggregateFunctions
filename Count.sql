-- YouTube Channel: https://www.youtube.com/@DatabasesAndSQLForBeginners
-- Script for YouTube Video "Introduction to Aggregate Functions": https://youtu.be/903R2NHMcjw

-- COUNT() Examples

select count(*) as "Total Count"
from "Student";

select count("GPA") as "Total Count"
from "Student";

select count("City") as "Total Count"
from "Student";

select count(*) as "Total Count"
from "Student"
where "GPA" > 3.0;

select "City",count(*) as "Total Count"
from "Student"
where "GPA" > 3.0
group by "City" 

select count(distinct "State") as "Total Count"
from "Student";