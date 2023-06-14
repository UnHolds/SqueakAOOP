as yet unclassified
setSubways: aSubways
	aSubways do: [ :subway | subway setParent: self ].
	subways := aSubways.