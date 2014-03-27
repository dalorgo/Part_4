SELECT
	pp.Name,
	pp.NationalId,
	em.TypeName
FROM
	Pokemon pp
JOIN
	(SELECT
		MAX(p.NationalId) NationalId,
		t.Name TypeName
	FROM
		Pokemon p
	JOIN
		Type_ pokemon_to_type
	ON
		pokemon_to_type.PokemonUID = p.GUID
	JOIN
		Types t
	ON
		pokemon_to_type.TypeUID = t.GUID
	GROUP BY
		t.Name) em
ON
	pp.NationalId = em.NationalId
ORDER BY
	pp.NationalId;