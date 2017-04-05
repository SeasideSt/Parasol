running
tearDown

	drivers do: [ :driver |
		[ driver quit ] on: BPUnsupportedCommandException do: [ :error | ].
	].
	super tearDown.
