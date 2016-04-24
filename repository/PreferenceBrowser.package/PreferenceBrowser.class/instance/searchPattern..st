accessing
searchPattern: aStringOrText
	aStringOrText 
		ifEmpty: [searchPattern := self searchFieldLegend]
		ifNotEmpty: [searchPattern := aStringOrText asString].
	self changed: #searchPattern.
	^true