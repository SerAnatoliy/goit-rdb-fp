SELECT id, year, 
MAKEDATE(year,1) start_date, 
CURDATE() curr_date, TIMESTAMPDIFF(YEAR, MAKEDATE(year,1), 
CURDATE()) diff_data 
FROM cases