misc
clear
	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/WebElement.html#clear()
	"

	driver
		httpPostHandleResponse: (self baseElementURL , 'clear')
		jsonData: Dictionary new