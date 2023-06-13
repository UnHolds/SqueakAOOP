as yet unclassified
initialize 
	| cat mArray m1 m2 |
	m1 := CatAndMouseGameMouse new.
	m1 setPosition: 10@10.
	m2 := CatAndMouseGameMouse new.
	m2 setPosition: 40@10.
	
	mArray := #(m1 m2).
	
	cat := CatAndMouseGameCat new.
	cat setPosition: 10@40.
	
	board  := CatAndMouseGameBoard new.
	board setSize: 600@300.
	board setMice: mArray.
	board setCat: cat.
	board openInWorld.
	board draw.