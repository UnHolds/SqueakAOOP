as yet unclassified
getNewPosition: start destination: destination
	| result normalised vectorLength |
	normalised := destination - start.
	
	(normalised = (0@0))
	ifTrue: [^start].
	vectorLength :=  (self getVectorLength: normalised).

	(vectorLength < speed)
	ifTrue: [
		^destination.
	].
	
	result := speed / (self getVectorLength: normalised) * normalised.
	result := result + start.
	^result.