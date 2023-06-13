as yet unclassified
handleKeystroke: anEvent

	| keyValue |
	keyValue := anEvent keyValue.
	keyValue = 28 "left arrow"
		ifTrue: [self position: self position - (10@0)].
	keyValue = 29 "right arrow"
		ifTrue: [self position: self position + (10@0)].
	keyValue = 30 "up arrow"
		ifTrue: [self position: self position - (0@10)].
	keyValue = 31 "down arrow"
		ifTrue: [self position: self position + (0@10)].