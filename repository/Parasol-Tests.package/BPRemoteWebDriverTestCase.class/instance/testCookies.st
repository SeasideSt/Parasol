running
testCookies
	| cookie |
	self assert: driver allCookies isEmpty.
	(driver findElementByPartialLinkText: 'Set test cookie') click.
	self assert: driver allCookies size = 1.
	self assert: (driver allCookies first at: 'value') = 'abc'.
	self assert: ((driver cookieNamed: 'parasol-test') at: 'value') = 'abc'.
	(driver findElementByPartialLinkText: 'Delete test cookie') click.
	self assert: driver allCookies isEmpty.
	self should: [ driver cookieNamed: 'parasol-test' ] raise: BPNoSuchCookieException.
	(driver findElementByPartialLinkText: 'Set test cookie') click.
	self assert: (driver allCookies first at: 'value') = 'abc'.
	(driver deleteCookieNamed: 'parasol-test').
	self should: [ (driver cookieNamed: 'parasol-test') ] raise: BPNoSuchCookieException.
	
	cookie := ((Dictionary new) add: ('value'->'foobar'); add: ('name'->'another-parasol-test'); yourself).

	self should: [ (driver cookieNamed: 'another-parasol-test') ] raise: BPNoSuchCookieException.
	driver addCookie: cookie.
	self assert: ((driver cookieNamed: 'another-parasol-test') at:'value') equals: (cookie at: 'value')