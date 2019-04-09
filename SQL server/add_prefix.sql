
-- This code will concatenate a '0' to the start of every value in a column where the length of the value is 1
-- I used this when adding a '0' to the start of values 1-9 but not for 10+

update
   ['<name of database>'].[dbo].['<table>']
set
   ['<column>'] = '0' + ['<column>'] -- the '0' can be swapped for anything you'd like to concatenate
where
   len(['<column>']) = 1;
