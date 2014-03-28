SELECT
	p.Name
FROM
	Pokemon p
JOIN
	Moves m
ON
	m.Name = 'Earthquake'
LEFT OUTER JOIN
	MoveSet learned_moves
ON
	learned_moves.PokemonUID = p.GUID
	AND learned_moves.MoveUID = m.GUID
JOIN
	TMs tm
ON
	tm.PokemonUID = p.GUID
	AND tm.MoveUID = m.GUID
ORDER BY
	p.NationalId;