misc
getTitle
	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/WebDriver.html#getTitle()
	"

	^self httpGetHandleResponse: self baseSessionURL , 'title'
		onSuccess: [:result | result at: 'value']