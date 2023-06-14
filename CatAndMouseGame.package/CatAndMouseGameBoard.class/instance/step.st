meta-actions
step
	"Calls main loop of the game"
	(startGame == True) ifTrue: [
		self mainLoop. 
	].
	