
-- this code is to run the multivariate analysis PAL procedure to generate a pearsons R correlation matrix

SET SCHEMA "<schema>";

DROP TABLE "<schema>"."<corr_table>";
CREATE COLUMN TABLE "<schema>"."<corr_table>" AS (
SELECT "<column1>", "<column2>" -- can choose as many column as you wish
FROM "<schema>"."<table>"
);

DROP TYPE "<schema>"."BF_MULTIVARSTAT_RESULT_T";
CREATE TYPE "<schema>"."BF_MULTIVARSTAT_RESULT_T" AS TABLE(
	"ID" VARCHAR(100),
	"<column1>" DOUBLE,
	"<column2>" DOUBLE
);

DROP TABLE #PAL_PARAMETER_TBL;
CREATE LOCAL TEMPORARY COLUMN TABLE #PAL_PARAMETER_TBL (
    "PARAM_NAME" VARCHAR (256),
    "INT_VALUE" INTEGER,
    "DOUBLE_VALUE" DOUBLE,
    "STRING_VALUE" VARCHAR (1000)
);
INSERT INTO #PAL_PARAMETER_TBL VALUES ('RESULT_TYPE',1,null,null); -- default value is 0, it can be {0,1}

DROP TABLE BF_MULTIVARSTAT_RESULT_TBL;
CREATE COLUMN TABLE BF_MULTIVARSTAT_RESULT_TBL LIKE BF_MULTIVARSTAT_RESULT_T;

CALL "_SYS_AFL"."PAL_MULTIVARIATE_ANALYSIS"("<schema>"."<corr_table>", #PAL_PARAMETER_TBL, "<schema>"."BF_MULTIVARSTAT_RESULT_TBL") WITH OVERVIEW;

SELECT * FROM "<schema>"."BF_MULTIVARSTAT_RESULT_TBL";
