meta-actions
mainLoop
	"main loop of the game"
	
	self removeBloodStains.
	self checkWinCondition. 
	self checkLoseCondition.
	self checkIfMouseCaught. 
	
	mice do: [
		:mouse | mouse move 
	].