as yet unclassified
enter: aMouse
	"mouse entered subway"
	mice add: aMouse.
	aMouse setVisable: False.
	catPosition := cat getPosition.
	parent removeMorph: aMouse.