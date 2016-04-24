*Parasol-Convenience
cssClassNames
	^ (((self getAttribute: 'class') ifNil: [ String new ]) subStrings: ' ') select: [ :className | className isEmpty not ]