as yet unclassified
getSubwayViaHole: aHole
	| subways |
	
	subways := board getSubways.
	
	subways do: [
		:subway |
		((subway containsHole: aHole) = True)
		ifTrue: [^subway].	
	].