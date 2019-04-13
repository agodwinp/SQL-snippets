
-- this is some simple code to convert a string column to upper case

update
  '<schema>'.'<table>'
SET
  '<column>' = upper('<column>')
  