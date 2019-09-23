cookies
deleteCookieNamed: aString

	BPSmalltalkPlatform current deprecated:
		'BPRemoteWebDriver>>#deleteCookieNamed: is deprecated, use BPOptions>>#deleteCookieNamed: instead'.

	^ self httpDelete: (self baseSessionURL , 'cookie/', aString)