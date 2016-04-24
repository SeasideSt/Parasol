submorphs - preference list
preferencesShowing
	| prefs |
	prefs := self preferenceListInnerPanel submorphs
					copyFrom: (self selectedPreferenceIndex max: 1)
					to: self selectedCategoryPreferences size.
	^prefs reject: [:ea | (ea top - prefs first top) > self preferenceList scroller height].