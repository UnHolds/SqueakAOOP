as yet unclassified
move
	(residingSubway isNil)
	ifFalse: [
		((subwayRemainingCyles <= 0) and: (residingSubway isGoalSub = False))
		ifTrue: [
			residingSubway exit: mouse.
			residingSubway := CatAndMouseGameNil new.
		].
		subwayRemainingCyles := subwayRemainingCyles - 1.
	].
	^(mouse getPosition).
	

	