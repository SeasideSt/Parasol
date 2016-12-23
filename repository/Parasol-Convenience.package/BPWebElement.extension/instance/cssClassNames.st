*Parasol-Convenience
cssClassNames
	^ (((self getAttribute: 'class') ifNil: [ String new ]) substrings: ' ') select: [ :className | className isEmpty not ]