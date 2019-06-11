running
desiredDriverBrowserCapabilities

	^ BPDesiredCapabilities chrome
		setCapability: 'chromeOptions' to: (Dictionary new add: 'w3c' -> false; yourself);
		yourself