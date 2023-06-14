meta-actions
step
	"Calls main loop of the game"
	(running == True) ifTrue: [
		self mainLoop. 
	].
	