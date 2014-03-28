SELECT
	p.Name,
	p.Weight,
	'lbs' UNIT
FROM
	Pokemon p
WHERE
	p.Weight >= ALL 
		(SELECT Weight FROM Pokemon)
	AND p.Weight IS NOT NULL
UNION
SELECT
	p.Name,
	p.Weight,
	'lbs' UNIT
FROM
	Pokemon p
WHERE
	p.Weight <= ALL 
		(SELECT Weight FROM Pokemon)
	AND p.Weight IS NOT NULL;