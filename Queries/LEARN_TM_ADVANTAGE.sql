SELECT DISTINCT
	moves_to_pokemon.Name 
FROM
	Weaknesses w 
JOIN
	Types weak_type 
ON
	weak_type.GUID = w.PokemonUIDWeak 
	AND weak_type.Name = 'Fire'
JOIN
	Types strong_type 
ON
	strong_type.GUID = w.PokemonUIDStrong
JOIN
	Moves type_to_move
ON
	type_to_move.Type_ = strong_type.Name
/*JOIN
	TMs pokemon_to_tms
ON
	pokemon_to_tms.MoveUID = type_to_move.GUID*/
JOIN
	MoveSet pokemon_to_moveset
ON
	pokemon_to_moveset.MoveUID = type_to_move.GUID
JOIN
	Pokemon moves_to_pokemon
ON
	-- pokemon_to_tms.PokemonUID = moves_to_pokemon.GUID
	-- OR 
	pokemon_to_moveset.PokemonUID = moves_to_pokemon.GUID
ORDER BY
	moves_to_pokemon.NationalId
;