as yet unclassified
move: aPosition
	| newPosition |
	newPosition := aPosition + (1@1). 
	^ (super move: newPosition). 