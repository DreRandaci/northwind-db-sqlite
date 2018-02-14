-- Get the top 3 products which have the most orders
select * from
(select p.productName Product, count(o.Orderid) as Orders
from OrderDetail o, product p 
where o.productid = p.id
group by Product
order by orders desc)
limit 3