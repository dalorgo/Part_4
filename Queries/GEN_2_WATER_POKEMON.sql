SELECT
	*
FROM
	Pokemon p
JOIN
	Type_ pokemon_to_type
ON
	pokemon_to_type.PokemonUID = p.GUID
JOIN
	Types t
ON
	t.GUID = pokemon_to_type.TypeUID
WHERE
	p.NationalId > 151
	AND t.Name = 'Water'
ORDER BY
	p.NationalId;