private
privateCookieFromJSONObject: jsonObject

	^ BPCookie withName: (jsonObject at: 'name')
		value: (jsonObject at: 'value')
		domain: (jsonObject at: 'domain')
		path: (jsonObject at: 'path')
		expiry: (jsonObject at: 'expiry' ifPresent: [ :unixSeconds | BPSmalltalkPlatform current dateAndTimeFromUnixTime: unixSeconds ] ifAbsent: [ nil ])
		isSecure: (jsonObject at: 'secure')
		isHTTPOnly: (jsonObject at: 'httpOnly')
