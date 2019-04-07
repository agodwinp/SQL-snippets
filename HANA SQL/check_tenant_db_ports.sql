
-- this code is to check the ports of the tenant database, run this code on the tenant database

SELECT 
    SERVICE_NAME, PORT, SQL_PORT, (PORT + 2) HTTP_PORT 
FROM 
    SYS.M_SERVICES 
WHERE 
    (
     (SERVICE_NAME='indexserver' and COORDINATOR_TYPE= 'MASTER') 
     or 
     (SERVICE_NAME='xsengine'))
