as yet unclassified
initialize 

	| remainingTime cat|
	
	size := 1200@670.
	remainingTime := 120.
	countSubways := 4.
	algDirectMiceCount := 0. "Count of mice with direct algorithm"
	algAvoidMiceCount := 1. "Count of mice with avoid algorithm"
	
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