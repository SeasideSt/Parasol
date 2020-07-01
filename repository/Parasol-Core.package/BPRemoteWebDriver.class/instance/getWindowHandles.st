misc
getWindowHandles
	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/WebDriver.html#getWindowHandles()
	"

	^self httpGetHandleResponse: self baseSessionURL , 'window/handles'
		onSuccess: [:result | result at: 'value']