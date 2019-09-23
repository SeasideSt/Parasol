instance creation
withName: cookieName value: value

	^ self withName: cookieName value: value domain: nil path: '/' expiry: nil isSecure: false isHTTPOnly: false
