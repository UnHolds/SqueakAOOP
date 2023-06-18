as yet unclassified
move
	(residingSubway isNil)
	ifFalse: [
		(subwayRemainingCyles <= 0)
		ifTrue: [
			residingSubway exit: mouse.
			residingSubway := CatAndMouseGameNil new.
		].
		subwayRemainingCyles := subwayRemainingCyles - 1.
	].
	Transcript show: '#'.
	^(mouse getPosition).
	

	