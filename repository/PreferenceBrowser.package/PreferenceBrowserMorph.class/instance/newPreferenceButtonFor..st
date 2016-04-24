submorphs - preference list
newPreferenceButtonFor: aPreference 
	| button |
	button := PBPreferenceButtonMorph preference: aPreference model: self model.
	button 
		on: #mouseDown
		send: #value:
		to: 
			[:anEvent | 
			self
				selectedPreference: aPreference;
				mouseDownOn: button preferenceView event: anEvent].
	^button