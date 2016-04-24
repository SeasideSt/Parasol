initialize-release
driver: initializationDriver buttonNumber: initializationButtonNumber

	self initWithDriver: initializationDriver.
	arguments at: 'button' put: initializationButtonNumber.