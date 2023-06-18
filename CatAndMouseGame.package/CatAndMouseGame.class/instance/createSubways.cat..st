as yet unclassified
createSubways: aBoard cat: cat

	|  s1 s2 h1 h2 h3 h4 |
	
	h1 := CatAndMouseGameHole new.
	h1 setPosition: 80@10.
	h2 := CatAndMouseGameHole new.
	h2 setPosition: 80@40.
	s1 := CatAndMouseGameSubway new.
	s1 setHoles: (OrderedCollection with: h1 with: h2).
	s1 setCat: cat.
	
	h3 := CatAndMouseGameHole new.
	h3 setPosition: 320@80.
	h4 := CatAndMouseGameHole new.
	h4 setPosition: 320@120.
	s2 := CatAndMouseGameSubway new.
	s2 setHoles: (OrderedCollection with: h3 with: h4).
	s2 setCat: cat.
	
	^(Array with: s1 with: s2).