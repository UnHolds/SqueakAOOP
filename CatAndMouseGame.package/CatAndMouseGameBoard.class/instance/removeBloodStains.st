as yet unclassified
removeBloodStains
	
	self submorphs do: [
		:m |
		(m isMemberOf: CatAndMouseGameBlood ) ifTrue: [
			self removeMorph: m.
			]
		].