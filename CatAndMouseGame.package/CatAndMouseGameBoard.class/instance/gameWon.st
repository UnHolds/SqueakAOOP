game
gameWon
	"displays win message"
	
	| img  m  size2 mx |
	
	mx := size x max: size y. 
	
	(mx = size x) ifTrue: [
		size2 := (size x)@(size y * 10000).
	].

	(mx = size y) ifTrue: [
		size2 := (size x * 10000)@(size y).
	].
	
	img := ImageReadWriter formFromFileNamed: 'won.png'.
      img  := img scaledToSize: (size2 +  (2 * self borderWidth)).
	m := ImageMorph new.
	m image: img.
	m bounds: ((self position) extent: (size) + (2 * self borderWidth)).
	self addMorph: m.