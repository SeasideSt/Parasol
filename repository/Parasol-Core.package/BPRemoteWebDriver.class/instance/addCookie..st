cookies
addCookie: aDictionary

	BPSmalltalkPlatform current deprecated:
		'BPRemoteWebDriver>>#addCookie: is deprecated, use BPOptions>>#addCookie: instead (e.g.: [ driver manage addCookie: (BPCookie withName: ''name'' value: ''value'') ])'.
	
	^ self
		httpPost: self baseSessionURL , 'cookie'
		jsonData:
			(Dictionary new
				at: 'cookie' put: aDictionary;
				yourself)