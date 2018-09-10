running
testGoBackAndForward

	self assert: driver getCurrentURL = self baseURL.
	driver get: 'https://www.google.com'.
	self assert: driver getCurrentURL = 'https://www.google.com/'.
	driver goBack.
	self assert: driver getCurrentURL = self baseURL.
	driver goForward.
	self assert: driver getCurrentURL = 'https://www.google.com/'.
