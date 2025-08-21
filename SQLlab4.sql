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

-- ต้องการรหัสพนักงาน ชื่อพนักงาน รหัสใบสั่งซื้อที่เกี่ยวข้อง เรียงตามลำดับรหัสพนักงาน
select E.EmployeeID, FirstName, OrderID
from Orders O join Employees E
on O.EmployeeID=E.EmployeeID
order by 1

-- ต้องการรหัสสินค้า เมือง และประเทศของบริษัทผู้จำหน่าย
select ProductID, City, Country
from Products P join Suppliers S
on P.SupplierID=S.SupplierID

-- ต้องการชื่อบริษัทขนส่ง และจำนวนใบสั่งซื้อที่เกี่ยวข้อง
select CompanyName, COUNT(*)
from Orders O join Shippers S
on O.ShipVia=S.ShipperID
group by CompanyName

-- ต้องการรหัสสินค้า ชื่อสินค้า และจำนวนทั้งหมดที่ขายได้
select p.ProductID, p.ProductName, sum(Quantity) total
from Products P join [Order Details] Od
on p.ProductID=od.ProductID
group by p.ProductID, p.ProductName order by 1

