game
handleMouseCatch: aMouse
	"takes care of the score and mouse morph when a mouse is caught"
	| blood |
	
	self increaseScore.
	
	self getMice remove: aMouse.
	
	blood := CatAndMouseGameBlood new. 
	blood position: (aMouse getPosition). 
	self removeMorph: aMouse. 
	
	self addMorph: blood. 
	