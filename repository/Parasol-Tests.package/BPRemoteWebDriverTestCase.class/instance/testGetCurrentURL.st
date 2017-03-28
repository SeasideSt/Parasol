running
testGetCurrentURL

	self assert: driver getCurrentURL = self baseURL.

	driver get: 'https://en.wikipedia.org/wiki/Smalltalk-80'.
	self assert: driver getCurrentURL = 'https://en.wikipedia.org/wiki/Smalltalk'. "There is a redirect from Smalltalk-80 to Smalltalk."

	(driver findElementByPartialLinkText: 'External links') click.
	self assert: driver getCurrentURL = 'https://en.wikipedia.org/wiki/Smalltalk#External_links'.