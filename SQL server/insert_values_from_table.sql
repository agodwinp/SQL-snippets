
-- This code will insert values from 3 columns in an existing table, into a new table
insert into [dbo].['<new table>']   -- insert values into
            (['<column_a>'], -- names of columns in new table
             ['<column_b>'],
             ['<column_c>'])
                select (['<column1>']),   -- values to insert
                       (['<column2>']),
                       (['<column3>'])
                       from [dbo].['<table>']    -- from this table

