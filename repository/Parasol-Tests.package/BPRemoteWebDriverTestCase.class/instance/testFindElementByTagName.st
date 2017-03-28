running
testFindElementByTagName

	self assert: (driver findElementByTagName: 'input') = (driver findElementByID: 'inputField').
	self should: [ driver findElementByTagName: 'tagThatIsNeverUsed' ] raise: BPNoSuchElementException.