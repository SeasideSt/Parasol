running
testInitializeComponentUnderTest
	self assert: (driver findElementByClassName: 'testStringToDisplay') getText equals: 'I am a test'