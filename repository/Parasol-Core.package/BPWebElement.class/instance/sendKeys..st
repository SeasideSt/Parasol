events
sendKeys: keyString
	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/WebElement.html#sendKeys(java.lang.CharSequence...)
	"

	driver
		httpPostHandleResponse: (self baseElementURL , 'value')
		jsonData: (Dictionary new
				at: 'text' put: keyString;
				yourself)