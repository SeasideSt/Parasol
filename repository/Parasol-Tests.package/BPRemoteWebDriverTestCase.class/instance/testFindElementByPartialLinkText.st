running
testFindElementByPartialLinkText

	self assert: (driver findElementByPartialLinkText: 'Link') = (driver findElementByID: 'anchor1').
	self deny: (driver findElementByPartialLinkText: 'Link') = (driver findElementByID: 'anchor2').
	
	self should: [ driver findElementByPartialLinkText: 'Lxnk' ] raise: BPNoSuchElementException.