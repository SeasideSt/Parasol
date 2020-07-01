misc
getLocation
	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/WebElement.html#getLocation()
	"

	^driver httpGetHandleResponse: self baseElementURL , 'rect'
		onSuccess: [:result | ((result at: 'value') at: 'x') @ ((result at: 'value') at: 'y')]