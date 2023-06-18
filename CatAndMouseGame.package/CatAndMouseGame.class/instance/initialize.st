as yet unclassified
initialize 

	| size remainingTime |
	
	size := 1200@670.
	remainingTime := 50.
	
	board  := CatAndMouseGameBoard new.
	board setSize: size.
	board setMice: (self createMice: board).
	
	board setRemainingTime: remainingTime.
	board setCat: (self createCat).
	board setSubways: (self createSubways: board).
	board openInWorld.
	
	board addAllEntities.
	board startGame.