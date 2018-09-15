cookies
allCookies
	"https://www.w3.org/TR/webdriver1/#get-all-cookies"
	^ self httpGetHandleResponse: (self baseSessionURL , 'cookie')
		onSuccess: [ :result | result at: 'value' ]