as yet unclassified
checkIfMouseCaught
	"check if mouse and cat morphs collide and mouse can be eaten"
	| cat mice catCenterPoint |
	cat := self getCat.
	mice := self getMice.
	
	catCenterPoint := cat center. 
	
	mice do: [
		:mouse | (mouse containsPoint: catCenterPoint) ifTrue: [
			self handleMouseCatch: mouse
		]
	].