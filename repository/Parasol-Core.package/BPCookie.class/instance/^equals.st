comparing
= other

	^ (self class = other class) and: [ (self getName = other getName) and: [ (self getValue = other getValue) ] ]
