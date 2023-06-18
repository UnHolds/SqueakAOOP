game
checkLoseCondition
	
	| containsAll |

	subways do: [
		:subway |
		containsAll := True.
		
		"only mice in goal sub can win"
		(subway isGoalSub = True)
		ifFalse: [containsAll := False].
		
		
		(mice) do:[
			:mouse |
			((subway getMice) includes: mouse)
			ifFalse: [containsAll := False].
		].
		(mice isEmpty)
		ifTrue: [containsAll := False].
		
		(containsAll = True)
		ifTrue: [
			running := False.
			self gameLost.
			^''.
		].
	].