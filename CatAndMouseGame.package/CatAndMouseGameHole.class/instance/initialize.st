as yet unclassified
initialize 
	"Creates a hole morph"
	| img |
   	super initialize.
      img := ImageReadWriter formFromFileNamed: 'hole.png'.
      img := img scaledToSize: 60@60.
      self image: img.

	