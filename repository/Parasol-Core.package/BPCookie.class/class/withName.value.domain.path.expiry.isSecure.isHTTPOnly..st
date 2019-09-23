instance creation
withName: cookieName value: value domain: domain path: path expiry: expiry isSecure: isSecure isHTTPOnly: isHTTPOnly

	^ self basicNew
		initializeWithName: cookieName
		value: value
		domain: domain
		path: path
		expiry: expiry
		isSecure: isSecure
		isHTTPOnly: isHTTPOnly
