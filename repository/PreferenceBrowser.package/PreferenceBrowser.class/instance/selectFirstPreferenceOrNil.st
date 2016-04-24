accessing
selectFirstPreferenceOrNil
	| prefs |
	self selectedCategory
		ifNil: [^self selectedPreference: nil].
	prefs := self preferencesInCategory: self selectedCategory.
	prefs isEmpty
		ifTrue: [^self selectedPreference: nil].
	self selectedPreference: prefs first.