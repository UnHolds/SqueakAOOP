getter setter
getHoles
	| holes |
	holes := OrderedCollection new.
	subways do: [
		:subway |
		holes addAll: (subway getHoles)
	].
	^holes.