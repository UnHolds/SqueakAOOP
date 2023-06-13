as yet unclassified
initialize 
	"Creates a cat morph"
	| img |
   	super initialize.
      img := ImageReadWriter formFromFileNamed: 'cat.png'.
      img := img scaledToSize: 50@50.
      self image: img.

	