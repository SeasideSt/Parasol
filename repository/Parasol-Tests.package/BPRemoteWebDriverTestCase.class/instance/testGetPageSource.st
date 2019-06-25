running
testGetPageSource

	self assert: (driver getPageSource findString: 'Supercalifragilisticexpialidocious') > 0.
	driver close.
	self waitForDriverToFinishClosing.
	self should: [ driver getPageSource ] raise: BPNoSuchSessionException, BPUnsupportedCommandException.
