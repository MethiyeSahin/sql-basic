--Create procedure
Create Procedure GetProducts as select * from Products Go 
Exec GetProducts  // Select products � her seferinde yazmak yerine prosed�r olu�turdun

**Prosed�rle d��ar�dan parametre alma (ProductID si 5 olan� �a��r)
Create Procedure GetProductById @ProductId int as select * from Products where ProductID=@ProductId
Exec GetProductById @ProductId=5

Create procedure GetProductName @ProductName nvarchar(30) as select * from Products where ProductName=@ProductName
Exec GetProductName @ProductName='Chai'

--Alter
Alter Procedure GetProductById @ProductId int, @ProductName nvarchar(30) as select * from Products where ProductID=@ProductId AND ProductName=@ProductName
 Exec  GetProductById @ProductId=1, @ProductName='Chai'

