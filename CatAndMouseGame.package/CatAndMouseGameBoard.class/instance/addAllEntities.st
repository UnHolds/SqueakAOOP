as yet unclassified
addAllEntities

	"adds every morph"

	self addMorph: cat.
	mice do: [
		:mouse | 
		self addMorph: mouse
	].
	subways do: [
		:subway |
		(subway getHoles) do: [
			:hole |
				self addMorph: hole
			]
		].