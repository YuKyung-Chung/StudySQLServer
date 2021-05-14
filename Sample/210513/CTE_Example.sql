--GROUP BY ROLLUP
SELECT groupName
     , SUM(price * amount) AS '그룹별구매금액합계'
  FROM buyTbl
 GROUP BY ROLLUP(groupName);

 -- WITH절과 CTE
WITH cte_summary(GRP, SUMM, DIV)
AS
(	SELECT groupName AS GRP
         , SUM(price * amount) AS SUMM
		 , GROUPING_ID(groupName) AS DIV
      FROM buyTbl
     GROUP BY ROLLUP(groupName)
)
 SELECT 
	CASE div
	WHEN 0 THEN grp
	WHEN 1 THEN '총합계' END AS [상품그룹]
       , SUMM AS [그룹별구매금액]
	  -- , DIV 
    FROM cte_summary;