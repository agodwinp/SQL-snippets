
-- this code will calculate skewness and kurtosis of a chosen column

WITH SKEWNESS AS (
	SELECT 
		SUM(1.0*'<column>') AS RX,
 		SUM(POWER(1.0*'<column>',2)) AS RX2,
 		SUM(POWER(1.0*'<column>',3)) AS rx3,
 		COUNT(1.0*'<column>') AS RN,
 		STDDEV(1.0*'<column>') AS STDV,
 		AVG(1.0*'<column>') AS AV
	FROM '<schema>'.'<table>' )
SELECT
   (RX3 - 3*RX2*AV + 3*RX*AV*AV - RN*AV*AV*AV) / (STDV*STDV*STDV) * RN / (RN-1) / (RN-2) AS SKEWNESS_VALUE
FROM SKEWNESS;

WITH KURTOSIS AS (
	SELECT 
		SUM(1.0*'<column>') AS RX,
 		SUM(POWER(1.0*'<column>',2)) AS RX2,
 		SUM(POWER(1.0*'<column>',3)) AS RX3,
 		SUM(POWER(1.0*'<column>',4)) AS RX4,
 		COUNT(1.0*'<column>') AS RN,
 		STDDEV(1.0*'<column>') AS STDV,
 		AVG(1.0*'<column>') AS AV
	FROM '<schema>'.'<table>' )
SELECT
   (RX4 - 4*RX3*AV + 6*RX2*AV*AV - 4*RX*AV*AV*AV + RN*AV*AV*AV*AV) / (STDV*STDV*STDV*STDV) * RN * (RN+1) / (RN-1) / (RN-2) / (RN-3) - 3.0 * (RN-1) * (RN-1) / (RN-2) / (RN-3) AS KURTOSIS_FINAL
FROM KURTOSIS;
