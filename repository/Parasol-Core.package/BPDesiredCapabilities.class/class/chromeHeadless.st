predefined
chromeHeadless

	^ self new
		setCapability: 'browserName' to: 'chrome';
		setCapability: 'chromeOptions'
			to:
				(Dictionary new
					at: 'args' put: {'headless' . 'no-sandbox' . 'disable-gpu'};
					yourself);
		yourself
	