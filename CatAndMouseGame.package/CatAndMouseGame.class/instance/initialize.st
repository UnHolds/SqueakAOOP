as yet unclassified
initialize 
	| cat s1 s2 h1 h2 h3 h4 |
	
	
	s1 := CatAndMouseGameSubway new.
	h1 := CatAndMouseGameHole new.
	h2 := CatAndMouseGameHole new.
	
	
	s2 := CatAndMouseGameSubway new.
	h3 := CatAndMouseGameHole new.
	h4 := CatAndMouseGameHole new.
	
	
	cat := CatAndMouseGameCat new.
	
	board  := CatAndMouseGameBoard new.
	board setSize: 600@300.
	board setMice: (self createMice: board).
	board setCat: cat.
	board setRemainingTime: 50.
	
	s2 setHoles: (OrderedCollection with: h3 with: h4).
	s1 setHoles: (OrderedCollection with: h1 with: h2).
	board setSubways: (Array with: s1 with: s2).
	
	board openInWorld.
	
	cat setPosition: 10@40.
	
	h1 setPosition: 80@10.
	h2 setPosition: 80@40.
	h3 setPosition: 120@10.
	h4 setPosition: 120@40.
	
	board addAllEntities.

	
	board startGame.