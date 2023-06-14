as yet unclassified
checkWinCondition
	"check if all mice are dead or time is up and mice are not in one subway"	
	((mice size) = 0) ifTrue: [
		running := False. 
		self gameWon. 
	]. 

	remainingTime := remainingTime - (self stepTime). 
	(remainingTime <= 0) ifTrue: [
		running := False. 
		self gameWon.
	].  
	