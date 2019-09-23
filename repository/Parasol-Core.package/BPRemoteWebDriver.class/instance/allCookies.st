cookies
allCookies

	BPSmalltalkPlatform current deprecated:
		'BPRemoteWebDriver>>#allCookies is deprecated, use BPOptions>>#getCookies instead (i.e.: [ driver manage getCookies ])'.

	^ self httpGetHandleResponse: (self baseSessionURL , 'cookie')
		onSuccess: [ :result | result at: 'value' ]