running
testClose

	self shouldnt: [ driver close ] raise: (BPNoSuchSessionException , BPUnknownServerException).
	self waitForDriverToFinishClosing.
	self should: [ driver close ] raise: (BPNoSuchSessionException , BPUnknownServerException).
