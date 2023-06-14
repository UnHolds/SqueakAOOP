as yet unclassified
initialize
	| width height |
	super initialize.
	startGame := False. 
	width := 500.
	height := 500.
	color := Color green.
	self bounds: (5@5 extent: ((width) @(height)) + (2 * self borderWidth)).
	score := 0. 
