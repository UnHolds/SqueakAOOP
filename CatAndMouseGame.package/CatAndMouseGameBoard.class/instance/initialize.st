initialization
initialize
	| width height|
	super initialize.
	running := False. 
	width := 500.
	height := 500.
	color := Color green.
	self bounds: ((5@5) extent: (width@height) + (2 * self borderWidth)).
	score := 0.  
	scoreMorph := TextMorph new.
	self addMorph: scoreMorph.
	scoreMorph position: ((width)@20).
	self setScoreText: 0.
	