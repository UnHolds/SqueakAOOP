getter setter
setMice: aMice
	aMice do: 
	[
		:mouse | mouse setParent: self
	].
	mice := aMice.
 	