-- For all months with days
select o.OrderDate as MonthsWithNoChaiOrders from Product p, OrderDetail od, `Order` o
where p.id != 1
and od.Orderid = o.Id
group by o.OrderDate

-- OR just months
select distinct strftime('%m', o.OrderDate) as MonthsWithNoChaiOrders 
from Product p, OrderDetail od, `Order` o
where p.id != 1
and od.Orderid = o.Id
group by o.OrderDate