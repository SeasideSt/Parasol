running
testComponentWithSpecificCustomization
	<componentInitializer: #initializeComponentForSpecificTest:>
	self
		assert: (driver findElementByClassName: 'testStringToDisplay') getText
		equals: 'I am a specific test for only one test of the application.'