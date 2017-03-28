running
testFindElementByLinkText

	| testElement |
	
	testElement := driver findElementByLinkText: 'Wikipedia'.
	self assert: (testElement getAttribute: 'href') = 'http://en.wikipedia.org/wiki/Main_Page'.

	self should: [ driver findElementByLinkText: 'wikipedia' ] raise: BPNoSuchElementException.
	self should: [ driver findElementByLinkText: 'ikipedia' ] raise: BPNoSuchElementException.
	self should: [ driver findElementByLinkText: 'Wikipedi' ] raise: BPNoSuchElementException.
	self should: [ driver findElementByLinkText: 'ikipedi' ] raise: BPNoSuchElementException.