as yet unclassified
containsHole: aHole
	
	holes do: [
		:hole |
		(hole = aHole)
		ifTrue: [^True].
	].
	^False.