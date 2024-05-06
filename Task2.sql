DROP TABLE IF EXISTS cases;
DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
	id INT PRIMARY KEY AUTO_INCREMENT
    ,name_coutries VARCHAR(100)
	,code_countries VARCHAR(45)
);
CREATE TABLE cases (
id INT PRIMARY KEY AUTO_INCREMENT
,country_id INT
,year INT
,number_yaws TEXT
,polio_cases INT
,cases_guinea_worm INT
,number_rabies TEXT
,number_malaria TEXT
,number_hiv TEXT
,number_tuberculosis TEXT
,number_smallpox TEXT
,number_cholera_cases TEXT
,FOREIGN KEY (country_id) REFERENCES countries (id)
);
INSERT INTO countries (name_coutries, code_countries)
SELECT DISTINCT Entity, Code FROM infectious_cases;

INSERT INTO cases (country_id, year, number_yaws, polio_cases, cases_guinea_worm, number_rabies, number_malaria, number_hiv, number_tuberculosis, number_smallpox, number_cholera_cases)
SELECT c.id, Year, Number_yaws, polio_cases, cases_guinea_worm, number_rabies, number_malaria, number_hiv, number_tuberculosis, number_smallpox, number_cholera_cases
FROM infectious_cases ic
JOIN countries c ON ic.Entity = c.name_coutries AND ic.Code = c.code_countries;