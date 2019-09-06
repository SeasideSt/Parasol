events
sendKeys: keyString
	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/WebElement.html#sendKeys(java.lang.CharSequence...)
	"

	driver
		httpPostHandleResponse: (self baseElementURL , 'value')
		jsonData: (Dictionary new
				at: 'text' put: keyString;
				yourself)