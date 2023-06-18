as yet unclassified
placeEntitiesRandom: entities

	| x y |

	entities do: [
		:entity |
		x := 50 + (((size x) - 100) atRandom).
		y := 50 + (((size y) - 100) atRandom).
		entity setPosition: (x@y).
	].