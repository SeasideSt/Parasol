utility methods
blankSpaceOf: aPoint
	^Morph new 
		beTransparent;
		extent: aPoint; 
		yourself