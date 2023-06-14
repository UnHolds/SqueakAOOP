as yet unclassified
setMice: aMice
	aMice do: 
	[
		:mouse | mouse setParent: self
	].
	mice := aMice.
 	