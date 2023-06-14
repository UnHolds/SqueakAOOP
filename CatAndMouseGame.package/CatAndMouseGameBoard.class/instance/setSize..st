getter setter
setSize: sPoint
	size := sPoint.
	self bounds: (5@5 extent: (size) + (2 * self borderWidth)).