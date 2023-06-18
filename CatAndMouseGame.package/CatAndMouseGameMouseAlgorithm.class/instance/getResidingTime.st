as yet unclassified
getResidingTime
	| time |
	
	time := 2 + (7 atRandom).
	
	^((1000 / (board stepTime)) * time)