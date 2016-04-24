accessing
selectedPreference: aPreference
	selectedPreference := aPreference.
	self changed: #selectedPreference.
	self changed: #selectedPreferenceIndex.
	self changed: #selectedPreferenceHelpText.