submorphs - preference list
turnOnSelectedPreference
	highlightedPreferenceButton 
		ifNotNil: [:m | m highlightOff].
	highlightedPreferenceButton := self selectedPreferenceButton
		highlightOn;
		yourself.
	self preferenceList scrollToShow: highlightedPreferenceButton bounds.