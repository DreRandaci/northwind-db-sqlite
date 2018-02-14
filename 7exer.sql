-- 7. Get the list of employees who processed orders for the product chai
select e.FirstName || " " || e.LastName as EmployeeName
from `Order` o, product p, OrderDetail od, Employee e
where o.Id = od.OrderId
and p.id = 1
group by e.Id