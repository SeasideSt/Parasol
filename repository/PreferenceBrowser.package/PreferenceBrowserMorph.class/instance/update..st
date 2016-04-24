updating
update: aSymbol
	super update: aSymbol.
	aSymbol == #selectedPreference
		ifTrue: [self updateSelectedPreference].
	aSymbol == #selectedCategoryIndex
		ifTrue: [self updateSelectedCategoryPreferences].