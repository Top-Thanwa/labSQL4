select CategoryName, ProductName, UnitPrice --categories.CategoryName, products.ProductName, products.UnitPrice
from Products,Categories
where Products.CategoryID=Categories.CategoryID

select CategoryName, ProductName, UnitPrice
from Products join Categories
on Products.CategoryID=Categories.CategoryID

select CategoryName, ProductName, UnitPrice
from Products as P,Categories as C
where P.CategoryID=C.CategoryID

select CompanyName, OrderID
from Orders as O, Shippers as S
where S.ShipperID=O.ShipVia

select CompanyName, OrderID
from Orders as O join Shippers as S
on S.ShipperID=O.ShipVia

--ต้องการรหัสสินค้า ชื่อสินค้า บริษัทผู้จำหน่าย ประเทศ
select ProductID, ProductName, CompanyName, Country
from Products P, Suppliers S
where p.SupplierID=s.SupplierID

select CompanyName, OrderID
from Orders O, Shippers S
where S.ShipperID=O.ShipVia
and OrderID=10275

select CompanyName, OrderID
from Orders O join Shippers S
on S.ShipperID=O.ShipVia
where OrderID=10275

