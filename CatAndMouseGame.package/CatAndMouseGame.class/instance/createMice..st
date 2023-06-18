as yet unclassified
createMice: aBoard
	| mice m1 a1 m2 a2|
	
	m1 := CatAndMouseGameMouse new.
	a1 := CatAndMouseGameMouseAlgorithmDirect new.
	m1 setAlgorithm: a1.
	m1 setPosition: 10@10.
	a1 setBoard: board.
	a1 setMouse: m1.

	m2 := CatAndMouseGameMouse new.
	a2 := CatAndMouseGameMouseAlgorithmDirect new.
	m2 setAlgorithm: a2. 
	m2 setPosition: 40@10.
	a2 setBoard: board. 	
	a2 setMouse: m2.
	
	mice := (OrderedCollection with: m1 with: m2).
	^mice.