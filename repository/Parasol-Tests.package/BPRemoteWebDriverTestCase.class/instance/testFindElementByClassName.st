running
testFindElementByClassName

	self assert: (driver findElementByClassName: 'testclass') = (driver findElementByID: 'testParagraph').
	self should: [ driver findElementByClassName: 'inexistantclass' ] raise: BPNoSuchElementException.