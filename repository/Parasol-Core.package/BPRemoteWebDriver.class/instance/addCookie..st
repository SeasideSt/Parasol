cookies
addCookie: aDictionary
	"https://www.w3.org/TR/webdriver1/#add-cookie"
	^ self
		httpPost: self baseSessionURL , 'cookie'
		jsonData:
			(Dictionary new
				at: 'cookie' put: aDictionary;
				yourself)