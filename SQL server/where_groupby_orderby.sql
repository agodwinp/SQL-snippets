
-- this code will select columns from a table, create an aggregation based on a where clause and order by another column
select
	['<column1>'],
	sum(['<column2>']) as aggregate_me -- could use any aggregation here and have more than 2 columns
from
	[<name of database>''].[dbo].['<table>']
where
	['<column1>'] is not null
group by
	['<column1>']
order by 
	['<column1>'] asc
