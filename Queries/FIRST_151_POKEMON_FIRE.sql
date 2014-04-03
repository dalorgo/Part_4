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
	p.NationalId < 152
	AND t.Name = 'Fire'
ORDER BY
	p.NationalId;