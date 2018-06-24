SELECT * FROM eventplanline;
#1st select
SELECT DISTINCT(city),state,zip
FROM Customer;

# 2ND SELECT
SELECT Empname,department,phone,email
FROM employee
WHERE phone like '3-%';

#3rd select
SELECT *
FROM Resourcetbl
WHERE rate BETWEEN 10 AND 20
ORDER BY rate;

#4th SELECT
SELECT Eventno,Dateauth,Status
FROM eventrequest
WHERE Status IN ('Approved','Denied') AND 
      YEAR(Dateauth)=2013 AND MONTH(Dateauth)=7;
      
#5th select
SELECT l.Locno,l.Locname
FROM Location l INNER JOIN Facility f
    ON l.Facno=f.Facno
WHERE f.FacName='Basketball arena';

#6th select
SELECT Planno,Count(Lineno) as CountLineNo,SUM(Numberfld) as TotalResourses
FROM Eventplanline
GROUP BY Planno
HAVING Count(Lineno)>=1;