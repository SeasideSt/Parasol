*Parasol-Convenience
cssClassNames
  | isW3CStrict getPropertyOrAttribute |
	isW3CStrict := Smalltalk hasClassNamed: #BPChromeOptions.
	getPropertyOrAttribute := isW3CStrict
		ifTrue: [ self getProperty: 'class' ]
		ifFalse: [ self getAttribute: 'class' ].
	^ ((getPropertyOrAttribute ifNil: [ String new ]) 
			substrings: ' ') select: [ :className | className isEmpty not ] ]
