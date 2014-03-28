SELECT DISTINCT
	p.Name,
	p.Attack,
	p.Defense
FROM
	Pokemon p
JOIN
	Type_ pokemon_to_type
ON
	pokemon_to_type.PokemonUID = p.GUID
JOIN
	Types ty
ON
	ty.GUID = pokemon_to_type.TypeUID
WHERE
	p.Attack > 80
	OR p.Defense > 80
ORDER BY
	p.NationalId;