/* select MAX(cast(substring(Height, 1,locate('lbs', Height)-1) as DECIMAL(10,1))) from Pokemon; */

SELECT
	p.Name,
	p.Height Weight
FROM
	Pokemon p
WHERE
	CAST(SUBSTRING(p.Height, 1, LOCATE('lbs', p.Height)-1) AS DECIMAL(10,1)) >= ALL 
		(SELECT CAST(SUBSTRING(Height, 1, LOCATE('lbs', Height)-1) AS DECIMAL(10,1)) FROM Pokemon)
	AND p.Height IS NOT NULL;