running
testClose

	self shouldnt: [ driver close ] raise: BPUnknownServerException.
	self waitForDriverToFinishClosing.
	self should: [ driver close ] raise: BPUnknownServerException.

