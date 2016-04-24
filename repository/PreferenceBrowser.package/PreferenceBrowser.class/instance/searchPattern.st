accessing
searchPattern
	^searchPattern ifNil: [searchPattern := self searchFieldLegend]