running
testFindElementByName

	self shouldnt: [ driver findElementByName: 'secretField' ] raise: BPNoSuchElementException.
	self should: [ driver findElementByName: 'elementThatDoesNotExist' ] raise: BPNoSuchElementException.
	self flag: 'Expand this test to check what happens when there are multiple elements with the same name.'.