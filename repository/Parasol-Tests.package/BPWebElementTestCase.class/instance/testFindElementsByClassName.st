running
testFindElementsByClassName

	| testElement |
	testElement := driver findElementByClassName: 'testclass'.
	self assert: (testElement getAttribute: 'id') = 'testParagraph'.