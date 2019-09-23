misc
getCookieNamed: cookieName

	^ driver httpGetHandleResponse: (driver baseSessionURL , 'cookie/' , cookieName)
		onSuccess: [ :result | self privateCookieFromJSONObject: (result at: 'value') ]
