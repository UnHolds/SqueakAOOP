as yet unclassified
exit: aMouse
	"mouse exits subway"
	| exitHole |
	exitHole := self getBestExitHole.
	aMouse setPosition: (exitHole getPosition).
	aMouse setVisable: True.
	parent addMorph: aMouse.
	mice remove: aMouse.