running
tearDown
	super tearDown.
	adapter ifNotNil:[ BPSmalltalkPlatform current ensureSeasideServerStopped: adapter ]