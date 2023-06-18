as yet unclassified
move

	"this algorithm just moves directly from current position to random hole"

	| newPosition |
	
	(nextHole isNil) ifTrue: [self calcNextHole ].

	newPosition := self getNewPosition: (mouse getPosition) destination: (nextHole getPosition).
	
	(nextHole containsPoint: (mouse center))
	ifTrue: [
			
	].
	 
	^newPosition. 