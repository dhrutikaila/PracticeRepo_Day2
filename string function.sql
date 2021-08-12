
use dhruti


SELECT FName "NAME"
LENGTH (FName) "length"
FROM Emp11
WHERE FName LIKE 'J%'
OR FName LIKE 'M%'
OR FName LIKE 'a%'
 ORDER BY FName;


SELECT FName,
 LPAD (salary,10,'$') salary
 FROM Emp11;

SELECT IDENT_CURRENT,FName,LName,HireDate
  FROM Emp11
  WHERE POSITION ("07" IN DATE_FORMATE(HireDate,'%d %m %y'))>0;

SELECT  FName,LName FROM Emp11 WHERE INSTR(LName,'C')>2; 

SELECT RIGHT(PhoneNumber,4) as 'ph.no.' FROM Emp11;

UPDATE Emp11
SET PhoneNumber= REPLACE(PhoneNumber,'124','999')
WHERE PhoneNumber LIKE '%124%';

SELECT YEAR(CURRENT_TIMESTAMP)-
YEAR("1999-08-08")-
       (RIGHT(CURRENT_TIMESTAMP,5)<
	   RIGHT("1999-08-08",5)) as age;

SELECT DISTINCT(STR_TO_DATE
       (CONCAT(YEARWEEK(HireDate),'1'),'%x%v%w'))
	   FROM Emp11;

SELECT FName,HireDate
FROM Emp11
WHERE HireDate
BETWEEN '1987-06-01 00:00:00'
AND '1987-07-30 23:59:59';

SELECT DATE_FORMAT(CURDATE(),'%l:%i %p %b %e, %y');

SELECT FName,LName
  FROM Emp11 WHERE MONTH(HireDate)=6;

  SELECT FName,SYSDATE(),HireDate,DATEDIFF(SYSDATE(),HireDate)/365
  FROM Emp11

SELECT FName,HireDate
 FROM Emp11
 WHERE YEAR(HireDate)=1987;