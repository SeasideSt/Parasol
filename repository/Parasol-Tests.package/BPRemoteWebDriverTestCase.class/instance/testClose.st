running
testClose

	| exception |
	
	self shouldnt: [ driver close ] raise: (BPNoSuchSessionException , BPUnknownServerException).
	self waitForDriverToFinishClosing.
	self should: [ driver close ] raise: (BPNoSuchSessionException , BPUnknownServerException).

	exception := [ driver close ] on: BPNoSuchSessionException , BPUnknownServerException do: [ :e | e ].
	self assert: exception httpResponse httpStatus equals: 404.
	self assert: exception httpResponse contents isString.
