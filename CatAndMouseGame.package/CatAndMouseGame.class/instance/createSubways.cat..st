as yet unclassified
createSubways: aBoard cat: cat

	|  ss hs ha h s |
	
	ss := OrderedCollection new.
	ha := OrderedCollection new.
	
	1 to: countSubways do: [
		:i |
		s := CatAndMouseGameSubway new.
		s setCat: cat.
		hs := OrderedCollection new.
		1 to: (1 + (3 atRandom)) do: [
			:j |
			h := CatAndMouseGameHole new.
			hs add: h.
			ha add: h.
		].
		
		(i == 1)
		ifTrue: [
			s setGoalSub.
		].
	
		s setHoles: hs.
		ss add: s.
	].

	self placeEntitiesRandom: ha.
	
	^ss.