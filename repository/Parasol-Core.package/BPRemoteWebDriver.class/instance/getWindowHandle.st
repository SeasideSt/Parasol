misc
getWindowHandle
	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/WebDriver.html#getWindowHandle()
	"

	^self httpGetHandleResponse: self baseSessionURL , 'window'
		onSuccess: [:result | result at: 'value']