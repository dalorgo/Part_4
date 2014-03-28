SELECT DISTINCT
	p.Name 
FROM
	Weaknesses w 
JOIN
	Types weak_type 
ON
	weak_type.GUID = w.PokemonUIDWeak 
JOIN
	Types strong_type 
ON
	strong_type.GUID = w.PokemonUIDStrong 
JOIN
	Type_ pokemon_to_type 
ON
	pokemon_to_type.TypeUID = strong_type.GUID 
JOIN
	Pokemon p 
ON
	p.GUID = pokemon_to_type.PokemonUID 
WHERE
	weak_type.Name = 'Rock' 
ORDER BY 
	p.NationalId;