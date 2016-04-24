running
testFindElementsByClassName

	| testElement |
	testElement := driver findElementByClassName: 'text'.
	self assert: (testElement getAttribute: 'id') = 'inputField'.