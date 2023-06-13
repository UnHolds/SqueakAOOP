as yet unclassified
handleKeystroke: anEvent

	| keyValue |
	keyValue := anEvent keyValue.
	keyValue = 28 "left arrow"
		ifTrue: [self setPosition: self getPosition  - (speed@0)].
	keyValue = 29 "right arrow"
		ifTrue: [self setPosition: self getPosition + (speed@0)].
	keyValue = 30 "up arrow"
		ifTrue: [self setPosition: self getPosition - (0@speed)].
	keyValue = 31 "down arrow"
		ifTrue: [self setPosition: self getPosition + (0@speed)].