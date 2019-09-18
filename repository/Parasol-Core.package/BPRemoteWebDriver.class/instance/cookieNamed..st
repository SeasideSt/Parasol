cookies
cookieNamed: aString

	BPSmalltalkPlatform current deprecated:
		'BPRemoteWebDriver>>#cookieNamed: is deprecated, use BPOptions>>#getCookieNamed: instead'.

	^ self httpGetHandleResponse: (self baseSessionURL , 'cookie/', aString)
		onSuccess: [ :result | result at: 'value' ]