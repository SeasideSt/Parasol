initialize-release
initWithDriver: initializationDriver

	self initialize.
	driver := initializationDriver.
	action := BPCompositeAction driver: driver.