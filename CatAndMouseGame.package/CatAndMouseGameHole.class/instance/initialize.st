as yet unclassified
initialize 
	"Creates a hole morph"
	| img |
   	super initialize.
      img := ImageReadWriter formFromFileNamed: 'hole.png'.
      img := img scaledToSize: 50@50.
      self image: img.

	