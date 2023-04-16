-- YouTube Channel: https://www.youtube.com/@DatabasesAndSQLForBeginners
-- Script for YouTube Video "Introduction to Aggregate Functions": 

-- Create Student Table
DROP TABLE IF EXISTS public."Student";

CREATE TABLE IF NOT EXISTS public."Student"
(
	"Id" serial,
    "StudentId" integer,
    "FirstName" character varying(256),
    "LastName" character varying(256),
    "Address" character varying(256),
    "City" character varying(256),
    "State" character varying(256),
    "PostalCode" character varying(256),
    "GPA" double precision,
    PRIMARY KEY ("Id"))

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Student"
    OWNER to postgres;
    
-- Insert data
INSERT INTO public."Student"(
	"StudentId","FirstName","LastName","Address","City","State","PostalCode", "GPA")
	VALUES 
	(305,'Tim','Berners-Lee','32 Vassar St','Cambridge','Massachusetts','02139',3.20),
	(683,'Ada','Lovelace','12 St James Square','London','United Kingdom','SW1Y 4LE',4.00),
	(501,'Steve','Wozniak','16400 Blackberry Hill Rd','Los Gatos','California','95030',2.65),
	(511,'Alan','Turing','96 Euston Road','London','United Kingdom','NW1 2DB',3.95),
	(368,'Homer','Simpson','742 Evergreen Terrace','Springfield','Oregon','97475',2.68),
	(482,'Montgomery','Scott','201 Union St','Aberdeen','United Kingdom','AB11 6UG',null),
	(419,'Albert','Einstein','112 Mercer St','Princeton','New Jersey','08540',4.00),
	(708,'Nikola','Tesla','8 West 40th Street','New York','New York','10018',3.98),
	(241,'Sherlock','Holmes','221B Baker St','London','United Kingdom','NW1',3.51);
