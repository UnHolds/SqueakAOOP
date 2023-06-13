as yet unclassified
initialize 
	"Creates a mouse morph"
	| form |
	super initialize.
	form := (Form fromFileNamed: 'mouse.png').
	self image: form.
	