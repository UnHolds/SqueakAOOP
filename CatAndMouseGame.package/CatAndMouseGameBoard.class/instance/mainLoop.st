meta-actions
mainLoop
	"main loop of the game"
	
	self checkWinCondition. 
	self checkIfMouseCaught. 
	
	mice do: [
		:mouse | mouse move 
	].