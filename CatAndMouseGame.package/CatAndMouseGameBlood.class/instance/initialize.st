as yet unclassified
initialize 
	"Creates a blood morph"
	| img |
   	super initialize.
	remainingTime := 1000 * 1.
      img := ImageReadWriter formFromFileNamed: 'blood.png'.
      img := img scaledToSize: 60@60.
      self image: img.
