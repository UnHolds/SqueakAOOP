game
removeBloodStains
	
	self submorphs do: [
		:m |
		(m isMemberOf: CatAndMouseGameBlood ) ifTrue: [
			self removeMorph: m.
			]
		].