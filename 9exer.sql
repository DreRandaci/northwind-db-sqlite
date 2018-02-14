-- Get the list of employees who processed the orders that belong to the city in which they live

select distinct e.FirstName || " " || e.lastname as Employee, e.city as City
from employee e, `order` o
where e.City = o.shipcity