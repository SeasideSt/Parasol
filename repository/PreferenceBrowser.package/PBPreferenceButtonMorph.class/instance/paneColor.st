utility methods
paneColor
	| browser |
	browser := (self ownerChain 
		detect: [:ea | ea isKindOf: PreferenceBrowserMorph] 
		ifNone: [^Color black]) .
	^browser paneColor