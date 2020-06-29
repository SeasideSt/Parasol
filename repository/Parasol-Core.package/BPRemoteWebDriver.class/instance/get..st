misc
get: urlString
	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/WebDriver.html#get(java.lang.String)
	"

	self httpPostHandleResponse: (self baseSessionURL , 'url')
		jsonData: (Dictionary new
				at: 'url' put: urlString;
				yourself)