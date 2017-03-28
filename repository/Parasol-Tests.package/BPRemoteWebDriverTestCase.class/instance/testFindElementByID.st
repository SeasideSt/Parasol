running
testFindElementByID

	self shouldnt: [ driver findElementByID: 'inputField' ] raise: BPNoSuchElementException.
	self should: [ driver findElementByID: 'elementThatDoesNotExist' ] raise: BPNoSuchElementException.