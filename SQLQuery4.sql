--join
select * from Products as p join Categories as c on p.CategoryID=c.CategoryID // product tablosunun tüm kayýtlarýyla category tablosunun tüm kayýtlarýyla  CategoryID si baz alýnarak birleþtirildi
select c.CategoryID,c.CategoryName,p.ProductName,p.UnitPrice from Products as p join Categories as c on p.CategoryID=c.CategoryID //belirli kolonlarýbaðla


select* from [Order Details] as od join Products as p on od.ProductID=p.ProductID 
select od.OrderID,od.ProductID,p.ProductName,od.UnitPrice,od.Quantity,od.Discount from [Order Details] as od join Products as p on od.ProductID=p.ProductID 

--inner&right&left join
select p.ProductID,p.ProductName,c.CategoryID,c.CategoryName,p.UnitPrice from products as p inner join Categories as c on c.CategoryID=p.CategoryID
select p.ProductID,p.ProductName,c.CategoryID,c.CategoryName,p.UnitPrice from products as p left join Categories as c on c.CategoryID=p.CategoryID// soldan birleþtirdi product ýd no ya göre sýraladý
select p.ProductID,p.ProductName,c.CategoryID,c.CategoryName,p.UnitPrice from products as p right join Categories as c on c.CategoryID=p.CategoryID //saðdan birleþtirdi category ýd no ya göre sýraladý

select p.ProductID,p.ProductName,c.CategoryID,c.CategoryName,p.UnitPrice from products as p right join Categories as c on c.CategoryID=p.CategoryID where c.CategoryID=7 // products tabloda category ýd si 7 olanlarý 4 yaptýn saðdan right join yaptýðýn için productýd  null oldu
select p.ProductID,p.ProductName,c.CategoryID,c.CategoryName,p.UnitPrice from products as p left join Categories as c on c.CategoryID=p.CategoryID  where c.CategoryID=7

--self join
select * from Products as P,Categories as c where p.CategoryID=c.CategoryID //join yazma "," kullan on yerine where kullan
select * from Products P,Categories c where p.CategoryID=c.CategoryID// as kullanmayabilirsin
select * from Products P, Orders o,[Order Details] od where o.OrderID=od.OrderID and  od.ProductID=p.ProductID