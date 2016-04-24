stepping
stepAt: millisecondClockValue in: aWindow
	super stepAt: millisecondClockValue in: aWindow.
	self searchPattern ~= self lastExecutedSearch
		ifTrue: [self searchPreferencesFor: self searchPattern].