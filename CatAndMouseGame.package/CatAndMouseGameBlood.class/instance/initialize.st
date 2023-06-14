as yet unclassified
initialize 
	"Creates a blood morph"
	| img |
   	super initialize.
      img := ImageReadWriter formFromFileNamed: 'blood.png'.
      img := img scaledToSize: 60@60.
      self image: img.
