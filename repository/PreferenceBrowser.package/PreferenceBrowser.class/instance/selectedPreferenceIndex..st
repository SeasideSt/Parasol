accessing
selectedPreferenceIndex: anIndex
	anIndex = 0
		ifTrue: [^self].
	self selectedPreference: (self selectedCategoryPreferences at: anIndex).