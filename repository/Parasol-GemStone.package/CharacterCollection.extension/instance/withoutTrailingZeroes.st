*Parasol-GemStone
withoutTrailingZeroes

	| last |
	last := self findLast: [ :c | c asciiValue ~= 0 ].
	last = 0 ifTrue: [ ^ '' ].
	^ self copyFrom: 1 to: last
