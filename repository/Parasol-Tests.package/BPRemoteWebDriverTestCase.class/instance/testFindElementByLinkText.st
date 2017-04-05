running
testFindElementByLinkText

	self assert: (driver findElementByLinkText: 'A Link') = (driver findElementByID: 'anchor1').
	self deny: (driver findElementByLinkText: 'A Link') = (driver findElementByID: 'anchor2').
	
	self should: [ driver findElementByLinkText: 'Link' ] raise: BPNoSuchElementException.
