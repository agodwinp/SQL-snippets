# SQL Snippets

This is a public repository for SQL code snippets that I'd like to share.

***

## Files

### HANA SQL

#### check_tenant_db_ports.sql
- This code is a short snippet to check the ports of a tenant database.

#### create_grant_access_schema.sql
- This code is a short template to create a schema and grant access for a chosen user to it.

#### create_tenant_db.sql
- This code is a template to create a tenant database.
- Also, it will help you to start the diserver and scriptserver.

#### fill_nulls.sql
- This code is a short snippet to help you fill null values within a table, with your chosen value.

#### grant_create_view_access_on_schema.sql
- This code is a short snippet to grant access to create views on a schema.

#### skewness_kurtosis.sql
- This code will calculate skewness and kurtosis of a chosen column with raw SQL. 

### HANA SQL/PAL

#### devuser_admin.sql
- This code will provide snippets to run against a system and tenant database, in order to create and configure a HANA PAL developer user.
- A prerequisite is to have already created a tenant database in HANA.

#### multivariate_analysis.sql
- This code provides a template to use the HANA PAL Multivariate Analysis procedure.
- This algorithm, using the current configuration, will generate a Pearson's R Correlation matrix for the chosen table. 

### SQL Server

#### add_prefix.sql
- This code will concatenate a string, in this case '0', to the start of every row in a column.
- I used this to append a '0' at the start of every row containing the numbers 1-9, in order to format a date column that I was to create. 


## Authors
- Arun Godwin Patel