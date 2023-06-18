as yet unclassified
placeMice: mice subways: subways

	| shuffleSub placed |

	mice do: [
		:mouse |
		shuffleSub := subways shuffled.
		placed := False.
		shuffleSub do: [
			:subway |
			Transcript show: '#'.
			((subway isGoalSub = False) and: (placed = False))
			ifTrue: [
				placed := True.
				(mouse getAlgorithm) setResidingSubway: subway.
				subway enter: mouse.
			].
		].
	].