as yet unclassified
initialize 

	| size remainingTime cat|
	
	size := 1200@670.
	remainingTime := 50.
	
	board  := CatAndMouseGameBoard new.
	board setSize: size.
	board setMice: (self createMice: board).
	
	board setRemainingTime: remainingTime.
	cat := self createCat.
	board setCat: cat.
	board setSubways: (self createSubways: board cat: cat).
	board openInWorld.
	
	board addAllEntities.
	board startGame.