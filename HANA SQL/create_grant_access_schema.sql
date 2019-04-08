
-- this code will create a schema and grant access to a chosen user to it

CALL _SYS_REPO.GRANT_SCHEMA_PRIVILEGE_ON_ACTIVATED_CONTENT('select', '<new schema>', '<user>')

CREATE SCHEMA '<schema>' owned by _SYS_REPO
