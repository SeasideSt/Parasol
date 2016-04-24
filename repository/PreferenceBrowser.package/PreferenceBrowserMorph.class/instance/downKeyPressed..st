event handling
downKeyPressed: anEvent
	self selectedPreferenceIndex:
		(self selectedPreferenceIndex + 1 
				min: self selectedCategoryPreferences size)