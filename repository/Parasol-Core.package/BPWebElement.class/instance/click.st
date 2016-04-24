events
click
	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/WebElement.html#click()
	"

	driver
		httpPostHandleResponse: (self baseElementURL , 'click')
		jsonData: Dictionary new