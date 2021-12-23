drop table if exists item

create table item (
	ean varchar(255),
	status char(1),
	store int,
	price DECIMAL(10,2),
)

INSERT INTO [dbo].[item]
           ([ean]
           ,[status]
           ,[store]
           ,[price])
     VALUES
           ('111111','A',10,25.02),
		   ('111111','I',10,15.00),
		   ('111111','I',10,30.02),
		   ('222222','I',20,30.50),
		   ('222222','I',20,40.02),
		   ('333333','A',30,10.50),
		   ('333333','A',30,9.00),
		   ('444444','A',40,8.50),
		   ('555555','I',50,9.00)

select ean,store,max(price) price  from (
	select ean,store,min(price) price
	from item
	where status='A'
	group by ean,store

	union

	select ean,store,max(price) price
	from item
	where status='I'
	group by ean,store
) o 
group by ean,store
order by store


