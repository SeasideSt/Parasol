running
testGetPageSource

	self assert: (driver getPageSource indexOfSubCollection: 'Supercalifragilisticexpialidocious') > 0.
	driver close.
	self waitForDriverToFinishClosing.
	self should: [ driver getPageSource ] raise: BPNoSuchSessionException.
