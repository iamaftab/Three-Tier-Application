Create Database ProductDB;

Create Table Products(Id int Primary Key not null Identity,
				Product_Name nvarchar(100) not null,
				Category nvarchar(50) not null,
				Product_Desc nvarchar(MAX),
				Price money not null);

Select * From Products;

Create Procedure InsertData
@pName nvarchar(100),
@pCat nvarchar(50),
@pDesc nvarchar(MAX),
@price money
as
Begin
Insert Into Products Values(@pName, @pCat, @pDesc, @price)
end

Create Procedure GetData
as
Begin
	Select * From Products;
end

Create Procedure DeletaData
@pId int
as
Begin
	Delete From Products Where id= @pId
end

Truncate Table Products;