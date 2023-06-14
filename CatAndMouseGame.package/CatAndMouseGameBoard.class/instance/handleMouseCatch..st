as yet unclassified
handleMouseCatch: aMouse
	"takes care of the score and mouse morph when a mouse is caught"

	self increaseScore.
	
	self getMice remove: aMouse.
	
	self removeMorph: aMouse. 