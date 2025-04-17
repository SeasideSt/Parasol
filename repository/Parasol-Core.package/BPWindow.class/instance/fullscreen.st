misc
fullscreen
	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/WebDriver.Window.html#fullscreen
	"

	driver handleResponse: (driver
		httpPost: (self baseURL , 'fullscreen')
		jsonData: (Dictionary new
			))
		onSuccess: [ :result | ]