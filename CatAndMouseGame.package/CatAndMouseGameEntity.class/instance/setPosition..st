as yet unclassified
setPosition: aPosition
	| parentBounds entityBounds |
	
	parentBounds := parent bounds.
	entityBounds := self bounds corners.
	
	entityBounds do: [
		:corner | (parent containsPoint: corner) ifTrue: [position := aPosition.]
	].
