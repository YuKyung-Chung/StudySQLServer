--GROUP BY ROLLUP
SELECT groupName
     , SUM(price * amount) AS '�׷캰���űݾ��հ�'
  FROM buyTbl
 GROUP BY ROLLUP(groupName);

 -- WITH���� CTE
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
	WHEN 1 THEN '���հ�' END AS [��ǰ�׷�]
       , SUMM AS [�׷캰���űݾ�]
	  -- , DIV 
    FROM cte_summary;