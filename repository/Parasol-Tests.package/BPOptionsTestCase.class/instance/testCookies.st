running
testCookies

	| cookies cookie |
	
	self assert: driver manage getCookies isEmpty.
	(driver findElementByPartialLinkText: 'Respond with Cookies') click.
	cookies := driver manage getCookies.
	self assert: cookies size = 2.
	self assert: (cookies isKindOf: Set).
	self assert: (cookies detect: [ :someCookie | someCookie getName = 'test_cookie_1' ]) getValue = 'Test Cookie 1 Value'.
	self assert: (cookies detect: [ :someCookie | someCookie getName = 'test_cookie_2' ]) getValue = 'Test Cookie 2 Value'.

	cookie := driver manage getCookieNamed: 'test_cookie_2'.
	self assert: cookie getName = 'test_cookie_2'.
	self assert: cookie getValue = 'Test Cookie 2 Value'.
	self assert: cookie getDomain = 'localhost'.
	self assert: cookie getPath = '/WDTest'.
	self assert: cookie getExpiry isNil.
	self assert: cookie isSecure not.
	self assert: cookie isHTTPOnly.
	
	self assert: cookie = (BPCookie withName: 'test_cookie_2' value: 'Test Cookie 2 Value').
	self assert: cookie hash = (BPCookie withName: 'test_cookie_2' value: 'Test Cookie 2 Value') hash.
	self deny: cookie = (BPCookie withName: 'test_cookie_2' value: 'Test Cookie 2 Other Value').
	self deny: cookie = (BPCookie withName: 'test_cookie_2_other' value: 'Test Cookie 2 Value').
	self assert: (cookies includes: cookie).

	driver manage deleteCookieNamed: 'test_cookie_2'.
	cookies := driver manage getCookies.
	self assert: cookies size = 1.
	self deny: (cookies includes: cookie).

	self should: [ driver manage getCookieNamed: 'test_cookie_2' ] raise: BPNoSuchCookieException.

	driver manage addCookie: (BPCookie withName: 'test_cookie_2' value: 'Test Cookie 2 Second Value'
		domain: nil path: '/WDTest' expiry: Date tomorrow asDateAndTime isSecure: false isHTTPOnly: false).
	self assert: driver manage getCookies size = 2.
	cookie := driver manage getCookieNamed: 'test_cookie_2'.
	self assert: cookie getName = 'test_cookie_2'.
	self assert: cookie getValue = 'Test Cookie 2 Second Value'.
	self assert: cookie getDomain = 'localhost'.
	self assert: cookie getPath = '/WDTest'.
	self assert: cookie getExpiry = Date tomorrow asDateAndTime.
	self assert: cookie isSecure not.
	self assert: cookie isHTTPOnly not.

	driver manage addCookie: (BPCookie withName: 'test_cookie_3' value: 'Test Cookie 3 Value'
		domain: nil path: nil expiry: nil isSecure: false isHTTPOnly: true).
	self assert: driver manage getCookies size = 3.
	cookie := driver manage getCookieNamed: 'test_cookie_3'.
	self assert: cookie getName = 'test_cookie_3'.
	self assert: cookie getValue = 'Test Cookie 3 Value'.
	self assert: cookie getDomain = 'localhost'.
	self assert: cookie getPath = '/'.
	self assert: cookie getExpiry isNil.
	self assert: cookie isSecure not.
	self assert: cookie isHTTPOnly.

	driver manage deleteAllCookies.
	self assert: driver manage getCookies isEmpty.
