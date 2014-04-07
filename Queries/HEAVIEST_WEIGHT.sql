/* select MAX(cast(substring(Height, 1,locate('lbs', Height)-1) as DECIMAL(10,1))) from Pokemon; */
/*
SELECT
	p.Name,
	p.Height Weight
FROM
	Pokemon p
WHERE
	CAST(SUBSTRING(p.Height, 1, LOCATE('lbs', p.Height)-1) AS DECIMAL(10,1)) >= ALL 
		(SELECT CAST(SUBSTRING(Height, 1, LOCATE('lbs', Height)-1) AS DECIMAL(10,1)) FROM Pokemon)
	AND p.Height IS NOT NULL;
*/

SELECT
	p.Name,
	p.Height Weight
FROM
	Pokemon p
WHERE
	(p.NationalID <= 151 AND p.Weight >= ALL (SELECT x.Weight FROM Pokemon x WHERE x.NationalID <= 151)) OR
	(p.NationalID > 151 AND p.Weight >= ALL (SELECT y.Weight FROM Pokemon y WHERE y.NationalID > 151));