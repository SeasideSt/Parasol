running
testFindElementByTagName

	| testElement |
	testElement := driver findElementByTagName: 'input'.
	self assert: (testElement getAttribute: 'id') = 'inputField'.