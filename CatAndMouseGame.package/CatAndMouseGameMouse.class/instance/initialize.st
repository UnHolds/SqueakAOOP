as yet unclassified
initialize 
	"Creates a mouse morph"
	| img |
   	super initialize.
      img := ImageReadWriter formFromFileNamed: 'mouse.png'.
      img := img scaledToSize: 50@50.
      self image: img.
	visable := True.

	