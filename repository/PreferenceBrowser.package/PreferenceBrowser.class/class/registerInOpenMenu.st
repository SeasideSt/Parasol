class initialization
registerInOpenMenu
	(TheWorldMenu respondsTo: #registerOpenCommand:) ifTrue: [
		TheWorldMenu unregisterOpenCommand: 'Preference Browser'.
		TheWorldMenu registerOpenCommand: {'Preference Browser'. {self. #open}}].
		