misc
getLocation
	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/WebElement.html#getLocation()
	"

	^driver httpGetHandleResponse: self baseElementURL , 'rect'
		onSuccess: [:result | ((result at: 'value') at: 'x') @ ((result at: 'value') at: 'y')]