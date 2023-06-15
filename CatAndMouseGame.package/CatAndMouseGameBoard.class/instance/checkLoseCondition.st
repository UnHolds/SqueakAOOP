as yet unclassified
checkLoseCondition
	
	| containsAll |

	subways do: [
		:subway |
		containsAll := True.
		(subway getMice) do:[
			:mouse |
			(mice includes: mouse)
			ifFalse: [containsAll := False].
		].
		((subway getMice) isEmpty)
		ifTrue: [containsAll := False].
		
		(containsAll = True)
		ifTrue: [
			self gameLost.
			^''.
		].
	].