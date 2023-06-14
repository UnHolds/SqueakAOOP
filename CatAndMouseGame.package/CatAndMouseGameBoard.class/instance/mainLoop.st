as yet unclassified
mainLoop
	"main loop of the game"
	
	self checkIfMouseCaught. 
	
	mice do: [
		:mouse | mouse move 
	].