cookies
cookieNamed: aString
	"https://www.w3.org/TR/webdriver1/#get-named-cookie"
	^ self httpGetHandleResponse: (self baseSessionURL , 'cookie/', aString)
		onSuccess: [ :result | result at: 'value' ]