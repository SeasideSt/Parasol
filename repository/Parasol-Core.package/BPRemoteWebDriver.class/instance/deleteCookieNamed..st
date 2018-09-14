cookies
deleteCookieNamed: aString
	"https://www.w3.org/TR/webdriver1/#delete-cookie"
	^ self httpDelete: (self baseSessionURL , 'cookie/', aString)