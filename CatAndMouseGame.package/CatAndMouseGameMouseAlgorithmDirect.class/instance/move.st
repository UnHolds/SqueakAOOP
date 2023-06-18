as yet unclassified
move

	"this algorithm just moves directly from current position to random hole"

	| newPosition subway |
	
	(nextHole isNil) ifTrue: [self calcNextHole ].

	newPosition := self getNewPosition: (mouse getPosition) destination: (nextHole getPosition).
	
	(nextHole containsPoint: (mouse center))
	ifTrue: [
		subway := self getSubwayViaHole: nextHole.
		subway enter: mouse.
	].
	 
	^newPosition. 