misc
maximize
	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/WebDriver.Window.html#maximize
	"

	driver handleResponse: (driver
		httpPost: (self baseURL , 'maximize')
		jsonData: (Dictionary new
			))
		onSuccess: [ :result | ]