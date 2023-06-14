as yet unclassified
setPosition: aPosition
	| entityBounds inBounds  diff |
	position := self getPosition.
	entityBounds := self bounds corners.
	diff := aPosition - position.
	1 to: (entityBounds size) do: [:i | entityBounds at: i put: ((entityBounds at: i) + diff)].
	inBounds := True.
	
	entityBounds do: [
		:corner | (parent containsPoint: corner) ifFalse: [inBounds := False]
	 ].

	(inBounds = True)
	ifTrue: [
		position := aPosition
	].
	self position: position.
	
