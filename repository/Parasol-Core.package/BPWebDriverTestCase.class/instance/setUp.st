running
setUp

	super setUp.
	self startTestApp.
	driver := BPWebDriverManagerResource current
				driverWithCapabilities: self desiredDriverBrowserCapabilities
				on: self baseURL.
	screenshotCounter := 1