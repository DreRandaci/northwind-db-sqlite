-- Get the product name , count of orders processed
select p.productName Product, count(o.OrderId) OrdersProcessed
from OrderDetail o, product p 
where o.productid = p.id
group by Product
order by OrdersProcessed desc;