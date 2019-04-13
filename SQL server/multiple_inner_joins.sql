-- This code assumes that you have 5 tables to join with a common '<key>'

use ['<name of database>']

-- select the desired columns from the tables. Tables are referenced using alias's
select 
	a.*, -- This is the 'base' table that you will join columns onto
	b.['<column>'], -- These are the columns that will join onto the base table
	c.['<column>'], 
	d.['<column>'],
	e.['<column>'],
	f.['<column>']

into [dbo].['<name of new table>']

from
	[dbo].['<base table>'] a -- base table

inner join
	[dbo].['<first table to join>'] b
		on a.['<key>'] = b.['<key>'] 

inner join
	[dbo].['<second table to join>'] c
		on a.['<key>'] = c.['<key>']

inner join
	[dbo].['<third table to join>'] d
		on a.['<key>'] = d.['<key>']

inner join
	[dbo].['<fourth table to join>'] e
		on a.['<key>'] = e.['<key>']

inner join
	[dbo].['<fifth table to join>'] f
		on a.['<key>'] = f.['<key>']
