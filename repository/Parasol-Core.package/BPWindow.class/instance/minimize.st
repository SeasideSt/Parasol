misc
minimize
	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/WebDriver.Window.html#minimize
	"

	driver handleResponse: (driver
		httpPost: (self baseURL , 'minimize')
		jsonData: (Dictionary new
			))
		onSuccess: [ :result | ]