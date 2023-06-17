as yet unclassified
initialize 
	
	board  := CatAndMouseGameBoard new.
	board setSize: 600@300.
	board setMice: (self createMice: board).
	
	board setRemainingTime: 50.
	board setCat: (self createCat).
	board setSubways: (self createSubways: board).
	board openInWorld.
	
	board addAllEntities.
	board startGame.