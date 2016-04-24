preference accessing
preferenceView
	^preferenceView
		ifNil: [preferenceView := self preference viewForPanel: self model.]