running
setUp
	self shouldEnsureSeasideServerRunning ifTrue:[ BPSmalltalkPlatform current ensureSeasideServerRunning ].
	testComponent := BPValueHolder new.
	super setUp.