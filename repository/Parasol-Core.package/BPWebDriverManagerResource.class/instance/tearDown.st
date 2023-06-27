running
tearDown

	drivers do: [ :driver |
		[ self quitDriver: driver ] on: BPUnsupportedCommandException do: [ :error | "ignore" ] ].
	super tearDown.
