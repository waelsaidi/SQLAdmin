with Cte_Org As
(
Select Staff_Id,
First_Name,
Manager_Id
from Staffs
where Manager_Id is null
union all

Select 
e.Staff_Id,
e.First_Name,
e.Manager_Id
from Staffs e
 Inner Join Cte_Org o
      on o.Staff_Id=e.Manager_Id
	  )

	  Select * from Cte_Org order by Manager_Id  
