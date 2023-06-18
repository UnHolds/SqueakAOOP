as yet unclassified
createMice: aBoard subways: subways
	| mice m a|
	
	mice := OrderedCollection new.
	
	"Create direct algoirithm Mice"
	1 to: algDirectMiceCount do: [
		:i |
		m := CatAndMouseGameMouse new.
		a := CatAndMouseGameMouseAlgorithmDirect new.
		m setAlgorithm: a.
		a setBoard: board.
		a setMouse: m.
		mice add: m.
	].

	1 to: algAvoidMiceCount do: [
		:i |
		m := CatAndMouseGameMouse new.
		a := CatAndMouseGameMouseAlgorithmAvoid new.
		m setAlgorithm: a.
		a setBoard: board.
		a setMouse: m.
		mice add: m.
	].
	
	
	self placeMice: mice subways: subways.
	^mice.