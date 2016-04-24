running
tearDown

	driver
		ifNotNil: 
			[BPWebDriverManagerResource current quitOrCacheDriver: driver
				withCapabilities: self desiredDriverBrowserCapabilities].
	self stopTestApp.
	super tearDown