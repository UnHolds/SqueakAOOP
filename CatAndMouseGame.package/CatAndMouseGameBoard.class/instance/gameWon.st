game
gameWon
	"displays win message"
	
	| img  m  size2 mx scoreMorph2 font aText aString |
	
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
	
	scoreMorph2 := TextMorph new.
	self addMorph: scoreMorph2.
	font  :=  (TextFontReference toFont:  (TTCFont familyName: 'BitstreamVeraSans' pointSize: 30 emphasis: 0)).
	aString := score printString.
	aText := aString asText addAttribute: font; addAttribute: (TextColor color: Color black).
	scoreMorph2 contents: aText. 
	scoreMorph2 position: (self position + (size / 2)).
	