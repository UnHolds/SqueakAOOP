as yet unclassified
move: aPosition
	| newPosition |
	
	(nextHole isNil) ifTrue: [self calcNextHole ].

	newPosition := self getNewPosition: aPosition destination: (nextHole getPosition).
	 
	^ (super move: newPosition). 