initialize-release
initialize

	super initialize.
	self setCapability: 'browserName' to: 'chrome'.
	arguments := OrderedCollection new.
