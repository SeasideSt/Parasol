misc
clear
	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/WebElement.html#clear()
	"

	driver
		httpPostHandleResponse: (self baseElementURL , 'clear')
		jsonData: Dictionary new