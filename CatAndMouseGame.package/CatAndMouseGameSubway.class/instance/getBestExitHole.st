as yet unclassified
getBestExitHole
	| distance maxDistance bestHole holePos |
	maxDistance := -1.
	holes do: [
		:hole |
			holePos := hole getPosition.
			distance := ((((catPosition x  - holePos x) raisedTo: 2) + ((catPosition y - holePos y) raisedTo: 2)) sqrt) rounded.
			(distance > maxDistance)
			ifTrue: [
				maxDistance := distance.
				bestHole := hole.
			].
	].
	^bestHole.