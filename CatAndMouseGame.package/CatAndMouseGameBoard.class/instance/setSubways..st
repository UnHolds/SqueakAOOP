getter setter
setSubways: aSubways
	aSubways do: [ :subway | subway setParent: self ].
	subways := aSubways.