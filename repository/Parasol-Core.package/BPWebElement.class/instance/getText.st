misc
getText
	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/WebElement.html#getText()
	"

	^driver httpGetHandleResponse: self baseElementURL , 'text'
		onSuccess: [:result | result at: 'value']