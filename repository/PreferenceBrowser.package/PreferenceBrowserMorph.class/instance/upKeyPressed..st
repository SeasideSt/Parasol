event handling
upKeyPressed: anEvent
	self selectedPreferenceIndex: 
			(self selectedPreferenceIndex - 1 max: 1).
