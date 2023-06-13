as yet unclassified
initialize 
	| cat mArray m1 m2 |
	m1 := CatAndMouseGameMouse new.
	m2 := CatAndMouseGameMouse new.
	
	mArray := #(m1 m2).
	
	cat := CatAndMouseGameCat new.
	
	board  := CatAndMouseGameBoard new.
	board setSize: 600@300.
	board setMice: mArray.
	board setCat: cat.
	board openInWorld.