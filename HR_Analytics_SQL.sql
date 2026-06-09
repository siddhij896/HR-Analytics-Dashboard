SELECT COUNT(*) as Employee_Count FROM hr_dataa;

SELECT Gender,
COUNT(*) as Employee_Count
FROM hr_dataa
GROUP BY Gender;

SELECT Department,
COUNT(*) AS Employee_Count
FROM hr_dataa
GROUP BY Department;

SELECT JobRole,
COUNT(*) AS Employee_Count
FROM hr_dataa
GROUP BY JobRole
order by Employee_Count desc;

SELECT Attrition, COUNT(*) as Atrrition_Count
FROM hr_dataa
GROUP BY Attrition;

SELECT
ROUND(
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)*100.0
/ COUNT(*),2
) AS Attrition_Rate
FROM hr_dataa;

SELECT Department,
COUNT(*) AS Attrition_Count
FROM hr_dataa
WHERE Attrition='Yes'
GROUP BY Department;

SELECT Gender,
COUNT(*) AS Attrition_Count
FROM hr_dataa
WHERE Attrition='Yes'
GROUP BY Gender;

SELECT JobRole,
COUNT(*) AS Attrition_Count
FROM hr_dataa
WHERE Attrition='Yes'
GROUP BY JobRole
ORDER BY Attrition_Count DESC;

SELECT ROUND(AVG(MonthlyIncome),2) AS Avg_Income
FROM hr_dataa;

SELECT EmployeeNumber,
MonthlyIncome
FROM hr_dataa
ORDER BY MonthlyIncome DESC
LIMIT 10;

SELECT Department,
ROUND(AVG(MonthlyIncome),2) AS Avg_Salary
FROM hr_dataa
GROUP BY Department;

SELECT ROUND(AVG(Age),0) AS Average_Age
FROM hr_dataa;

SELECT
CASE
WHEN Age BETWEEN 18 AND 25 THEN '18-25'
WHEN Age BETWEEN 26 AND 35 THEN '26-35'
WHEN Age BETWEEN 36 AND 45 THEN '36-45'
ELSE '46+'
END AS Age_Group,
COUNT(*) AS Employee_Count
FROM hr_dataa
GROUP BY Age_Group;

SELECT ROUND(AVG(YearsAtCompany),2)
AS Avg_Years
FROM hr_dataa;

SELECT YearsAtCompany,
COUNT(*) AS Employee_Count
FROM hr_dataa
GROUP BY YearsAtCompany
ORDER BY YearsAtCompany;

SELECT EducationField,
COUNT(*) AS Employee_Count
FROM hr_dataa
GROUP BY EducationField;

SELECT MaritalStatus,
COUNT(*) AS Employee_Count
FROM hr_dataa
GROUP BY MaritalStatus;

