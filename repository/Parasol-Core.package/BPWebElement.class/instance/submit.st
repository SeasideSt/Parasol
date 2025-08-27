events
submit
	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/WebElement.html#submit()
	"

	driver
		httpPostHandleResponse: (self baseElementURL , 'submit')
		jsonData: Dictionary new