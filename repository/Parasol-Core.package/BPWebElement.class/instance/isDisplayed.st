misc
isDisplayed
	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/WebElement.html#isDisplayed()
	"

	^driver httpGetHandleResponse: self baseElementURL , 'displayed'
		onSuccess: [:result | result at: 'value']