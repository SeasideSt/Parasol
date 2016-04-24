event handling
pageDownKeyPressed: anEvent
	self selectedPreferenceIndex: (self selectedPreferenceIndex + self preferencesShowing size min: self selectedCategoryPreferences size).
