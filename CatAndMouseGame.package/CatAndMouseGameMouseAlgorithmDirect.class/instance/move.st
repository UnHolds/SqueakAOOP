as yet unclassified
move

	"this algorithm just moves directly from current position to random hole"

	| newPosition subway |
	
	(residingSubway isNil)
	ifFalse: [
		^(super move).
	].
	
	(nextHole isNil) ifTrue: [self calcNextHole ].

	newPosition := self getNewPosition: (mouse getPosition) destination: (nextHole getPosition).
	
	(nextHole containsPoint: (mouse getPosition))
	ifTrue: [
		subway := self getSubwayViaHole: nextHole.
		subway enter: mouse.
		residingSubway := subway.
		subwayRemainingCyles := self getResidingTime.
		self calcNextHole.
	].
	 
	^newPosition. 