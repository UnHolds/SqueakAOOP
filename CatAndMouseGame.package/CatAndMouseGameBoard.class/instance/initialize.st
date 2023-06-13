as yet unclassified
initialize
	| width height |
	super initialize.
	width := 500.
	height := 500.
	self bounds: (5@5 extent: ((width) @(height)) + (2 * self borderWidth)).
