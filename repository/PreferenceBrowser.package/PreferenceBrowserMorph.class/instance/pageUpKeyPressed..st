event handling
pageUpKeyPressed: anEvent
	self selectedPreferenceIndex: (self selectedPreferenceIndex - self preferencesShowing size max: 1).
