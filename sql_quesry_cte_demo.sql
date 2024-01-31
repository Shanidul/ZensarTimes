--CTE (Common Table Expression)

select * from Employees


With CTE_TotalEmployeesByDepartment(DepartmentId, TotalEmployees)
as

(Select DepartmentId,Count(1) as TotalEMployees from Employees group by DepartmentId)


select DepartmentName, TotalEmployees 
from Departments 
join CTE_TotalEmployeesByDepartment CTE
on Departments.DepartmentId = CTE.DepartmentId
order by TotalEmployees



