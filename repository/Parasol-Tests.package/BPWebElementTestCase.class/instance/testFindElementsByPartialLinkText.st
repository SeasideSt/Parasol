running
testFindElementsByPartialLinkText

	| testElement |
	testElement := driver findElementByPartialLinkText: 'Wiki'.
	self assert: (testElement getAttribute: 'href') = 'http://en.wikipedia.org/wiki/Main_Page'.