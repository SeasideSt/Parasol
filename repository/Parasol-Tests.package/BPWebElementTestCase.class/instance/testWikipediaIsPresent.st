running
testWikipediaIsPresent
	driver get: self baseURL.
	driver findElementByLinkText: 'Wikipedia'.