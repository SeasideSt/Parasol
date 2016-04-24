initialize-release
initWithDriver: initializationDriver element: initializationWebElement

	self initWithDriver: initializationDriver.
	self argumentAt: 'element' put: initializationWebElement elementID.