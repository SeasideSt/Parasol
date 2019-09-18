private
privateJSONObjectFromCookie: cookie

	| jsonObject |
	
	(jsonObject := Dictionary new)
		at: 'name' put: cookie getName;
		at: 'value' put: cookie getValue;
		at: 'secure' put: cookie isSecure;
		at: 'httpOnly' put: cookie isHTTPOnly.
	cookie getDomain ifNotNil: [ :domain |
		jsonObject at: 'domain' put: cookie getDomain ].
	cookie getPath ifNotNil: [ :path |
		jsonObject at: 'path' put: cookie getPath ].
	cookie getExpiry ifNotNil: [ :dateAndTime |
		jsonObject at: 'expiry' put: (BPSmalltalkPlatform current unixTimeFromDateAndTime: dateAndTime) ].
	^ jsonObject
