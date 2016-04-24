event handling
mouseDownOn: aPreferenceView event: anEvent
	anEvent hand newKeyboardFocus: self preferenceList scroller.
	anEvent yellowButtonPressed
		ifTrue: [aPreferenceView offerPreferenceNameMenu: self model]