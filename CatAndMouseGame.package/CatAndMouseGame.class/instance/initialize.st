as yet unclassified
initialize 

	| remainingTime cat subways |
	
	size := 1200@670.
	remainingTime := 120.
	countSubways := 4. "needs to be at least 2"
	algDirectMiceCount := 3. "Count of mice with direct algorithm"
	algAvoidMiceCount := 3. "Count of mice with avoid algorithm"
	
	board  := CatAndMouseGameBoard new.
	board setSize: size.
	
	cat := self createCat.
	board setCat: cat.
	board setRemainingTime: remainingTime.
	
	subways := self createSubways: board cat: cat.
	board setSubways: subways.
	
	board setMice: (self createMice: board subways: subways).
	
	board openInWorld.
	board addAllEntities.
	board startGame.