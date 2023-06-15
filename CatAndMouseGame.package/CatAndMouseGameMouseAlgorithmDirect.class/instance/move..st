as yet unclassified
move: aPosition

	"this algorithm just moves directly from current position to random hole"

	| newPosition |
	
	(nextHole isNil) ifTrue: [self calcNextHole ].

	newPosition := self getNewPosition: aPosition destination: (nextHole getPosition).
	 
	^ (super move: newPosition). 