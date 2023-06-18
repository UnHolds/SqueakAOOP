game
removeBloodStains
	
	self submorphs do: [
		:m |
		(m isMemberOf: CatAndMouseGameBlood ) ifTrue: [
			m update: (self stepTime).
			((m getTime) <= 0)
			ifTrue: [self removeMorph: m.].		
		]
	].