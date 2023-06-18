as yet unclassified
getResidingTime
	| time |
	
	time := 2000 + (7000 atRandom).
	
	^(time / (board stepTime))