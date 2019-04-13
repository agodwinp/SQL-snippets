-- This code assumes that you have a table with a date column

-- this will aggregate the table by month with an average, minimum, maximum and sum
select
    str(year(['<date column>'])) as 'Year',
	str(month(['<date column>'])) as 'Month',
	sum(['<column to aggregate>']) as 'Sum',
	avg(['<column to aggregate>']) as 'Average',
	min(['<column to aggregate>']) as 'Min',
	max(['<column to aggregate>']) as 'Max',
	into ['<name of database>'].[dbo].['<new table>']
    from
        ['<name of database>'].[dbo].['<table>']
	where
	    ['<date column>'] is not null
	group by
		year(['<date column>']),
		month(['<date column>'])
