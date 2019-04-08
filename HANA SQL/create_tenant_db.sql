
-- this code will create a tenant database, run this from the system database

CREATE DATABASE '<tenant database>' SYSTEM USER PASSWORD '<password>';
ALTER DATABASE '<tenant database>' ADD 'diserver';
ALTER DATABASE '<tenant database>' ADD 'scriptserver';
