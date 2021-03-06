declare @myId int;
select @myId = ISNULL(MAX(MyTableId),0) + 1 from dbo.MyTable;

insert into dbo.MyTable
(
	MyTableId,
	MyColumn
)
values
(
	@myId,
	N'$(MyDataValue1)'
),
(
	@myId + 1,
	N'$(MyDataValue2)'
);