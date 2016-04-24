updating
updateSelectedPreference
	| index |
	self selectedCategory ifNotNil: [self turnOffSelectedPreference].
	index := self selectedPreferenceIndex.
	index = 0
		ifTrue: [^self].
	self turnOnSelectedPreference.