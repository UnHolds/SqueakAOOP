as yet unclassified
move

	"this algorithm just moves directly from current position to random hole and avoid cats"

	| newPosition subway goalPos distanceCat catPos mousePos |
	
	(residingSubway isNil)
	ifFalse: [
		^(super move).
	].
	
	(nextHole isNil) ifTrue: [self calcNextHole ].
	
	catPos := (board getCat) getPosition. 
	mousePos := mouse getPosition.
	
	distanceCat := ((((catPos x  - mousePos x) raisedTo: 2) + ((catPos y - mousePos y) raisedTo: 2)) sqrt) rounded.

	(distanceCat < avoidRadius)
	ifTrue: [
		goalPos := (((catPos - (mouse getPosition)) * (-1)) * 100) + (mouse getPosition).
	]
	ifFalse: [goalPos := nextHole getPosition.].

	newPosition := self getNewPosition: (mouse getPosition) destination: goalPos.
	
	(nextHole containsPoint: (mouse getPosition))
	ifTrue: [
		subway := self getSubwayViaHole: nextHole.
		subway enter: mouse.
		residingSubway := subway.
		subwayRemainingCyles := 10 atRandom.
		self calcNextHole.
	].
	 
	^newPosition. 