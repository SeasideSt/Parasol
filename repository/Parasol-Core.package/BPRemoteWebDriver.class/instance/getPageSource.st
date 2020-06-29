misc
getPageSource
	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/WebDriver.html#getPageSource()
	"

	^self httpGetHandleResponse: self baseSessionURL , 'source'
		onSuccess: [:result | result at: 'value']