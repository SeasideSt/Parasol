private
privateIsModifierKey: keyCharacter

	(keyCharacter codePoint < 16rE000) ifTrue: [ ^ false ].
	^ (keyCharacter = BPKeys shift) or: [
		(keyCharacter = BPKeys alt) or: [
		(keyCharacter = BPKeys control) or: [
		(keyCharacter = BPKeys command) ] ] ]
