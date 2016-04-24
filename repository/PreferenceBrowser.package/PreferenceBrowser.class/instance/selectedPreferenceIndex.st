accessing
selectedPreferenceIndex
	^self selectedCategoryPreferences indexOf: self selectedPreference ifAbsent: [0]