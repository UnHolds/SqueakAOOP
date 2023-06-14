as yet unclassified
initialize 
	| cat m1 m2 s1 s2 h1 h2 h3 h4 |
	m1 := CatAndMouseGameMouse new.
	m2 := CatAndMouseGameMouse new.
	
	s1 := CatAndMouseGameSubway new.
	h1 := CatAndMouseGameHole new.
	
	h2 := CatAndMouseGameHole new.
	s1 setHoles: (Array with: h1 with: h2).
	
	s2 := CatAndMouseGameSubway new.
	h3 := CatAndMouseGameHole new.
	h4 := CatAndMouseGameHole new.
	s2 setHoles: (Array with: h3 with: h4).
	
	cat := CatAndMouseGameCat new.
	
	board  := CatAndMouseGameBoard new.
	board setSize: 600@300.
	board setMice: (Array with: m1 with: m2).
	board setCat: cat.
	board setSubways: (Array with: s1 with: s2).
	
	board openInWorld.
	
	cat setPosition: 10@40.
	m1 setPosition: 10@10.
	m2 setPosition: 40@10.
	
	h1 setPosition: 80@10.
	h2 setPosition: 80@40.
	h3 setPosition: 120@10.
	h4 setPosition: 120@40.
	

	board addAllEntities.