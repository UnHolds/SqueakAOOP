as yet unclassified
getVectorLength: vector

	| result |
	result := (((vector x) * (vector x)) + ((vector y) * (vector y))) sqrt.
	^result.