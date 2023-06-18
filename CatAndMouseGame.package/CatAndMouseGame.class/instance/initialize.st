as yet unclassified
initialize 

	| remainingTime cat|
	
	size := 1200@670.
	remainingTime := 50.
	algDirectMiceCount := 3. "Count of mice with direct algorithm"
	
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