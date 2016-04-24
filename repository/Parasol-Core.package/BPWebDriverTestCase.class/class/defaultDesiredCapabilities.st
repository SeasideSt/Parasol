accessing
defaultDesiredCapabilities

	^DefaultDesiredCapabilities
		ifNil: [DefaultDesiredCapabilities := BPDesiredCapabilities firefox]