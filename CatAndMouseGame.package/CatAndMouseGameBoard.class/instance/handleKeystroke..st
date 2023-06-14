meta-actions
handleKeystroke: anEvent
	(running = True) ifTrue: [
		cat handleKeystroke: anEvent
	].
	