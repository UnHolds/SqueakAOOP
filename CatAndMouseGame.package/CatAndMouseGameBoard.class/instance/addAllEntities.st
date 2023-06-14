as yet unclassified
addAllEntities

	"adds every morph"
	subways do: [
		:subway |
		(subway getHoles) do: [
			:hole |
				self addMorph: hole
			]
		].
	
	mice do: [
		:mouse | 
		self addMorph: mouse
	].
	self addMorph: cat.
	