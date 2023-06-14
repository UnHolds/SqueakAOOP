as yet unclassified
setParent: aParent
	holes do: [ :hole | hole setParent: aParent ].
	parent := aParent.